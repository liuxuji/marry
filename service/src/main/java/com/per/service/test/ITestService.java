package com.per.service.test;

import com.per.dao.ro.FirstRo;

import java.util.List;

/**
 * Created this file:
 *
 * @Author xiaobo.xiong
 * @Date 2017-10-17  10:10
 */
public interface ITestService {

    void save(FirstRo ro);
    void delete(Long id);
    FirstRo findOne(Long id);
    List<FirstRo> findAll();

}
