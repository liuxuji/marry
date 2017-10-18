package com.per.zookeeper;

import org.apache.curator.RetryPolicy;
import org.apache.curator.RetrySleeper;
import org.apache.curator.framework.CuratorFramework;
import org.apache.curator.framework.CuratorFrameworkFactory;
import org.apache.curator.retry.RetryNTimes;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Created this file:
 * 创建zookeeper客户端连接
 * @Author xiaobo.xiong
 * @Date 2017-10-9  11:18
 */
public class ZookeeperClient {

    private static final Logger log = LoggerFactory.getLogger(ZookeeperClient.class);
    private static final String ZOOKEEPER_FILE_NAME_PATH = "connection/zookeeper.properties";
    private static final String ZOOKEEPER_NAME = "zookeeper.url";

    private static CuratorFramework curatorFramework;

    synchronized public static CuratorFramework getClient(){
        if(curatorFramework == null){
            String zookeeperUrl = getZookeeperUrl().replace("zookeeper://","").replace("?backup=",",");
            try{
                curatorFramework = CuratorFrameworkFactory.builder()
                        .connectString(zookeeperUrl)
                        .retryPolicy(new RetryNTimes(Integer.MAX_VALUE,1000))
                        .connectionTimeoutMs(1000)
                        .build();
            }catch (Exception e){
                e.printStackTrace();
            }
        }
        return curatorFramework;
    }

    private static String getZookeeperUrl(){
        String url = ConfigUtils.getZookeeperUrl();
        if(url == null){
            try{
                url = ConfigUtils.getPropertyValue(ZOOKEEPER_FILE_NAME_PATH,ZOOKEEPER_NAME);
            }catch (Exception e){
                e.printStackTrace();
            }
        }
        return url;
    }

}
