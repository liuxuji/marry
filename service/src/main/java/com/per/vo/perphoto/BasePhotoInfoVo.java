package com.per.vo.perphoto;

import com.per.dao.po.perphoto.PerComment;
import com.per.dao.po.perphoto.PerPhoto;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.List;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-16  15:41
 */
public class BasePhotoInfoVo {
    private Integer id;
    private Timestamp createTimestamp;
    /**归属于请柬的id */
    private Integer photoId;
    /** 图片路径*/
    private String photoPath;
    /** 描述*/
    private String descs;
    /** 大小*/
    private Long size;
    /** 图片分类*/
    private String categroy;
    /** 好评数*/
    private int commendNums;
    /** 差评数*/
    private int badNums;
    /** 评论*/
    private List<PerCommendVo> perCommentList;

    public BasePhotoInfoVo(Integer id, Timestamp createTimestamp, Integer photoId, String photoPath, String descs, Long size, String categroy, int commendNums, int badNums, List<PerCommendVo> perCommentList) {
        this.id = id;
        this.createTimestamp = createTimestamp;
        this.photoId = photoId;
        this.photoPath = photoPath;
        this.descs = descs;
        this.size = size;
        this.categroy = categroy;
        this.commendNums = commendNums;
        this.badNums = badNums;
        this.perCommentList = perCommentList;
    }

    public BasePhotoInfoVo() {
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

    public Integer getPhotoId() {
        return photoId;
    }

    public void setPhotoId(Integer photoId) {
        this.photoId = photoId;
    }

    public String getPhotoPath() {
        return photoPath;
    }

    public void setPhotoPath(String photoPath) {
        this.photoPath = photoPath;
    }

    public String getDescs() {
        return descs;
    }

    public void setDescs(String descs) {
        this.descs = descs;
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

    public List<PerCommendVo> getPerCommentList() {
        return perCommentList;
    }

    public void setPerCommentList(List<PerCommendVo> perCommentList) {
        this.perCommentList = perCommentList;
    }
}
