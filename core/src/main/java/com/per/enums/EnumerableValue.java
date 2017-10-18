package com.per.enums;

/**
 * Created this file:
 * 枚举int的上层接口,只有枚举才应该继承本接口
 * 配合BaseEnumValueConverter使用
 * @Author xiaobo.xiong
 * @Date 2017-10-13  13:59
 */
public interface EnumerableValue {
    int getValue();
}
