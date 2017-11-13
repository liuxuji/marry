package com.per.dao.po.admin;

import com.per.dao.enums.MenuLinkType;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * Created this file:
 *
 * @Author xiaobo.xiong
 * @Date 2017-11-8  10:58
 */
public class Menu implements Serializable{
    private MenuLinkType linkType;
    private String text;
    private String url;
    private String icon;
    private MenuLabel label;
    private List<Menu> submenu;

    public Menu(){}

    public Menu(String text, String icon)
    {
        this(text, icon, null, MenuLinkType.none);
    }

    public Menu(String text, String icon, String url)
    {
        this(text, icon, url, MenuLinkType.main_content);
    }

    public Menu(String text, String icon, String url, MenuLinkType linkType)
    {
        this(text, icon, url, linkType, null, null);
    }

    public Menu(String text, String icon, String url, MenuLinkType linkType, List<Menu> submenu)
    {
        this(text, icon, url, linkType, submenu, null);
    }

    public Menu(String text, String icon, String url, MenuLinkType linkType, List<Menu> submenu, MenuLabel label)
    {
        setLinkType(linkType);

        setText(text);
        setIcon(icon);
        setUrl(url);

        setSubmenu(submenu);
        setLabel(label);
    }

    public void addSubmenu(Menu submenu)
    {
        if(this.submenu == null) this.submenu = new ArrayList<>();
        this.submenu.add(submenu);
    }

    public MenuLinkType getLinkType()
    {
        return linkType;
    }

    public void setLinkType(MenuLinkType linkType)
    {
        this.linkType = linkType;
    }

    public String getUrl()
    {
        return url;
    }

    public void setUrl(String url)
    {
        if(url == null || url.length() <= 0)
        {
            this.url = "javascript:void(0);";
            return;
        }

        switch(this.linkType)
        {
            case none:
                this.url = "javascript:void(0);";
                break;
            case main_content:
                this.url = String.format("javascript:menuopen('%s')", url);
                break;
            case blank_link:
            case page_link:
            default:
                this.url = url;
                break;
        }
    }

    public String getText()
    {
        return text;
    }

    public void setText(String text)
    {
        this.text = text;
    }

    public String getIcon()
    {
        return icon;
    }

    public void setIcon(String icon)
    {
        if(icon == null || icon.length() <= 0)
        {
            this.icon = icon;
            return;
        }
        if(icon.startsWith("fa-"))
        {
            this.icon = "fa "+icon;
            return;
        }
        if(icon.startsWith("glyphicon-"))
        {
            this.icon = "glyphicon "+icon;
            return;
        }

        this.icon = icon;
    }

    public MenuLabel getLabel()
    {
        return label;
    }

    public void setLabel(MenuLabel label)
    {
        this.label = label;
    }

    public List<Menu> getSubmenu()
    {
        return submenu;
    }

    public void setSubmenu(List<Menu> submenu)
    {
        this.submenu = submenu;
    }

    public String getTarget()
    {
        switch(this.linkType)
        {
            case blank_link:
                return " target='_blank'";
            case main_content:
            case page_link:
            case none:
            default:
                return "";
        }
    }
}
