package com.redis.spi;

import com.alibaba.dubbo.common.utils.CollectionUtils;
import com.google.common.collect.Lists;
import com.redis.api.ComJedisRedis;
import org.springframework.beans.factory.annotation.Autowired;
import redis.clients.jedis.*;
import redis.clients.util.Pool;

import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * Created this file:
 * ShardedJedis 是用一致性哈希算法实现的redis集群客户端
 * 封装的这个类，适用于多机环境，一般要与redission 搭配使用
 *
 * @Author xiaobo.xiong
 * @Date 2017-10-13  17:35
 */
public class ShardedJedisRedis implements ComJedisRedis<ShardedJedis> {

    @Autowired(required = false)
    private ShardedJedisPool shardedJedisPool;

    @Override
    public Pool<ShardedJedis> getPool() {
        return shardedJedisPool;
    }

    @Override
    public byte[] hget(String key, String field) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            return jedis.hget(key.getBytes(),field.getBytes());
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public Long hdel(String key, String field) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            return jedis.hdel(key.getBytes(),field.getBytes());
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public Long hdel(String key,String... field){
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            return jedis.hdel(key,field);
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public long hset(String key, String field, byte[] value) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            return jedis.hset(key.getBytes(),field.getBytes(),value);
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public boolean hsetnx(String key, String field, byte[] value) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            return jedis.hsetnx(key.getBytes(),field.getBytes(),value).intValue() == 1;
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public String hmset(String key, Map<byte[], byte[]> hash) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            return jedis.hmset(key.getBytes(),hash);
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public List<byte[]> hmget(String key, byte[]... fields) {
        ShardedJedis jedis = null;
        try {
            jedis = shardedJedisPool.getResource();
            return jedis.hmget(key.getBytes(),fields);
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public Map<byte[], byte[]> hgetAll(String key) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            return jedis.hgetAll(key.getBytes());
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public boolean hexists(String key, String field) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            return jedis.hexists(key.getBytes(),field.getBytes());
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public Long sadd(String key, byte[] value) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            return jedis.sadd(key.getBytes(),value);
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public Long sadd(String key, String... values) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            return jedis.sadd(key,values);
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public ScanResult<String> sscan(String key, long cursor, int count) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            return jedis.sscan(key,String.valueOf(cursor),new ScanParams().count(count));
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public boolean sismember(String key, byte[] member) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            return jedis.sismember(key.getBytes(),member);
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public Set<byte[]> smembers(String key) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            return jedis.smembers(key.getBytes());
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public Long srem(String key, byte[]... members) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            return jedis.srem(key.getBytes(),members);
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public Long srem(String key, String... members) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            return jedis.srem(key,members);
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public Long del(String key) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            return jedis.del(key.getBytes());
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public boolean exists(String key) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            return jedis.exists(key.getBytes());
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    /* 添加有序集合,返回的是成功数据的多少，当替换score值时，不计入成功数 */
    @Override
    public boolean zadd(String key, double score, byte[] member) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            Long result = jedis.zadd(key.getBytes(),score,member);
            return result == 0L || result == 1L;
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public Long zrem(String key, byte[]... members) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            return jedis.zrem(key.getBytes(),members);
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public Long zrem(String key, String... members) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            return jedis.zrem(key,members);
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public Long zrem(String key, String member) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            return jedis.zrem(key.getBytes(),member.getBytes());
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public Set<byte[]> zRange(String key, long start, long end) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            return jedis.zrange(key.getBytes(),start,end);
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public Set<byte[]> zrevrange(String key, long start, long end) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            return jedis.zrevrange(key.getBytes(),start,end);
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public Set<Tuple> zrevrangeWithScore(String key, long start, long end) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            return jedis.zrevrangeWithScores(key.getBytes(),start,end);
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public Set<byte[]> zangeByScore(String key, String min, String max) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            return jedis.zrangeByScore(key.getBytes(),min.getBytes(),max.getBytes());
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public Set<Tuple> zrangeWithScores(String key, long start, long end) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            return jedis.zrangeWithScores(key.getBytes(),start,end);
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public Long zCard(String key) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            return jedis.zcard(key.getBytes());
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public Double zscore(String key, byte[] member) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            return jedis.zscore(key.getBytes(),member);
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public Integer zscoreToInt(String key, byte[] member) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            Double d = jedis.zscore(key.getBytes(),member);
            return d == null ? null : d.intValue();
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public Long zscoreToLong(String key, byte[] member) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            Double d = jedis.zscore(key.getBytes(),member);
            return d == null ? null : d.longValue();
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public Long zrank(String key, byte[] member) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            return jedis.zrank(key.getBytes(),member);
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public Double zincrby(String key, double score, byte[] member) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            return jedis.zincrby(key.getBytes(),score,member);
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public Long rpush(String key, byte[] value) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            return jedis.rpush(key.getBytes(),value);
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public Long rpush(String key, byte[]... strings) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            return jedis.rpush(key.getBytes(),strings);
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public Long lpush(String key, byte[]... strings) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            return jedis.lpush(key.getBytes(),strings);
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public String ltrim(String key, long start, long end) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            return jedis.ltrim(key.getBytes(),start,end);
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public List<byte[]> lrange(String key, long start, long end) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            return jedis.lrange(key.getBytes(),start,end);
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public long llen(String key) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            Long d = jedis.llen(key.getBytes());
            return d == null ? 0 : d.longValue();
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public byte[] lpop(String key) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            return jedis.lpop(key.getBytes());
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public Set<byte[]> zrevrangeByScore(String key, byte[] max, byte[] min) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            return jedis.zrevrangeByScore(key.getBytes(),max,min);
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public Set<byte[]> zrevrangeByScore(String key, String max, String min) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            return jedis.zrevrangeByScore(key.getBytes(),max.getBytes(),min.getBytes());
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public Set<byte[]> zrevrangeByScore(String key, String max, String min, int offset, int count) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            return jedis.zrevrangeByScore(key.getBytes(),max.getBytes(),min.getBytes(),offset,count);
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public long zcount(String key, String min, String max) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            Long d = jedis.zcount(key.getBytes(),min.getBytes(),max.getBytes());
            return d == null ? 0L : d.longValue();
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public Long zremrangeByScore(String key, String start, String end) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            return jedis.zremrangeByScore(key.getBytes(),start.getBytes(),end.getBytes());
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public Long zremrangeByRank(String key, long start, long end) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            return jedis.zremrangeByRank(key.getBytes(),start,end);
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public Long zcount(String key, double min, double max) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            return jedis.zcount(key.getBytes(),min,max);
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public Set<String> zrangeByScore(String key, double min, double max, int offset, int count) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            return jedis.zrangeByScore(key,min,max,offset,count);
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public Set<String> zrangeByScore(String key, String min, String max) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            return jedis.zrangeByScore(key,min,max);
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public Set<String> zrangeByScore(String key, long min, long max) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            return jedis.zrangeByScore(key,min,max);
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public void expire(String key, int seconds) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            jedis.expire(key.getBytes(),seconds);
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public void expireAt(String key, Long unixTime) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            jedis.expireAt(key,unixTime);
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public List<Object> pipeHgetall(List<String> ids) {
        ShardedJedis jedis = null;
        try{
            if(CollectionUtils.isEmpty(ids)){
                return Lists.newArrayList();
            }
            jedis = shardedJedisPool.getResource();
            ShardedJedisPipeline pipeline = jedis.pipelined();
            for(String str : ids){
                pipeline.hgetAll(str.getBytes());
            }
            return pipeline.syncAndReturnAll();
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public void pipeZadd(String key, double score, List<String> members) {
        ShardedJedis jedis = null;
        try{
            if(CollectionUtils.isEmpty(members)){
                return;
            }
            jedis = shardedJedisPool.getResource();
            ShardedJedisPipeline pipeline = jedis.pipelined();
            for(String str : members){
                pipeline.zadd(key.getBytes(),score,str.getBytes());
            }
            pipeline.syncAndReturnAll();
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public List<Object> pipeZcard(List<String> ids) {
        ShardedJedis jedis = null;
        try{
            if(CollectionUtils.isEmpty(ids)){
                return Lists.newArrayList();
            }
            jedis = shardedJedisPool.getResource();
            ShardedJedisPipeline pipeline = jedis.pipelined();
            for(String str : ids){
                pipeline.zcard(str.getBytes());
            }
            return pipeline.syncAndReturnAll();
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public void pipeHmset(String key, List<Map<byte[], byte[]>> hashs) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            ShardedJedisPipeline pipeline = jedis.pipelined();
            for(Map<byte[],byte[]> map : hashs){
                pipeline.hmset(key.getBytes(),map);
            }
            pipeline.syncAndReturnAll();
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public Long hincrBy(String key, byte[] field, long value) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            return jedis.hincrBy(key.getBytes(),field,value);
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public byte[] get(String key) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            return jedis.get(key.getBytes());
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public void set(String key, byte[] value) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            jedis.set(key.getBytes(),value);
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public void setex(String key, int seconds, byte[] value) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            jedis.setex(key.getBytes(),seconds,value);
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public boolean setnx(String key, byte[] value) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            Long d = jedis.setnx(key.getBytes(),value);
            return d != null && d.intValue() == 1;
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public Long getTTL(String key) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            return jedis.ttl(key.getBytes());
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public Long incr(String key) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            return jedis.incr(key.getBytes());
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public Long zrevrank(String key, byte[] member) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            return jedis.zrevrank(key.getBytes(),member);
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public List<Object> pipeRpop(byte[] key, long size) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            ShardedJedisPipeline pipeline = jedis.pipelined();
            for(int i = 0;i < size ; i++){
                pipeline.rpop(key);
            }
            return pipeline.syncAndReturnAll();
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public Long lrem(String key, long count, byte[] value) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            return jedis.lrem(key.getBytes(),count,value);
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public Long incrby(String key, long increment) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            return jedis.incrBy(key.getBytes(),increment);
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public List<Object> pipeGet(List<String> keys) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            ShardedJedisPipeline pipeline = jedis.pipelined();
            for(String key : keys){
                pipeline.get(key.getBytes());
            }
            return pipeline.syncAndReturnAll();
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }

    @Override
    public Long scard(String key) {
        ShardedJedis jedis = null;
        try{
            jedis = shardedJedisPool.getResource();
            return jedis.scard(key.getBytes());
        }finally {
            shardedJedisPool.returnResource(jedis);
        }
    }
}
