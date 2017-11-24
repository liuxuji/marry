package com.redis.util;

import com.alibaba.fastjson.JSON;
import com.per.zookeeper.ZookProperties;
import org.apache.commons.configuration.PropertiesConfiguration;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.pool2.impl.GenericObjectPoolConfig;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPoolConfig;
import redis.clients.jedis.JedisShardInfo;
import redis.clients.jedis.ShardedJedisPool;

import java.io.ByteArrayInputStream;
import java.util.ArrayList;
import java.util.List;

/**
 * Created this file:
 * ShardedJedis 是 jedis 的一种升级，基于一致性哈希算法实现的redis集群客户端
 * @Author xiaobo.xiong
 * @Date 2017-10-9  14:36
 */
public class ShardedJedisPoolLoad {

    private static final Logger logger = LoggerFactory.getLogger(ShardedJedisPoolLoad.class);

    private static ShardedJedisPool shardedJedisPool;

    synchronized public static ShardedJedisPool getShardedJedisPool(){
        return shardedJedisPool;
    }

    /**
     *
     * @param zookeeperUrl       zookeeper地址
     * @param configByZookeeper  是否配置了zookeeper地址
     * @param localConfigPath    本地地址
     * @return
     */
    synchronized public static ShardedJedisPool getShardedJedisPoolInit(String zookeeperUrl, Boolean configByZookeeper, String localConfigPath){
        if(null == shardedJedisPool){
            logger.debug("开始加载shardedJedis连接池");
            PropertiesConfiguration config = null;
            try{
                if(configByZookeeper && StringUtils.isNotBlank(zookeeperUrl)){
                    ZookProperties zookProperties = new ZookProperties("/per/config/redis.properties");
                    config = new PropertiesConfiguration();
                    config.load(new ByteArrayInputStream(zookProperties.getConfigBytes()));
                }else{
                    config = new PropertiesConfiguration(localConfigPath);
                }
            }catch (Exception e){
                e.printStackTrace();
                logger.error("加载jedisPool失败,{}",e.getMessage());
            }
            GenericObjectPoolConfig poolConfig = new JedisPoolConfig();
            poolConfig.setMaxTotal(config.getInt("redis.maxTotal"));
            poolConfig.setMaxIdle(config.getInt("redis.maxIdle"));
            poolConfig.setTimeBetweenEvictionRunsMillis(config.getLong("redis.timeBetweenEvictionRunsMillis"));
            poolConfig.setMinEvictableIdleTimeMillis(config.getLong("redis.minEvictableIdleTimeMillis"));
            poolConfig.setTestOnBorrow(config.getBoolean("redis.testOnBorrow"));
            poolConfig.setMinIdle(config.getInt("redis.minIdle"));
            poolConfig.setMaxWaitMillis(config.getLong("redis.maxWaitMillis"));


            logger.debug("开始加载redis主机列表");
            String hosts = config.getString("redis.host");
            String ports = config.getString("redis.port");
            String dbnames = config.getString("redis.name");
            String pwasswords = config.getString("redis.password");
            List<JedisShardInfo> shards = new ArrayList<JedisShardInfo>();
            String [] hostArr = hosts.split("@");
            String [] portArr = ports.split("@");
            String [] dbnameArr = null;
            if(StringUtils.isNotBlank(dbnames)){
                dbnameArr = dbnames.split("@");
            }
            String [] pwasswordArr = null;
            if(StringUtils.isNotBlank(pwasswords)){
                pwasswordArr = pwasswords.split("@");
            }
            if(hostArr.length == portArr.length){
                for (int i=0; i<hostArr.length; i ++) {
                    // 发现redis主机配置
                    String host = hostArr[i].trim();
                    int port = Integer.parseInt(portArr[i].trim());
                    String name = (dbnameArr == null) ? "" : (dbnameArr[i] == null ? "" : dbnameArr[i].trim());
                    String password = (pwasswordArr == null) ? "" : (pwasswordArr[i] == null ? "" : pwasswordArr[i].trim());
                    logger.debug("redis主机, host: {}, port: {}, name: {}", host, port, name);
                    JedisShardInfo jedisShardInfo = null;
                    if(StringUtils.isAnyEmpty(name)){
                        jedisShardInfo = new JedisShardInfo(host, port, config.getInt("redis.socketTimeout", 2000));
                    } else {
                        jedisShardInfo = new JedisShardInfo(host, port, config.getInt("redis.socketTimeout", 2000), name);
                    }
                    if(StringUtils.isNotBlank(password)){
                        jedisShardInfo.setPassword(password);
                    }
                    shards.add(jedisShardInfo);
                }
            } else {
                logger.error("redis配置有问题，请检查");
                throw new RuntimeException("redis配置有问题，请检查");
            }
            if (shards.isEmpty()) {
                logger.error("请指定至少一个redis主机");
                throw new RuntimeException("请指定至少一个redis主机");
            }
            logger.info(JSON.toJSONString(poolConfig));
            logger.info(JSON.toJSONString(shards));
            try{
                shardedJedisPool = new ShardedJedisPool(poolConfig, shards);
            }catch (Exception e){
                e.printStackTrace();
            }
            if(shardedJedisPool == null){
                logger.info("连接初始化没有成功....");
            }

            shardedJedisPool.getResource().set("tomcat","success");
        }
        return shardedJedisPool;
    }


}
