package com.per.vo.perphoto;

import com.per.dao.enums.perphoto.ModelType;
import com.per.dao.po.perphoto.BasePhotoInfo;
import com.per.vo.BaseVoImplSerilizable;

import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import java.sql.Timestamp;
import java.util.List;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-16  15:32
 */
public class PerPhotoVo implements BaseVoImplSerilizable{
    private Integer id;
    private Timestamp createTimestamp;
    private List<BasePhotoInfoVo> photoInfos;
    /** 音乐地址*/
    private String musicPath;
    /** 邀请函编号*/
    private String invotationNo;
    /** 模版类型*/
    private ModelType type;
    /** 模版编号*/
    private Integer modelNo;
    /** 用户id*/
    private Integer userId;
    /** 能来人数*/
    private Integer canComeNum;

    public PerPhotoVo() {
    }

    public PerPhotoVo(Integer id, Timestamp createTimestamp, List<BasePhotoInfoVo> photoInfos, String musicPath, String invotationNo, ModelType type, Integer modelNo, Integer userId, Integer canComeNum) {
        this.id = id;
        this.createTimestamp = createTimestamp;
        this.photoInfos = photoInfos;
        this.musicPath = musicPath;
        this.invotationNo = invotationNo;
        this.type = type;
        this.modelNo = modelNo;
        this.userId = userId;
        this.canComeNum = canComeNum;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Timestamp getCreateTimestamp() {
        return createTimestamp;
    }

    public void setCreateTimestamp(Timestamp createTimestamp) {
        this.createTimestamp = createTimestamp;
    }

    public List<BasePhotoInfoVo> getPhotoInfos() {
        return photoInfos;
    }

    public void setPhotoInfos(List<BasePhotoInfoVo> photoInfos) {
        this.photoInfos = photoInfos;
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

    public Integer getModelNo() {
        return modelNo;
    }

    public void setModelNo(Integer modelNo) {
        this.modelNo = modelNo;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getCanComeNum() {
        return canComeNum;
    }

    public void setCanComeNum(Integer canComeNum) {
        this.canComeNum = canComeNum;
    }
}