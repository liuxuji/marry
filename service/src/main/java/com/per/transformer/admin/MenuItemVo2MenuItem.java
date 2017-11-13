package com.per.transformer.admin;

import com.google.common.base.Function;
import com.per.dao.po.admin.MenuItem;
import com.per.vo.admin.MenuItemVo;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-13  11:08
 */
public class MenuItemVo2MenuItem implements Function<MenuItemVo,MenuItem> {
    @Override
    public MenuItem apply(MenuItemVo menuItemVo) {
        MenuItem menuItem = new MenuItem();
        menuItem.setName(menuItemVo.getName());
        menuItem.setLink(menuItemVo.getLink());
        menuItem.setSymbol(menuItemVo.getSymbol());
        menuItem.setDescription(menuItemVo.getDescription());
        menuItem.setCode(menuItemVo.getCode());
        menuItem.setUrl(menuItemVo.getUrl());
        menuItem.setText(menuItemVo.getText());
        menuItem.setIcon(menuItemVo.getIcon());
        menuItem.setLinkType(menuItemVo.getLinkType());
        return menuItem;
    }
}
