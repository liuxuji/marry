package com.per.support.jpa.repository;

import org.springframework.data.jpa.repository.support.JpaRepositoryFactory;
import org.springframework.data.repository.core.RepositoryMetadata;

import javax.persistence.EntityManager;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-8  15:06
 */
public class CommonRepositoryFactory extends JpaRepositoryFactory{

    public CommonRepositoryFactory(EntityManager entityManager) {
        super(entityManager);
    }

    @Override
    protected Class<?> getRepositoryBaseClass(RepositoryMetadata metadata) {
        return CommonJpaRepositoryBean.class;
    }

}
