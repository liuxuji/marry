package com.per.dao.ro.perphoto;

import com.per.dao.enums.perphoto.ModelType;
import com.redis.annotation.FieldSortedSet;
import com.redis.annotation.Ro;
import com.redis.annotation.RoSortedSet;
import com.redis.bean.BaseRedisObject;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-16  11:07
 */
@Ro(key = "per:photo")
@RoSortedSet(key = "sorted")
public class PerPhotoRo extends BaseRedisObject<Long>{
    /** 用户id，加上下面这个注解后，会在ro队列中生成一个 以userId结尾的 key，方便统计每个用户的 邀请函个数 */
    @FieldSortedSet(key = "userId")
    private Long userId;
    /** 邀请函编号*/
    private String invotationNo;
    /** 图片路径id ,以 , 分割*/
    private String photoPicPath;
    /** 描述*/
    private String desc;
    /** 音乐路径*/
    private String musicPath;
    private Integer modelNo;
    private ModelType type;
    private Integer canComeNum;

    public PerPhotoRo(Long userId, String invotationNo, String photoPicPath, String desc, String musicPath, Integer modelNo, ModelType type, Integer canComeNum) {
        this.userId = userId;
        this.invotationNo = invotationNo;
        this.photoPicPath = photoPicPath;
        this.desc = desc;
        this.musicPath = musicPath;
        this.modelNo = modelNo;
        this.type = type;
        this.canComeNum = canComeNum;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getInvotationNo() {
        return invotationNo;
    }

    public void setInvotationNo(String invotationNo) {
        this.invotationNo = invotationNo;
    }

    public String getPhotoPicPath() {
        return photoPicPath;
    }

    public void setPhotoPicPath(String photoPicPath) {
        this.photoPicPath = photoPicPath;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public String getMusicPath() {
        return musicPath;
    }

    public void setMusicPath(String musicPath) {
        this.musicPath = musicPath;
    }

    public Integer getModelNo() {
        return modelNo;
    }

    public void setModelNo(Integer modelNo) {
        this.modelNo = modelNo;
    }

    public ModelType getType() {
        return type;
    }

    public void setType(ModelType type) {
        this.type = type;
    }

    public Integer getCanComeNum() {
        return canComeNum;
    }

    public void setCanComeNum(Integer canComeNum) {
        this.canComeNum = canComeNum;
    }

    public PerPhotoRo() {
    }
}
