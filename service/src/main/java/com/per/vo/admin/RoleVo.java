package com.per.vo.admin;

import com.per.vo.BaseVoImplSerilizable;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-13  10:33
 */
public class RoleVo implements BaseVoImplSerilizable{

    /**
     * 该角色id
     */
    private Long id;

    /**
     * 角色名称
     */
    private String name;

    /**
     * 角儿描述
     */
    private String description;

    /**
     * 菜单索引
     */
    private String menuItems;

    /**
     * 操作索引
     */
    private String resources;

    public RoleVo() {

    }

    public RoleVo(Long id, String name, String description, String menuItems, String resources) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.menuItems = menuItems;
        this.resources = resources;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getMenuItems() {
        return menuItems;
    }

    public void setMenuItems(String menuItems) {
        this.menuItems = menuItems;
    }

    public String getResources() {
        return resources;
    }

    public void setResources(String resources) {
        this.resources = resources;
    }

}
