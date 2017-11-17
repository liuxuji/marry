package com.per.dao.po.perphoto;

import com.per.support.jpa.po.BaseEntityPKIncrment;

import javax.persistence.*;
import java.util.List;

/**
 * Created this file:
 * 评论
 * @author xiaobo.xiong
 * @Date 2017-11-16  11:35
 */
@Entity
@Table(name = "per_comment")
public class PerComment extends BaseEntityPKIncrment{
    /** 用户id*/
    private String userId;
    /**评论内容 */
    private String text;
    /**评论的图片数据*/
    @ManyToMany(cascade = CascadeType.PERSIST)
    @JoinTable(name = "per_comment_photo",
            joinColumns = { @JoinColumn(name = "commend_id", referencedColumnName = "id") },
            inverseJoinColumns = { @JoinColumn(name = "photo_id", referencedColumnName = "id") },
            uniqueConstraints = { @UniqueConstraint(columnNames = { "commend_id", "photo_id" }) })
    private List<BasePhotoInfo> commendList;

    public PerComment(String userId, String text, List<BasePhotoInfo> commendList) {
        this.userId = userId;
        this.text = text;
        this.commendList = commendList;
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

    public List<BasePhotoInfo> getCommendList() {
        return commendList;
    }

    public void setCommendList(List<BasePhotoInfo> commendList) {
        this.commendList = commendList;
    }

    public PerComment() {
    }
}
