package com.redis;

import com.alibaba.dubbo.common.utils.StringUtils;
import com.redis.annotation.*;
import com.redis.bean.BaseRedisObject;
import com.redis.spi.ShardedJedisRedis;
import com.redis.util.ExpressionUtil;
import com.redis.util.RedisUtil;
import com.redis.util.SortedSetAssist;
import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.collections.MapUtils;
import org.apache.commons.collections.map.HashedMap;
import org.apache.commons.lang3.ArrayUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.expression.Expression;
import org.springframework.expression.ExpressionParser;
import org.springframework.expression.spel.standard.SpelExpressionParser;
import org.springframework.expression.spel.support.StandardEvaluationContext;
import redis.clients.jedis.ShardedJedis;
import redis.clients.jedis.ShardedJedisPipeline;
import redis.clients.util.Pool;

import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import static com.google.common.collect.Lists.newArrayList;

/**
 * Created this file:
 * 适用于多机环境，多个redis服务器的情况，RO的dao层需继承此类，提供基础的curd方法
 * @Author xiaobo.xiong
 * @Date 2017-10-18  10:49
 */
public class ShardedJedisCurdCommonRedisDao<T extends BaseRedisObject<ID>,ID extends Serializable> extends ShardedJedisRedis {

    private Logger logger = LoggerFactory.getLogger(getClass());
    private static final String SEPARATOR = ".";
    private Class<T> entityClass;

    private String keyPrefix = null;
    private boolean isExistRo = false;

    private String roLockKeyPrefix = null;
    private boolean isExistRoLock = false;
    private RoLock roLock = null;

    private String roSortedSetKey = null;
    private boolean isExistRoSortedSet = false;
    private RoSortedSet roSortedSet = null;

    Expression expression = null;

    Map<String, FieldSortedSet> fieldName_Annotation_Map = null;
    Map<FieldSortedSet, SortedSetAssist<T, ID>> fieldInSortedSetMap = null;

    Map<String, MethodSortedSet> methodName_Annotation_Map = null;
    Map<MethodSortedSet, SortedSetAssist<T, ID>> methodInSortedSetMap = null;

    public ShardedJedisCurdCommonRedisDao(){
        super();
        entityClass = (Class<T>) ((ParameterizedType) this.getClass().getGenericSuperclass()).getActualTypeArguments()[0];
        if(entityClass == null){
            throw new RuntimeException("Can not give the entityClass...");
        }
        //类ro基础注解
        Ro ro = entityClass.getAnnotation(Ro.class);
        isExistRo = ro == null ? false : true;
        if(!isExistRo){
            throw new RuntimeException("Not found ro annotation!");
        }
        keyPrefix = ro.key().intern();
        //类roLock锁注解
        roLock = entityClass.getAnnotation(RoLock.class);
        isExistRoLock = roLock == null ? false : true;
        if(isExistRoLock){
            roLockKeyPrefix = roLock.key().intern();
        }

        ExpressionParser parser = new SpelExpressionParser();
        //类roSortedSet注解 基于类ro注解
        roSortedSet = entityClass.getAnnotation(RoSortedSet.class);
        isExistRoSortedSet = roSortedSet == null ? false : true;
        if(isExistRoSortedSet){
            roSortedSetKey = (keyPrefix + SEPARATOR + roSortedSet.key()).intern();
            if(StringUtils.isNotEmpty(roSortedSet.score())){
                expression = parser.parseExpression(roSortedSet.score());
            }
        }

        /**返回类中所有字段，包括公共、保护、默认（包）访问和私有字段，但不包括继承的字段
         * entity.getFields();只返回对象所表示的类或接口的所有可访问公共字段
         * 在class中getDeclared**()方法返回的都是所有访问权限的字段、方法等；
         * 可看API
         * */
        Field[] fields = entityClass.getFields();
        if(ArrayUtils.isNotEmpty(fields)){
            for(Field field : fields){
                if(!Modifier.isFinal(field.getModifiers())){
                    field.setAccessible(true);           //修改访问权限
                    FieldSortedSet sortedSet = entityClass.getAnnotation(FieldSortedSet.class);
                    boolean isExistFiledSortedSet = sortedSet == null ? false : true;
                    if(isExistFiledSortedSet){
                        if(fieldName_Annotation_Map == null){
                            fieldName_Annotation_Map = new HashedMap();
                        }
                        if(fieldInSortedSetMap == null){
                            fieldInSortedSetMap = new HashedMap();
                        }
                        fieldInSortedSetMap.put(sortedSet,new SortedSetAssist<T, ID>(
                                field.getName(),
                                StringUtils.isBlank(sortedSet.prefix()) ? keyPrefix + SEPARATOR + field.getName() : sortedSet.prefix() + SEPARATOR + field.getName(),
                                parser.parseExpression(sortedSet.key()),
                                StringUtils.isNotEmpty(sortedSet.score()) ? parser.parseExpression(sortedSet.score()) : null
                        ));
                        fieldName_Annotation_Map.put(field.getName(),sortedSet);
                    }
                }
            }
        }

        Method[] methods = entityClass.getMethods();
        if(ArrayUtils.isNotEmpty(methods)){
            for(Method method : methods){
                if(!Modifier.isFinal(method.getModifiers())){
                    method.setAccessible(true);
                    MethodSortedSet methodSortedSet = entityClass.getAnnotation(MethodSortedSet.class);
                    boolean isExistMethodSortedSet = methodSortedSet == null ? false : true;
                    if(isExistMethodSortedSet){
                        if(methodName_Annotation_Map == null){
                            methodName_Annotation_Map = new HashedMap();
                        }
                        if(methodInSortedSetMap == null){
                            methodInSortedSetMap = new HashedMap();
                        }
                        methodName_Annotation_Map.put(method.getName(),methodSortedSet);
                        methodInSortedSetMap.put(methodSortedSet,new SortedSetAssist<T,ID>(
                                method.getName(),
                                StringUtils.isBlank(methodSortedSet.prefix()) ? keyPrefix + SEPARATOR + method.getName() : methodSortedSet.prefix() + SEPARATOR + method.getName(),
                                parser.parseExpression(methodSortedSet.key()),
                                StringUtils.isNotEmpty(methodSortedSet.score()) ? parser.parseExpression(methodSortedSet.score()) : null
                        ));
                    }
                }
            }
        }
    }

