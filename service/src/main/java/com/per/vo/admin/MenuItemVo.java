package com.per.vo.admin;

import com.per.dao.enums.MenuLinkType;
import com.per.vo.BaseVoImplSerilizable;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-13  10:34
 */
public class MenuItemVo implements BaseVoImplSerilizable{

    /**
     * 父类id
     */
    private Long mainMenuId;

    /**
     * 在菜单名称
     */
    private String name;

    /**
     * 子菜单序号
     */
    private Integer code;

    /**
     * 子菜单链接
     */
    private String link;

    /**
     * 需要权限
     */
    private String symbol;

    /**
     * 备注信息
     */
    private String description;

    /**
     * url
     */
    private String url;

    /**
     * text
     */
    private String text;

    /**
     * 链接跳转类型
     */
    private MenuLinkType linkType;

    /**
     * 子菜单icon
     */
    private String icon;

    public MenuItemVo() {

    }

    public MenuItemVo(Long mainMenuId,
                      String name,
                      Integer code,
                      String link,
                      String symbol,
                      String description,
                      String url,
                      String text,
                      MenuLinkType linkType,
                      String icon) {
        this.mainMenuId = mainMenuId;
        this.name = name;
        this.code = code;
        this.link = link;
        this.symbol = symbol;
        this.description = description;
        this.url = url;
        this.text = text;
        this.linkType = linkType;
        this.icon = icon;
    }

    public Long getMainMenuId() {
        return mainMenuId;
    }

    public void setMainMenuId(Long mainMenuId) {
        this.mainMenuId = mainMenuId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
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

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public MenuLinkType getLinkType() {
        return linkType;
    }

    public void setLinkType(MenuLinkType linkType) {
        this.linkType = linkType;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

}
