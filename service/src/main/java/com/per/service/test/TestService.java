package com.per.service.test;

import com.per.dao.respository.test.TestRespository;
import com.per.dao.ro.FirstRo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created this file:
 *
 * @Author xiaobo.xiong
 * @Date 2017-10-17  10:09
 */
@Service
public class TestService implements ITestService{

    @Autowired
    private TestRespository testRespository;


    @Override
    public void save(FirstRo ro) {
        testRespository.save(ro);
    }

    @Override
    public void delete(Long id) {
        testRespository.delete(id);
    }

    @Override
    public FirstRo findOne(Long id) {
        return testRespository.findOne(id);
    }

    @Override
    public List<FirstRo> findAll() {
        try{
            return testRespository.findAll();
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }
}
