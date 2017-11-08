package com.per.support.jpa.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.support.JpaRepositoryFactoryBean;
import org.springframework.data.repository.core.support.RepositoryFactorySupport;

import javax.persistence.EntityManager;
import java.io.Serializable;

/**
 * Created this file:
 *
 * @Author xiaobo.xiong
 * @Date 2017-11-8  15:08
 */
public class CommonRepositoryFactoryBean<T extends JpaRepository<Object,Serializable>> extends JpaRepositoryFactoryBean<T,Object,Serializable> {

    @Override
    protected RepositoryFactorySupport createRepositoryFactory(EntityManager em) {
        return new CommonRepositoryFactory(em);
    }


}
