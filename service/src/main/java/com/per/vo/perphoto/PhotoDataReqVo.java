package com.per.vo.perphoto;

import com.per.dao.enums.perphoto.PhotoDataType;

import java.io.Serializable;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-16  15:06
 */
public class PhotoDataReqVo implements Serializable{
    /** 用户id*/
    private Integer userId;
    /** id */
    private Long id;
    /** 是请柬、照片、评论枚举*/
    private PhotoDataType type;
    /** 分页页数*/
    private int pageIndex;
    /** 分页每页数量,默认10 */
    private int pageSize = 10;

    public PhotoDataReqVo() {
    }

    public PhotoDataReqVo(Integer userId, Long id, PhotoDataType type, int pageIndex, int pageSize) {
        this.userId = userId;
        this.id = id;
        this.type = type;
        this.pageIndex = pageIndex;
        this.pageSize = pageSize;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public PhotoDataType getType() {
        return type;
    }

    public void setType(PhotoDataType type) {
        this.type = type;
    }

    public int getPageIndex() {
        return pageIndex;
    }

    public void setPageIndex(int pageIndex) {
        this.pageIndex = pageIndex;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }
}
