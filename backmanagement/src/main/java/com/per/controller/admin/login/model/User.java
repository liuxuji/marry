package com.per.controller.admin.login.model;

import com.per.vo.BaseVoImplSerilizable;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-13  13:28
 */
public class User implements BaseVoImplSerilizable{
    private Long   id;
    private String username;
    private String realname;
    private String portrait;

    public User(){}

    public User(Long id, String username, String realname, String portrait)
    {
        this.id = id;
        this.username = username;
        this.realname = realname;
        this.portrait = portrait;
    }

    public Long getId()
    {
        return id;
    }

    public void setId(Long id)
    {
        this.id = id;
    }

    public String getUsername()
    {
        return username;
    }
    public void setUsername(String username)
    {
        this.username = username;
    }
    public String getRealname()
    {
        return realname;
    }
    public void setRealname(String realname)
    {
        this.realname = realname;
    }
    public String getPortrait()
    {
        return portrait;
    }
    public void setPortrait(String portrait)
    {
        this.portrait = portrait;
    }
}
