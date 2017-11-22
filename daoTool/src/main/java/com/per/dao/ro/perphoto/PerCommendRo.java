package com.per.dao.ro.perphoto;

import com.redis.annotation.FieldSortedSet;
import com.redis.annotation.Ro;
import com.redis.bean.BaseRedisObject;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-16  14:05
 */
@Ro(key = "per:commend")
public class PerCommendRo extends BaseRedisObject<Long>{
    /** 用户id*/
    @FieldSortedSet(key = "userId")
    private String userId;
    /**评论内容 */
    private String text;
    /** 资源信息列表 以 , 分割*/
    private String photoInfoIds;

    public PerCommendRo() {
    }

    public PerCommendRo(String userId, String text, String photoInfoIds) {
        this.userId = userId;
        this.text = text;
        this.photoInfoIds = photoInfoIds;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getPhotoInfoIds() {
        return photoInfoIds;
    }

    public void setPhotoInfoIds(String photoInfoIds) {
        this.photoInfoIds = photoInfoIds;
    }
}
