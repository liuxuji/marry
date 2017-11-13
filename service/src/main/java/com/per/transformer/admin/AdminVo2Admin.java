package com.per.transformer.admin;

import com.google.common.base.Function;
import com.per.dao.po.admin.Admin;
import com.per.vo.admin.AdminVo;

import java.sql.Date;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-13  10:45
 */
public class AdminVo2Admin implements Function<AdminVo,Admin>{
    @Override
    public Admin apply(AdminVo adminVo) {
        Admin admin = new Admin();
        admin.setName(adminVo.getName());
        admin.setEmail(adminVo.getEmail());
        admin.setMsn(adminVo.getMsn());
        admin.setMobile(adminVo.getMobile());
        admin.setPassword(adminVo.getPassword());
        admin.setUserLoginName(adminVo.getUserName());
        admin.setQq(adminVo.getQq());
        admin.setEnabled(adminVo.isEnabled());
        admin.setCreateDate(new Date(System.currentTimeMillis()));
        return admin;
    }
}
