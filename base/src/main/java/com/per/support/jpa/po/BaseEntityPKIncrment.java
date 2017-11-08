package com.per.support.jpa.po;

import com.per.model.Identifiable;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
import java.io.Serializable;
import java.sql.Timestamp;

/**
 * Created this file:
 * po基类 主键自动增长
 * @Author xiaobo.xiong
 * @Date 2017-11-8  14:53
 */
@SuppressWarnings("serial")
@MappedSuperclass
public class BaseEntityPKIncrment extends BasePo implements Serializable,Identifiable<Long>{

    @Id
    @GeneratedValue
    private Long id;
    private Timestamp createTime = new Timestamp(System.currentTimeMillis());
    private Timestamp updateTime;

    @Override
    public Long getId() {
        return id;
    }

    @Override
    public void setId(Long id) {
        this.id = id;
    }

    public Timestamp getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Timestamp createTime) {
        this.createTime = createTime;
    }

    public Timestamp getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Timestamp updateTime) {
        this.updateTime = updateTime;
    }
}
