package com.per.support.jpa.po;

import com.per.model.Identifiable;
import org.hibernate.annotations.UpdateTimestamp;

import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
import java.io.Serializable;
import java.sql.Timestamp;

/**
 * Created this file:
 * po基类,id不会自动生成,需要手动设置
 * @Author xiaobo.xiong
 * @Date 2017-11-8  14:39
 */
@SuppressWarnings("serial")
@MappedSuperclass
public class BaseEntity extends BasePo implements Serializable,Identifiable<Long> {

    @Id
    private Long id;
    private Timestamp createTime = new Timestamp(System.currentTimeMillis());
    @UpdateTimestamp
    private Timestamp updateTime;

    @Override
    public void setId(Long id) {
        this.id = id;
    }

    @Override
    public Long getId() {
        return id;
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
