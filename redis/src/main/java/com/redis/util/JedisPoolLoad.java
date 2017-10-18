package com.redis.util;

import com.per.zookeeper.ZookProperties;
import org.apache.commons.configuration.PropertiesConfiguration;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.pool2.impl.GenericObjectPoolConfig;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;

import java.io.ByteArrayInputStream;

/**
 * Created this file:
 * jedis 基于 java 的redis实现，连接redis 的 一种方式，这里是加载jedis连接池
 * @Author xiaobo.xiong
 * @Date 2017-10-9  10:34
 */
public class JedisPoolLoad {

    private static final Logger log = LoggerFactory.getLogger(JedisPoolLoad.class);
    private static JedisPool jedisPool;

    synchronized public static JedisPool getJedisPool(){
        return jedisPool;
    }

    /**
     *
     * @param zookeeperUrl      zookeeper的地址
     * @param configByZookeeper 是否配置了zookeeper地址
     * @param localConfigPath   本地加载的路径
     * @return
     */
    synchronized public static JedisPool jedisPool(String zookeeperUrl, String configByZookeeper, String localConfigPath){
        if(null == jedisPool){
            System.out.println("is begin..." + localConfigPath + "," + configByZookeeper + "," + zookeeperUrl);
            log.debug("程序开始运行,开始初始化redis连接池");
            PropertiesConfiguration config = null;
            try{
                if("true".equals(configByZookeeper) && StringUtils.isNotBlank(zookeeperUrl)){
                    log.debug("从zookeeper加载配置文件");
                    ZookProperties zookProperties = new ZookProperties("/per/config/redis.properties");
                    config = new PropertiesConfiguration();
                    config.load(new ByteArrayInputStream(zookProperties.getConfigBytes()));
                }else{
                    log.debug("从classpath加载配置文件");
                    config = new PropertiesConfiguration(localConfigPath);
                }
            }catch (Exception e){
                e.printStackTrace();
                log.error("加载redis配置文件出错,{}",e.getMessage());
            }
            GenericObjectPoolConfig poolConfig = new JedisPoolConfig();
            poolConfig.setMaxTotal(config.getInt("redis.maxTotal"));
            poolConfig.setMaxIdle(config.getInt("redis.maxIdle"));
            poolConfig.setTimeBetweenEvictionRunsMillis(config.getLong("redis.timeBetweenEvictionRunsMillis"));
            poolConfig.setMinEvictableIdleTimeMillis(config.getLong("redis.minEvictableIdleTimeMillis"));
            poolConfig.setTestOnBorrow(config.getBoolean("redis.testOnBorrow"));

            log.debug("开始加载redis主机列表");
            String hosts = config.getString("redis.host");
            String ports = config.getString("redis.port");
            String[] hostArr = hosts.split("@");
            String[] portArr = ports.split("@");
            jedisPool = new JedisPool(poolConfig,hostArr[0].trim(),Integer.parseInt(portArr[0].trim()));
        }
        return jedisPool;
    }

}
