package com.per.util;

import redis.clients.jedis.Jedis;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-23  15:42
 */
public class TestRedisConn {

    public static void main(String[] args){
        try {
//            String host = "39.106.108.35";//控制台显示访问地址
//            String host ="r-2ze2e9393cda3bb4.redis.rds.aliyuncs.com";
            String host ="127.0.0.1";
            int port = 6379;
            Jedis jedis = new Jedis(host, port);
//鉴权信息
//            jedis.auth("xxb19890501lovelxj19910412");//password
//            jedis.auth("WwwRedis1919Pro");
            String key = "redis";
            String value = "aliyun-redis";
//select db默认为0
            jedis.select(1);
//set一个key
            jedis.set(key, value);
            System.out.println("Set Key " + key + " Value: " + value);
//get 设置进去的key
            String getvalue = jedis.get(key);
            System.out.println("Get Key " + key + " ReturnValue: " + getvalue);
            jedis.quit();
            jedis.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
