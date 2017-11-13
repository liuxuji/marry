package com.per.vo.admin;

import com.per.vo.BaseVoImplSerilizable;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-13  10:35
 */
public class ResourceVo implements BaseVoImplSerilizable{

    /**
     * 父类id
     */
    private Long menuItemId;

    /**
     * 操作名称
     */
    private String name;

    /**
     * 操作权限
     */
    private String symbol;

    /**
     * 备注信息
     */
    private String description;

    public ResourceVo() {

    }

    public ResourceVo(Long menuItemId, String name, String symbol, String description) {
        this.menuItemId = menuItemId;
        this.name = name;
        this.symbol = symbol;
        this.description = description;
    }

    public Long getMenuItemId() {
        return menuItemId;
    }

    public void setMenuItemId(Long menuItemId) {
        this.menuItemId = menuItemId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSymbol() {
        return symbol;
    }

    public void setSymbol(String symbol) {
        this.symbol = symbol;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
