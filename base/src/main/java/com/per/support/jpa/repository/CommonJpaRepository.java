package com.per.support.jpa.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.NoRepositoryBean;
import org.springframework.transaction.annotation.Transactional;

import java.io.Serializable;

/**
 * Created this file:
 *
 * @Author xiaobo.xiong
 * @Date 2017-11-8  14:56
 */
@NoRepositoryBean
public interface CommonJpaRepository<T,ID extends Serializable> extends JpaRepository<T,ID> {
    /**
     * 实例化
     * rollbackFor:指定异常回滚后的操作 类 ,可以自定义该类
     * @param entity
     */
    @Transactional(rollbackFor = Exception.class)
    void persist(T entity);
}
