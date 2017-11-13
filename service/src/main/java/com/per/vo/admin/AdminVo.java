package com.per.vo.admin;

import com.per.vo.BaseVoImplSerilizable;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-13  10:30
 */
public class AdminVo implements BaseVoImplSerilizable{

    public static final boolean ENABLED = true;
    /**
     * 管理员账号
     */
    private String userName;

    /**
     * 管理员密码
     */
    private String password;

    /**
     * 管理员姓名
     */
    private String name;

    /**
     * 电子邮件
     */
    private String email;

    /**
     * 手机号
     */
    private String mobile;

    /**
     * MSN账号
     */
    private String msn;

    /**
     * QQ账号
     */
    private String qq;

    /**
     * 管理员状态
     */
    private boolean enabled = ENABLED;

    /**
     * 管理员角色
     */
    private String Roles;

    public AdminVo() {

    }

    public AdminVo(String userName, String password, String name, String email, String mobile, String msn, String qq, boolean enabled,
                   String roles) {
        this.userName = userName;
        this.password = password;
        this.name = name;
        this.email = email;
        this.mobile = mobile;
        this.msn = msn;
        this.qq = qq;
        this.enabled = enabled;
        Roles = roles;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getMsn() {
        return msn;
    }

    public void setMsn(String msn) {
        this.msn = msn;
    }

    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    public boolean getEnabled() {
        return enabled;
    }

    public String getRoles() {
        return Roles;
    }

    public void setRoles(String roles) {
        Roles = roles;
    }


}
