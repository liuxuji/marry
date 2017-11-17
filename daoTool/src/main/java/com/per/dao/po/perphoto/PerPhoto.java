package com.per.dao.po.perphoto;

import com.per.dao.enums.perphoto.ModelType;
import com.per.support.jpa.po.BaseEntityPKIncrment;

import javax.persistence.*;
import java.util.List;

/**
 * Created this file:
 * 一个邀请函的po
 * @author xiaobo.xiong
 * @Date 2017-11-16  11:24
 */
@Table(name = "per_photo")
@Entity
public class PerPhoto extends BaseEntityPKIncrment{
    /** 图片地址*/
    @OneToMany(cascade = CascadeType.ALL,mappedBy = "photo")
    @Column(name = "photo_infos")
    private List<BasePhotoInfo> photoInfos;
    /** 音乐地址*/
    private String musicPath;
    /** 邀请函编号*/
    private String invotationNo;
    /** 模版类型*/
    @Enumerated(EnumType.STRING)
    private ModelType type;
    /** 模版编号*/
    private Integer modelNo;
    /** 用户id*/
    private Integer userId;
    /** 能来人数*/
    private Integer canComeNum;

    public PerPhoto(List<BasePhotoInfo> photoInfos, String musicPath, String invotationNo, ModelType type,Integer modelNo,Integer userId,Integer canComeNum) {
        this.photoInfos = photoInfos;
        this.musicPath = musicPath;
        this.invotationNo = invotationNo;
        this.type = type;
        this.modelNo = modelNo;
        this.userId = userId;
        this.canComeNum = canComeNum;
    }

    public Integer getCanComeNum() {
        return canComeNum;
    }

    public void setCanComeNum(Integer canComeNum) {
        this.canComeNum = canComeNum;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public List<BasePhotoInfo> getPhotoInfos() {
        return photoInfos;
    }

    public void setPhotoInfos(List<BasePhotoInfo> photoInfos) {
        this.photoInfos = photoInfos;
    }

    public Integer getModelNo() {
        return modelNo;
    }

    public void setModelNo(Integer modelNo) {
        this.modelNo = modelNo;
    }

    public String getMusicPath() {
        return musicPath;
    }

    public void setMusicPath(String musicPath) {
        this.musicPath = musicPath;
    }

    public String getInvotationNo() {
        return invotationNo;
    }

    public void setInvotationNo(String invotationNo) {
        this.invotationNo = invotationNo;
    }

    public ModelType getType() {
        return type;
    }

    public void setType(ModelType type) {
        this.type = type;
    }

    public PerPhoto() {
    }
}
