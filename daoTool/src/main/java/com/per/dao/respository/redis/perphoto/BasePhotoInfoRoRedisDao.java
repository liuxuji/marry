package com.per.dao.respository.redis.perphoto;

import com.per.dao.ro.perphoto.BasePhotoInfoRo;
import com.redis.ShardedJedisCurdCommonRedisDao;
import org.springframework.stereotype.Repository;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-16  14:57
 */
@Repository
public class BasePhotoInfoRoRedisDao extends ShardedJedisCurdCommonRedisDao<BasePhotoInfoRo,Integer>{
}
