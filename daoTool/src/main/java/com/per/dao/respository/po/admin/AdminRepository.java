package com.per.dao.respository.po.admin;

import com.per.dao.po.admin.Admin;
import com.per.support.jpa.repository.CommonJpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created this file:
 * 定义的dao接口类 常用的curd方法已在父类中封装
 * @author xiaobo.xiong
 * @Date 2017-11-13  10:13
 */
@Repository
public interface AdminRepository extends CommonJpaRepository<Admin,String>{
    /** spring jpa 支持按名取义，如下；也可以手动在定义的方法上面加sql语句，复杂的sql，就建议写个实现类，用hql*/
    List<Admin> findByEnabled(boolean enabled);
}
