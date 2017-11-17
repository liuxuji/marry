package com.per.dao.po.perphoto;

import com.per.support.jpa.po.BaseEntityPKIncrment;

import javax.persistence.*;
import java.util.List;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-16  11:28
 */
@Entity
@Table(name = "base_photo_info")
public class BasePhotoInfo extends BaseEntityPKIncrment{
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
    @ManyToMany(cascade = CascadeType.PERSIST)
    @JoinTable(name = "per_photo_recommend",
            joinColumns = { @JoinColumn(name = "photo_id", referencedColumnName = "id") },
            inverseJoinColumns = { @JoinColumn(name = "commend_id", referencedColumnName = "id") },
            uniqueConstraints = { @UniqueConstraint(columnNames = { "photo_id", "commend_id" }) })
    private List<PerComment> perCommentList;

    @ManyToOne
    private PerPhoto photo;


    public BasePhotoInfo(String photoPath, String descs, Long size, String categroy, int commendNums, int badNums, List<PerComment> perCommentList, PerPhoto photo) {
        this.photoPath = photoPath;
        this.descs = descs;
        this.size = size;
        this.categroy = categroy;
        this.commendNums = commendNums;
        this.badNums = badNums;
        this.perCommentList = perCommentList;
        this.photo = photo;
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

    public List<PerComment> getPerCommentList() {
        return perCommentList;
    }

    public void setPerCommentList(List<PerComment> perCommentList) {
        this.perCommentList = perCommentList;
    }

    public PerPhoto getPhoto() {
        return photo;
    }

    public void setPhoto(PerPhoto photo) {
        this.photo = photo;
    }

    public BasePhotoInfo() {
    }
}
