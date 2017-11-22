package com.per.transformer.base;

import com.alibaba.dubbo.common.utils.CollectionUtils;
import com.alibaba.dubbo.common.utils.StringUtils;

import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.util.List;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-20  9:58
 */
public abstract class BaseTrans {

    private static final String ID = "id";
    private static final String DOT = ",";

    /**
     * 转换obj带id的集合 成 一个字符串,用 , 分割 方便存储redis
     * @param list 集合
     * @param <T>  实体（参数带id的）
     * @return
     */
    public <T>String transListObjContainsIdToString(List<T> list){
        if(CollectionUtils.isEmpty(list)){
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        for(T t : list){
            String id = transObjToString(t);
            stringBuffer.append(id == null ? "" : id).append(DOT);
        }
        String strs = stringBuffer.toString();
        if(StringUtils.isNotEmpty(strs)){
            if(strs.equals(DOT)){
                return strs.substring(0,strs.lastIndexOf(DOT));
            }
        }
        return null;
    }

    private <T>String transObjToString(T t) {
        //通过反射机制获取子类传递过来的实体类的类型信息
        ParameterizedType type = (ParameterizedType)t.getClass().getGenericSuperclass();
        Class clazz = (Class<T>)type.getActualTypeArguments()[0];
        //获取当前属性加载中所有的属性(字段)
        Field[] fields = clazz.getFields();
        for(int i = 0;i< fields.length; i++){
            Field f = fields[i];
            String key = f.getName();
            if(ID.equals(key)){
                try {
                    return (String)f.get(t);
                } catch (IllegalAccessException e) {
                    e.printStackTrace();
                }
            }
        }
        return null;
    }

}
