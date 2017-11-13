package com.per.dao.po.admin;

import org.springframework.security.core.GrantedAuthority;

/**
 * Created this file:
 *
 * @Author xiaobo.xiong
 * @Date 2017-11-8  14:17
 */
public class AdminAuthority implements GrantedAuthority,Comparable {

    private String auth ;

    public String getAuth() {
        return auth;
    }

    public void setAuth(String auth) {
        this.auth = auth;
    }

    public AdminAuthority(String auth) {
        super();
        this.auth = auth;
    }

    @Override
    public int compareTo(Object o) {
        AdminAuthority oAuth = (AdminAuthority) o;
        if (oAuth == null || oAuth.getAuthority() == null){
            return -1;
        }
        return oAuth.getAuthority().compareTo(this.auth);
    }

    @Override
    public String getAuthority() {
        return getAuth();
    }
}
