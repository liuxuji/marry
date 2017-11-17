package com.per.dao.enums.perphoto;

import com.per.enums.BaseListEnumConverter;
import com.per.enums.EnumerableValue;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-16  15:09
 */
public enum PhotoDataType implements EnumerableValue{
    PHOTO_DATA(1,"请柬数据"),
    SINGLE_PHOTO(2,"单张图片"),
    COMMEND(3,"评论数据")
    ;

    public static class Convter extends BaseListEnumConverter<PhotoDataType> {};

    private int value;
    private String desc;

    PhotoDataType(int value,String desc){
        this.value = value;
        this.desc = desc;
    }

    @Override
    public int getValue() {
        return value;
    }
}
