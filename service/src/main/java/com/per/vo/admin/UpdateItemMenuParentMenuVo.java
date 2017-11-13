package com.per.vo.admin;

import com.per.vo.BaseVoImplSerilizable;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-13  13:36
 */
public class UpdateItemMenuParentMenuVo implements BaseVoImplSerilizable{

    /**
     * 子菜单id
     */
    private String menuItemIds;

    /**
     * 父菜单id
     */
    private String itemParentIds;

    public UpdateItemMenuParentMenuVo() {

    }

    public UpdateItemMenuParentMenuVo(String itemParentIds, String menuItemIds) {
        this.itemParentIds = itemParentIds;
        this.menuItemIds = menuItemIds;
    }

    public String getMenuItemIds() {
        return menuItemIds;
    }

    public void setMenuItemIds(String menuItemIds) {
        this.menuItemIds = menuItemIds;
    }

    public String getItemParentIds() {
        return itemParentIds;
    }

    public void setItemParentIds(String itemParentIds) {
        this.itemParentIds = itemParentIds;
    }
}