    /**
     * 通过参数获取key
     * @param params
     * @return
     */
    public String getKeyByParams(Object... params){
        StringBuffer stringBuffer = new StringBuffer(keyPrefix);
        if(ArrayUtils.isNotEmpty(params)){
            for(Object param : params){
                stringBuffer.append(SEPARATOR).append(param.toString());
            }
        }
        return stringBuffer.toString();
    }

    /**
     * 实例化
     * @return
     */
    private T instance(){
        try {
            return entityClass.newInstance();
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

    /**
     * 单个查询方法
     * @param id
     * @return
     */
    public T findOne(ID id){
        if(id == null){
            return null;
        }
        Map<byte[],byte[]> map = hgetAll(id.toString());
        if(MapUtils.isEmpty(map)){
            return null;
        }
        T ro = instance();
        ro.fromMap(map);
        return ro;
    }

    /**
     * 查询所有,这个方法需要在ro类上，注解@RoSortedSet
     * @return
     */
    public List<T> findAll(){
        List<String> list = getKeyListFromSortedSet(this.getRoSortedSetKey());
        return findByKeys(list);
    }

    /**
     * 单个保存
     * @param
     */
    public void save(T ro){
        if (isExistRoSortedSet) {
            long score = ExpressionUtil.getScore(new StandardEvaluationContext(ro), expression);
            zadd(this.getRoSortedSetKey(), score, RedisUtil.toByteArray(ro.getId()));
            if (logger.isDebugEnabled()) {
                logger.debug("zadd ({},{})", this.getRoSortedSetKey(), score, ro.getId());
            }
        }

        if (MapUtils.isNotEmpty(fieldInSortedSetMap)) {
            for (FieldSortedSet fieldSortedSet : fieldInSortedSetMap.keySet()) {
                SortedSetAssist<T, ID> field = fieldInSortedSetMap.get(fieldSortedSet);
                zadd(field.getKey(ro), field.getScore(ro), RedisUtil.toByteArray(ro.getId()));
                if (logger.isDebugEnabled()) {
                    logger.debug("zadd ({},{})", field.getKey(ro), field.getScore(ro), ro.getId());
                }
            }
        }

        if (MapUtils.isNotEmpty(methodInSortedSetMap)) {
            for (MethodSortedSet methodSortedSet : methodInSortedSetMap.keySet()) {
                SortedSetAssist<T, ID> method = methodInSortedSetMap.get(methodSortedSet);
                zadd(method.getKey(ro), method.getScore(ro), RedisUtil.toByteArray(ro.getId()));
                if (logger.isDebugEnabled()) {
                    logger.debug("zadd ({},{})", method.getKey(ro), method.getScore(ro), ro.getId());
                }
            }
        }
        hmset(getHashKey(ro.getId()), ro.toMap());
    }

    /**
     * 保存多个
     * @param ros
     */
    public void save(Iterable<T> ros){
        Pool<ShardedJedis> jedisPool = getPool();
        ShardedJedis jedis = null;
        try{
            jedis = jedisPool.getResource();
            ShardedJedisPipeline pipeline = jedis.pipelined();
            for(T t : ros){
                this.save(t,pipeline);
            }
            pipeline.syncAndReturnAll();
        }finally {
            jedisPool.returnResource(jedis);
        }
    }

    /**
     * 按照对象删除
     * @param ro
     */
    public void delete(T ro){
        if(ro != null){
            if(isExistRoSortedSet){
                zrem(this.getRoSortedSetKey(),RedisUtil.toByteArray(ro.getId()));
            }
            if(MapUtils.isNotEmpty(fieldInSortedSetMap)){
                for (FieldSortedSet fieldSortedSet : fieldInSortedSetMap.keySet()) {
                    SortedSetAssist<T, ID> field = fieldInSortedSetMap.get(fieldSortedSet);
                    zrem(field.getKey(ro), RedisUtil.toByteArray(ro.getId()));
                }
            }
            if (MapUtils.isNotEmpty(methodInSortedSetMap)) {
                for (MethodSortedSet methodSortedSet : methodInSortedSetMap.keySet()) {
                    SortedSetAssist<T, ID> method = methodInSortedSetMap.get(methodSortedSet);
                    zrem(method.getKey(ro), RedisUtil.toByteArray(ro.getId()));
                }
            }
            del(getHashKey(ro.getId()));
        }
    }

    /**
     * 按照id删除
     * @param id
     */
    public void delete(ID id){
        delete(findOne(id));
    }

    private void save(T ro,ShardedJedisPipeline pipeline){
        if (isExistRoSortedSet) {
            long score = ExpressionUtil.getScore(new StandardEvaluationContext(ro), expression);
            pipeline.zadd(RedisUtil.toByteArray(this.getRoSortedSetKey()), score, RedisUtil.toByteArray(ro.getId()));
        }

        if (MapUtils.isNotEmpty(fieldInSortedSetMap)) {
            for (FieldSortedSet fieldSortedSet : fieldInSortedSetMap.keySet()) {
                SortedSetAssist<T, ID> field = fieldInSortedSetMap.get(fieldSortedSet);
                pipeline.zadd(RedisUtil.toByteArray(field.getKey(ro)), field.getScore(ro), RedisUtil.toByteArray(ro.getId()));
            }
        }

        if (MapUtils.isNotEmpty(methodInSortedSetMap)) {
            for (MethodSortedSet methodSortedSet : methodInSortedSetMap.keySet()) {
                SortedSetAssist<T, ID> method = methodInSortedSetMap.get(methodSortedSet);
                pipeline.zadd(RedisUtil.toByteArray(method.getKey(ro)), method.getScore(ro), RedisUtil.toByteArray(ro.getId()));
            }
        }
        pipeline.hmset(RedisUtil.toByteArray(getHashKey(ro.getId())), ro.toMap());
    }

    private List<String> getKeyListFromSortedSet(String roSortedSetKey){
        Set<byte[]> ids = zRange(roSortedSetKey, 0, -1);
        if (CollectionUtils.isNotEmpty(ids)) {
            List<String> keys = new ArrayList<>(ids.size());
            for (byte[] bid : ids) {
                keys.add(getHashKeyFromIdByte(bid));
            }
            return keys;
        }
        return newArrayList();
    }

    private List<T> findByKeys(List<String> keys) {
        List<T> result = newArrayList();
        if (CollectionUtils.isNotEmpty(keys)) {
            List<Object> list = pipeHgetall(keys);
            if(CollectionUtils.isNotEmpty(list)){
                for (int i = 0; i < list.size(); i++) {
                    Map<byte[], byte[]> map = (Map<byte[], byte[]>) list.get(i);
                    if(map != null){
                        T ro = instance();
                        try {
                            ro.fromMap(map);
                        } catch (Exception e) {
                            logger.error("ro.fromMap", e);
                        }
                        result.add(ro);
                    }
                }
            }
        }
        return result;
    }


    public String getKeyPrefix() {
        return keyPrefix.toString();
    }

    public String getRoSortedSetKey() {
        return roSortedSetKey.toString();
    }

    //ro
    public String getHashKey(Serializable id) {
        return new StringBuffer(getKeyPrefix()).append(SEPARATOR).append(id).toString();
    }

    //ro
    public String getHashKeyFromIdByte(byte[] byteId) {
        return new StringBuffer(getKeyPrefix()).append(SEPARATOR).append(new String(byteId)).toString();
    }

    //lock
    public String getRoLockKeyPrefix() {
        return roLockKeyPrefix.toString();
    }

    //lock
    public String getLockHashKey(Serializable id) {
        return new StringBuffer(getRoLockKeyPrefix()).append(SEPARATOR).append(id).toString();
    }

    //lock
    public String getLockHashKeyFromIdByte(byte[] byteId) {
        return new StringBuffer(getRoLockKeyPrefix()).append(SEPARATOR).append(new String(byteId)).toString();
    }


}
