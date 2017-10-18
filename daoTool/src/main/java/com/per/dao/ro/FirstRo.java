package com.per.dao.ro;

import com.redis.annotation.FieldSortedSet;
import com.redis.annotation.Ro;
import com.redis.annotation.RoSortedSet;
import com.redis.bean.BaseRedisObject;

/**
 * Created this file:
 *
 * @Author xiaobo.xiong
 * @Date 2017-10-13  13:39
 */
@RoSortedSet(key = "list",score = "id")
@Ro(key = "first:ro")
public class FirstRo extends BaseRedisObject<Long>{

    private String name;

    private String value;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public FirstRo() {
    }

    public FirstRo(String name, String value) {
        this.name = name;
        this.value = value;
    }

    @Override
    public String toString() {
        return "[name='"+name+"',value='"+value+"'],id:" + this.getId();
    }
}
