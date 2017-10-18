package com.per.zookeeper;

import org.apache.commons.collections.map.HashedMap;
import org.apache.commons.configuration.PropertiesConfiguration;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.Map;

/**
 * Created this file:
 * 获取配置参数工具类
 * @Author xiaobo.xiong
 * @Date 2017-10-9  13:11
 */
public class ConfigUtils {

    private static Logger logger = LoggerFactory.getLogger(ConfigUtils.class);
    private final static Map<String,PropertiesConfiguration> map = new HashedMap();
    private static final String ZOOKEEPER_URL = "zookeeper.url";

    public ConfigUtils(){}

    private static PropertiesConfiguration getConfig(String propertyFileName){
        PropertiesConfiguration propertiesConfiguration = map.get(propertyFileName);
        if(propertiesConfiguration == null){
            try{
                propertiesConfiguration = new PropertiesConfiguration(propertyFileName);
                logger.debug("加载配置文件成功");
            }catch (Exception e){
                e.printStackTrace();
                logger.error("加载配置文件失败,{}",e.getMessage());
            }
            map.put(propertyFileName,propertiesConfiguration);
        }
        return propertiesConfiguration;
    }

    public static String getPropertyValue(String propertyFileName,String propertyName){
        return getConfig(propertyFileName).getString(propertyName);
    }

    public static String getZookeeperUrl(){
        return System.getProperty(ZOOKEEPER_URL);
    }

    /**
     * 判断是否由 zookeeper 配置
     * @return
     */
    public static boolean isConfiguredByZoo(){
        return getZookeeperUrl() != null;
    }



}
