package com.per.enums;

import javax.persistence.AttributeConverter;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;

/**
 * Created this file:
 *
 * @Author xiaobo.xiong
 * @Date 2017-10-13  14:03
 */
public abstract class BaseEnumValueConverter<E extends EnumerableValue> implements AttributeConverter<E, Integer> {

    private Class<E> clz;
    private Method method;

    @Override
    public Integer convertToDatabaseColumn(EnumerableValue attribute) {
        return attribute == null ? null : attribute.getValue();
    }

    @Override
    public E convertToEntityAttribute(Integer dbData) {
        return valueOf(dbData);
    }

    @SuppressWarnings("unchecked")
    public BaseEnumValueConverter() {
        try {
            clz = (Class<E>) ((ParameterizedType) this.getClass().getGenericSuperclass()).getActualTypeArguments()[0];
            method = clz.getMethod("values");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 根据value获取对应枚举
     *
     * @param value
     * @return
     */
    @SuppressWarnings("unchecked")
    public E valueOf(Integer value) {
        if (value == null) return null;
        try {
            method = clz.getMethod("values");
            for (E e : (E[]) method.invoke(null))
                if (e.getValue() == value)
                    return e;
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
