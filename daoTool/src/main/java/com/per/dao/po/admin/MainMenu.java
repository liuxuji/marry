package com.per.dao.po.admin;

import com.per.dao.enums.MenuLinkType;

import javax.persistence.*;
import java.util.List;

/**
 * Created this file:
 *
 * @Author xiaobo.xiong
 * @Date 2017-11-8  13:36
 */
@Entity
@Table(name = "main_menu")
public class MainMenu {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column
    private Integer code;

    @Column(length = 50)
    private String name;

    @Column
    private String description;

    @OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL, mappedBy = "mainMenu")
    @OrderBy(value = "code")
    private List<MenuItem> menuItems;

    @Enumerated(EnumType.STRING)
    private MenuLinkType linkType;
    private String text;
    private String url;
    private String icon;
    private String labelColor;
    private String labelText;

    public MainMenu() {
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<MenuItem> getMenuItems() {
        return menuItems;
    }

    public Integer getCode() {
        return code;
    }

    public Long getId() {
        return id;
    }

    public void setMenuItems(List<MenuItem> menuItems) {
        this.menuItems = menuItems;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return name;
    }

    public MenuLinkType getLinkType() {
        return linkType;
    }

    public void setLinkType(MenuLinkType linkType) {
        this.linkType = linkType;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public String getLabelColor() {
        return labelColor;
    }

    public void setLabelColor(String labelColor) {
        this.labelColor = labelColor;
    }

    public String getLabelText() {
        return labelText;
    }

    public void setLabelText(String labelText) {
        this.labelText = labelText;
    }

}
