package com.per.dao.po.user;

import java.io.Serializable;

/**
 * Created this file:
 *
 * @Author xiaobo.xiong
 * @Date 2017-11-8  11:19
 */
public class MenuLabel implements Serializable{

    private String color;
    private String text;

    public MenuLabel(){}

    public MenuLabel(String color, String text)
    {
        this.color = color;
        this.text  = text;
    }

    public String getColor()
    {
        return color;
    }
    public void setColor(String color)
    {
        this.color = color;
    }
    public String getText()
    {
        return text;
    }
    public void setText(String text)
    {
        this.text = text;
    }

}
