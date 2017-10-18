package com.per.model;

/**
 * Created this file:
 *
 * @Author xiaobo.xiong
 * @Date 2017-10-13  13:53
 */
public interface Identifiable<ID> {

    void setId(ID id);
    ID getId();
}
