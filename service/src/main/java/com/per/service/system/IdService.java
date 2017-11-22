package com.per.service.system;

import com.per.zookeeper.SoaIndexFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

/**
 * Created this file:
 * 全局id生成器,copy
 * @author xiaobo.xiong
 * @Date 2017-11-20  9:39
 */
@Service("idService")
public class IdService {
    private final static long twepoch = 1409030641843L;
    // 机器标识位数
    private final static long workerIdBits = 9L;
    // 数据中心标识位数
    private final static long dataCenterIdBits = 1L;
    // 机器ID最大值
    //private final static long maxWorkerId = -1L ^ (-1L << workerIdBits);
    // 数据中心ID最大值
    private final static long maxDataCenterId = -1L ^ (-1L << dataCenterIdBits);
    // 毫秒内自增位
    private final static long sequenceBits = 12L;
    // 机器ID偏左移12位
    private final static long workerIdShift = sequenceBits;
    // 数据中心ID左移17位
    private final static long dataCenterIdShift = sequenceBits + workerIdBits;
    // 时间毫秒左移22位
    private final static long timestampLeftShift = sequenceBits + workerIdBits + dataCenterIdBits;

    private final static long sequenceMask = -1L ^ (-1L << sequenceBits);

    private static long lastTimestamp = -1L;

    private long sequence = 0L;

    private final long workerId = 2L;

    private final long dataCenterId = 2L;

    private Logger logger = LoggerFactory.getLogger(getClass());

    /** @Value("${soa.idcIndex}") long dataCenterId*/
//    @Autowired
    public IdService() {
//        dataCenterId = 2;
//        if (dataCenterId > maxDataCenterId || dataCenterId < 0) {
//            throw new IllegalArgumentException(
//                    "datacenter Id can't be greater than %d or less than 0");
//        }
//        this.workerId = SoaIndexFactory.newInstance().getSoaIdx();
//        this.dataCenterId = dataCenterId;
//        logger.info("idService inited by centerId:{}, worderId:{}",dataCenterId, workerId);
    }

    public synchronized long nextId() {
        long timestamp = timeGen();
        if (timestamp < lastTimestamp) {
            try {
                throw new Exception(
                        "Clock moved backwards.  Refusing to generate id for " + (lastTimestamp
                                - timestamp) + " milliseconds");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        if (lastTimestamp == timestamp) {
            // 当前毫秒内，则+1
            sequence = (sequence + 1) & sequenceMask;
            if (sequence == 0) {
                // 当前毫秒内计数满了，则等待下一秒
                timestamp = tilNextMillis(lastTimestamp);
            }
        } else {
            sequence = 0;
        }
        lastTimestamp = timestamp;
        // ID偏移组合生成最终的ID，并返回ID
        long nextId =
                ((timestamp - twepoch) << timestampLeftShift) | (dataCenterId << dataCenterIdShift) | (
                        workerId << workerIdShift) | sequence;

        return nextId;
    }

    private long tilNextMillis(final long lastTimestamp) {
        long timestamp = this.timeGen();
        while (timestamp <= lastTimestamp) {
            timestamp = this.timeGen();
        }
        return timestamp;
    }

    private long timeGen() {
        return System.currentTimeMillis();
    }

}
