package com.per.support.jpa.repository;

import org.springframework.data.jpa.repository.support.JpaEntityInformation;
import org.springframework.data.jpa.repository.support.SimpleJpaRepository;
import org.springframework.data.repository.NoRepositoryBean;

import javax.persistence.EntityManager;
import java.io.Serializable;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-8  15:03
 */
@NoRepositoryBean
public class CommonJpaRepositoryBean<T,ID extends Serializable> extends SimpleJpaRepository<T,ID> implements CommonJpaRepository<T,ID> {

    private EntityManager entityManager;

    protected EntityManager getEntityManager() {
        return entityManager;
    }

    public CommonJpaRepositoryBean(Class<T> domainClass, EntityManager em) {
        super(domainClass, em);
        this.entityManager = em;
    }

    public CommonJpaRepositoryBean(final JpaEntityInformation<T, ?> entityInformation, final EntityManager entityManager) {
        super(entityInformation, entityManager);
        this.entityManager = entityManager;
    }
    @Override
    public void persist(T entity) {
        getEntityManager().persist(entity);
    }

}
