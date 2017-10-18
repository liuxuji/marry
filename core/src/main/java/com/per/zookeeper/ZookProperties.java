package com.per.zookeeper;

import org.apache.commons.lang.StringUtils;
import org.apache.curator.framework.CuratorFramework;
import org.apache.zookeeper.CreateMode;
import org.apache.zookeeper.WatchedEvent;
import org.apache.zookeeper.Watcher;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.Properties;

/**
 * Created this file:
 * 从Zookeeper加载配置文件
 * @Author xiaobo.xiong
 * @Date 2017-10-9  10:59
 */
public class ZookProperties {

    private static final Logger log = LoggerFactory.getLogger(ZookProperties.class);

    private Properties properties;
    private byte[] configBytes;

    public ZookProperties(){
    }

    public Properties getProperties() {
        return properties;
    }

    public void setProperties(Properties properties) {
        this.properties = properties;
    }

    public byte[] getConfigBytes() {
        return configBytes;
    }

    public void setConfigBytes(byte[] configBytes) {
        this.configBytes = configBytes;
    }

    public ZookProperties(final String path){
        this(path,false);
    }

    public ZookProperties(final String path,boolean watch){
        try{
            final CuratorFramework curatorFramework = ZookeeperClient.getClient();
            if(curatorFramework.checkExists().forPath(path) == null){
                log.debug("zk文件不存在，创建zk文件,{}",path);
                curatorFramework.create().creatingParentsIfNeeded().withMode(CreateMode.PERSISTENT).forPath(path);
            }
            byte[] data;
            if(watch){
                final Watcher watcher = new Watcher() {
                    @Override
                    public void process(WatchedEvent event) {
                        if(event.getType() == Event.EventType.NodeCreated ||
                                event.getType() == Event.EventType.NodeDataChanged){
                            log.debug("NodeData Changed");
                            try{
                                byte[] data = curatorFramework.getData().usingWatcher(this).forPath(path);
                                reloadProperties(data);
                            }catch (Exception e){
                                e.printStackTrace();
                            }
                        }
                    }
                };
                data = curatorFramework.getData().usingWatcher(watcher).forPath(path);
            }else {
                data = curatorFramework.getData().forPath(path);
            }
            reloadProperties(data);
            log.debug("加载zk配置文件成功");
        }catch (Exception e){
            e.printStackTrace();
            log.error("加载zookeeper出错,{}",e.getMessage());
        }
    }

    private void reloadProperties(byte[] data)throws IOException{
        Properties properties = createEmptyConfig();
        if(data != null){
            properties.load(new ByteArrayInputStream(data));
        }
        setConfigBytes(data);
        setProperties(properties);
    }

    private static Properties createEmptyConfig(){
        return new Properties();
    }

    /**
     * 获取配置值
     * @param key
     * @return
     */
    public String getProperty(String key){
        return properties == null ? null : properties.getProperty(key);
    }

    public Long getLongProperty(String key){
        String value = getProperty(key);
        return StringUtils.isNotEmpty(value) ? null : Long.parseLong(value);
    }


}
