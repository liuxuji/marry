package com.per.dao.po.perphoto;

import com.per.dao.enums.perphoto.ModelType;
import com.per.dao.ro.perphoto.PerPhotoRo;
import com.per.support.jpa.po.BaseEntity;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.List;

/**
 * Created this file:
 * 一个邀请函的po
 * @author xiaobo.xiong
 * @Date 2017-11-16  11:24
 */
@Table(name = "per_photo")
@Entity
public class PerPhoto extends BaseEntity{
    /** 图片地址*/
    @OneToMany(cascade = CascadeType.ALL,mappedBy = "photo")
    @Column(name = "photo_infos")
    private List<BasePhotoInfo> photoInfos;
    /** 邀请函音乐地址*/
    private String musicPath;
    /** 邀请函编号*/
    private String invotationNo;
    /** 模版类型*/
    @Enumerated(EnumType.STRING)
    private ModelType type;
    /** 模版编号*/
    private Integer modelNo;
    /** 用户id*/
    private Long userId;
    /** 能来人数*/
    private Integer canComeNum;
    /** 邀请函标题*/
    private String title;
    /** 邀请函正文内容*/
    private String content;
    /** 邀请函背景图*/
    private String mainPhotoPath;
    /** 富文本内容*/
    private String textArea;
    /** 生效时间*/
    private Timestamp beginTime;
    /** 生效结束时间*/
    private Timestamp endTime;
    /** 婚礼开始时间*/
    private Timestamp marryTime;
    /** 男名称*/
    private String maleName;
    /** 女名称*/
    private String femaleName;
    /** 婚礼地点*/
    private String marryAddress;

    public PerPhoto(PerPhotoRo ro){
        this.setId(ro.getId());
        this.setCreateTime(ro.getCreateTimestamp());
        this.musicPath = ro.getMusicPath();
        this.invotationNo = ro.getInvotationNo();
        this.type = ro.getType();
        this.modelNo = ro.getModelNo();
        this.userId = ro.getUserId();
        this.canComeNum = ro.getCanComeNum();
        this.title = ro.getTitle();
        this.content = ro.getContent();
        this.mainPhotoPath = ro.getMainPhotoPath();
        this.textArea = ro.getTextArea();
        this.beginTime = ro.getBeginTime();
        this.endTime = ro.getEndTime();
        this.maleName = ro.getMaleName();
        this.femaleName = ro.getFemaleName();
        this.marryAddress = ro.getMarryAddress();
    }


    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getMainPhotoPath() {
        return mainPhotoPath;
    }

    public void setMainPhotoPath(String mainPhotoPath) {
        this.mainPhotoPath = mainPhotoPath;
    }

    public String getTextArea() {
        return textArea;
    }

    public void setTextArea(String textArea) {
        this.textArea = textArea;
    }

    public Timestamp getBeginTime() {
        return beginTime;
    }

    public void setBeginTime(Timestamp beginTime) {
        this.beginTime = beginTime;
    }

    public Timestamp getEndTime() {
        return endTime;
    }

    public void setEndTime(Timestamp endTime) {
        this.endTime = endTime;
    }

    public Timestamp getMarryTime() {
        return marryTime;
    }

    public void setMarryTime(Timestamp marryTime) {
        this.marryTime = marryTime;
    }

    public String getMaleName() {
        return maleName;
    }

    public void setMaleName(String maleName) {
        this.maleName = maleName;
    }

    public String getFemaleName() {
        return femaleName;
    }

    public void setFemaleName(String femaleName) {
        this.femaleName = femaleName;
    }

    public String getMarryAddress() {
        return marryAddress;
    }

    public void setMarryAddress(String marryAddress) {
        this.marryAddress = marryAddress;
    }

    public Integer getCanComeNum() {
        return canComeNum;
    }

    public void setCanComeNum(Integer canComeNum) {
        this.canComeNum = canComeNum;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
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
