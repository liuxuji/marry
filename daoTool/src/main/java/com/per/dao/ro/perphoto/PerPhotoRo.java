package com.per.dao.ro.perphoto;

import com.per.dao.enums.perphoto.ModelType;
import com.redis.annotation.FieldSortedSet;
import com.redis.annotation.Ro;
import com.redis.annotation.RoSortedSet;
import com.redis.bean.BaseRedisObject;

import java.sql.Timestamp;

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
