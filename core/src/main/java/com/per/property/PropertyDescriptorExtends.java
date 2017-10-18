package com.per.property;

import java.beans.PropertyDescriptor;
import java.lang.reflect.Method;

/**
 * Created this file:
 * 属性描述符扩展:由于PropertyDescriptor中保存属性类型的字段是一个weak引用,会导致gc时将该字段回收
 * 在下次获取属性类型时根据getter/setter来反射真实类型
 * 然而我们redis object使用了泛型属性,反射出的getter/setter是bridge方法,其参数/返回值是泛型超类
 * 因此不能在gc后获取到正确的类型,导致redis反射出错
 *
 * 封装PropertyDescriptor,将属性类型改为强引用
 * @Author xiaobo.xiong
 * @Date 2017-10-13  13:55
 */
public class PropertyDescriptorExtends {
    private PropertyDescriptor propertyDescriptor;

    private final Class<?> propertyType;
    private final Method readMethod;
    private final Method writeMethod;
    private final String name;
    public PropertyDescriptorExtends(PropertyDescriptor pd) {
        super();
        this.propertyDescriptor = pd;
        this.propertyType = pd.getPropertyType();
        this.readMethod = pd.getReadMethod();
        this.writeMethod = pd.getWriteMethod();
        this.name = pd.getName();
    }
    public Class<?> getPropertyType() {
        return propertyType;
    }
    public Method getReadMethod() {
        return readMethod;
    }
    public Method getWriteMethod() {
        return writeMethod;
    }
    public String getName() {
        return name;
    }
    public PropertyDescriptor getPropertyDescriptor() {
        return propertyDescriptor;
    }
    public void setPropertyDescriptor(PropertyDescriptor propertyDescriptor) {
        this.propertyDescriptor = propertyDescriptor;
    }

}
