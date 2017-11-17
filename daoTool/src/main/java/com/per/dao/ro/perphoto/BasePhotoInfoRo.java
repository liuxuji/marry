package com.per.dao.ro.perphoto;

import com.redis.annotation.Ro;
import com.redis.bean.BaseRedisObject;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-16  11:12
 */
@Ro(key = "base:photo:info")
public class BasePhotoInfoRo extends BaseRedisObject<Integer>{
    /** 图片路径*/
    private String photoPath;
    /** 描述*/
    private String desc;
    /** 大小*/
    private Long size;
    /** 图片分类*/
    private String categroy;
    /** 好评数*/
    private int commendNums;
    /** 差评数*/
    private int badNums;
    /** PerPhotoRo的id*/
    private Integer perPhotoRoId;
    /** 评论id,以 , 分割*/
    private String commentIds;

    public BasePhotoInfoRo(String photoPath, String desc, Long size, String categroy, int commendNums, int badNums, Integer perPhotoRoId, String commentIds) {
        this.photoPath = photoPath;
        this.desc = desc;
        this.size = size;
        this.categroy = categroy;
        this.commendNums = commendNums;
        this.badNums = badNums;
        this.perPhotoRoId = perPhotoRoId;
        this.commentIds = commentIds;
    }

    public BasePhotoInfoRo() {
    }

    public String getPhotoPath() {
        return photoPath;
    }

    public void setPhotoPath(String photoPath) {
        this.photoPath = photoPath;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public Long getSize() {
        return size;
    }

    public void setSize(Long size) {
        this.size = size;
    }

    public String getCategroy() {
        return categroy;
    }

    public void setCategroy(String categroy) {
        this.categroy = categroy;
    }

    public int getCommendNums() {
        return commendNums;
    }

    public void setCommendNums(int commendNums) {
        this.commendNums = commendNums;
    }

    public int getBadNums() {
        return badNums;
    }

    public void setBadNums(int badNums) {
        this.badNums = badNums;
    }

    public Integer getPerPhotoRoId() {
        return perPhotoRoId;
    }

    public void setPerPhotoRoId(Integer perPhotoRoId) {
        this.perPhotoRoId = perPhotoRoId;
    }

    public String getCommentIds() {
        return commentIds;
    }

    public void setCommentIds(String commentIds) {
        this.commentIds = commentIds;
    }
}
