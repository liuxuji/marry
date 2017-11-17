package com.per.dao.respository.redis.perphoto;

import com.per.dao.ro.perphoto.PerPhotoRo;
import com.redis.ShardedJedisCurdCommonRedisDao;
import org.springframework.stereotype.Repository;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-16  14:11
 */
@Repository
public class PerPhotoRoRedisDao extends ShardedJedisCurdCommonRedisDao<PerPhotoRo,Integer>{

    private static final String USER_ID = "userId";

    private String photoUserKey = null;

    /**获取带userId的存储key值 */
    private String getPerPhotoUserKey(){
        if(photoUserKey == null){
            synchronized (photoUserKey){
                if(photoUserKey == null){
                    photoUserKey = new StringBuffer(getKeyPrefix()).append(USER_ID).toString();
                }
            }
        }
        return photoUserKey;
    }



}
