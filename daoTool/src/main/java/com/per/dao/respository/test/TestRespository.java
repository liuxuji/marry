package com.per.dao.respository.test;

import com.per.dao.respository.CrudRedisDao;
import com.per.dao.ro.FirstRo;
import org.springframework.stereotype.Repository;

/**
 * Created this file:
 *
 * @Author xiaobo.xiong
 * @Date 2017-10-17  10:05
 */
@Repository
public class TestRespository extends CrudRedisDao<FirstRo,Long> {
}
