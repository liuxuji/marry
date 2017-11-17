package com.per.dao.enums.perphoto;

import com.per.enums.BaseListEnumConverter;
import com.per.enums.EnumerableValue;

/**
 * Created this file:
 * 模版类型
 * @author xiaobo.xiong
 * @Date 2017-11-16  13:08
 */
public enum ModelType implements EnumerableValue{
    NO_TYPE(0,"不使用模版")

    ;

    public static class Convter extends BaseListEnumConverter<ModelType> {
    }

    private int value ;
    private String desc;

    ModelType(int value,String desc){
        this.value = value;
        this.desc = desc;
    }

    public String getDesc(){
        return desc;
    }

    @Override
    public int getValue() {
        return value;
    }
}
