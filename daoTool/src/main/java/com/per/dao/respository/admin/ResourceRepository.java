package com.per.dao.respository.admin;

import com.per.dao.po.admin.Resource;
import com.per.support.jpa.repository.CommonJpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-13  10:22
 */
@Repository
public interface ResourceRepository extends CommonJpaRepository<Resource,Long>{
}
