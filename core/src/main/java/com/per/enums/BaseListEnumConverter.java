package com.per.enums;

import com.google.common.base.Function;
import com.google.common.base.Joiner;
import com.google.common.base.Splitter;
import com.google.common.collect.Lists;
import org.apache.commons.lang3.StringUtils;

import javax.persistence.AttributeConverter;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created this file:
 *
 * @Author xiaobo.xiong
 * @Date 2017-10-13  17:25
 */
public abstract class BaseListEnumConverter<E extends EnumerableValue> implements AttributeConverter<List<? extends EnumerableValue>,String> {

    private static final String separator = ",";

    private Class<E> clz;
    private Map<Integer,E> enumMap = new HashMap<Integer,E>();

    @SuppressWarnings("unchecked")
    public BaseListEnumConverter() {
        try {
            clz = (Class<E>) ((ParameterizedType) this.getClass().getGenericSuperclass()).getActualTypeArguments()[0];
            Method method = clz.getMethod("values");
            for (E e : (E[]) method.invoke(null)){
                enumMap.put(Integer.valueOf(e.getValue()), e);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public String convertToDatabaseColumn(List<? extends EnumerableValue> list) {
        return this.toString(list);
    }

    @Override
    public List<E> convertToEntityAttribute(String dbData) {
        return this.toList(dbData);
    }

    public String toString(List<? extends EnumerableValue> list) {
        if (list == null) return "";
        List<String> strList = Lists.transform(list, new Function<EnumerableValue,String>(){
            @Override
            public String apply(EnumerableValue input) {
                return String.valueOf(input.getValue());
            }
        });
        return Joiner.on(separator).join(strList);
    }

    public List<E> toList(String dbString){
        if(StringUtils.isEmpty(dbString)||enumMap.isEmpty()) return Collections.emptyList();
        List<E> result = Lists.newArrayList();
        List<String> valueList = Splitter.on(separator).splitToList(dbString);
        for(String value : valueList){
            E e = enumMap.get(Integer.valueOf(value));
            if(e!=null)result.add(e);
        }
        return result;
    };

}
