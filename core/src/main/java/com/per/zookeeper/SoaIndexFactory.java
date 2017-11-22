package com.per.zookeeper;

import com.per.asserts.SystemAsserts;
import org.apache.commons.collections.CollectionUtils;
import org.apache.curator.framework.CuratorFramework;
import org.apache.zookeeper.CreateMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-20  9:41
 */
public class SoaIndexFactory {
    private static final Logger logger = LoggerFactory.getLogger(SoaIndexFactory.class);

    private static final String soaIdxBaseNodePath = "/bozhi/run/soaIdx";

    private static Integer soaIdx = null;

    private static int MAX_SOA_IDX = 512;

    private static final String NODE_SEPARATOR = "/";

    private SoaIndexFactory() {
        try {
            final CuratorFramework curator = ZooClient.getClient();
            if (soaIdx == null) {
                if (curator.checkExists().forPath(soaIdxBaseNodePath) == null) {
                    curator.create().creatingParentsIfNeeded().withMode(CreateMode.PERSISTENT).forPath(soaIdxBaseNodePath);
                }
                // 当前存活的节点
                List<String> aliveNodes = curator.getZookeeperClient().getZooKeeper().getChildren(soaIdxBaseNodePath, false);
                if (CollectionUtils.isNotEmpty(aliveNodes)) {
                    for (int i = 1; i <= MAX_SOA_IDX; i++) {
                        if (!aliveNodes.contains(String.valueOf(i))) {
                            soaIdx = i;
                            break;
                        }
                    }
                } else {
                    soaIdx = 1;
                }
                SystemAsserts.notNull(soaIdx, "初始化soaIdx失败");
                // 创建临时节点
                curator.create().creatingParentsIfNeeded().withMode(CreateMode.EPHEMERAL)
                        .forPath(soaIdxBaseNodePath + NODE_SEPARATOR + soaIdx);
            }
        } catch (Exception e) {
            logger.error("初始化soaIdx失败", e);
        }
    }

    public static SoaIndexFactory newInstance() {
        return SoaIdxFactoryHolder.instance;
    }

    private static class SoaIdxFactoryHolder {
        static SoaIndexFactory instance = new SoaIndexFactory();
    }

    /**
     * 获取当前进程soaIdx
     *
     * @return
     * @author defei
     * @date 2015年11月18日
     */
    public int getSoaIdx() {
        return soaIdx.intValue();
    }

}
