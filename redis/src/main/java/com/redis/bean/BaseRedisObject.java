package com.redis.bean;

import com.per.model.Identifiable;
import com.per.property.PropertyDescriptorExtends;
import com.per.util.DateUtil;
import com.per.util.DebugUtil;
import com.per.util.ReflectionUtil;
import org.apache.commons.lang3.EnumUtils;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.beans.BeanInfo;
import java.beans.IntrospectionException;
import java.beans.Introspector;
import java.beans.PropertyDescriptor;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.*;
import java.util.concurrent.ConcurrentHashMap;

/**
 * Created this file:
 *
 * @Author xiaobo.xiong
 * @Date 2017-10-13  13:46
 */
public abstract class BaseRedisObject<ID extends Serializable> extends BaseRo implements Identifiable<ID> {
    private static final ConcurrentHashMap<Class<?>, List<PropertyDescriptorExtends>> supportedPropertyMap = new ConcurrentHashMap<>();

    private static final Set<Class<?>> supportedClass = new HashSet<>();

    protected Logger log = LoggerFactory.getLogger(getClass());

    private ID id;

    private Timestamp createTimestamp = DateUtil.now();
    private Timestamp updateTimestamp;

    static {
        supportedClass.add(Integer.class);
        supportedClass.add(int.class);
        supportedClass.add(Long.class);
        supportedClass.add(long.class);
        supportedClass.add(String.class);
        supportedClass.add(Boolean.class);
        supportedClass.add(boolean.class);
        supportedClass.add(Byte.class);
        supportedClass.add(byte.class);
        supportedClass.add(Short.class);
        supportedClass.add(short.class);
        supportedClass.add(BigDecimal.class);
        supportedClass.add(Timestamp.class);
        supportedClass.add(Time.class);
        supportedClass.add(Date.class);
        supportedClass.add(java.sql.Date.class);
    }

    private List<PropertyDescriptorExtends> getSupportedProperties() {
        List<PropertyDescriptorExtends> result = supportedPropertyMap.get(this.getClass());

        if (result == null) {
            try {
                BeanInfo bi = Introspector.getBeanInfo(getClass(), Object.class);
                PropertyDescriptor[] pds = bi.getPropertyDescriptors();
                result = new ArrayList<>();
                supportedPropertyMap.put(getClass(), result);
                for (PropertyDescriptor pd : pds) {
                    if(pd.getPropertyType() == null){
                        log.error("class[{}], property[{}] type is null",this.getClass(), pd);
                    }
                    if (supportedClass.contains(pd.getPropertyType()) || Enum.class.isAssignableFrom(pd.getPropertyType())) {
                        if (com.google.common.base.Objects.equal("id", pd.getName())) {
                            log.debug("{} ro id descriptor is {}", this.getClass(), pd);
                        }
                        result.add(new PropertyDescriptorExtends(pd));
                    } else {
                        log.warn("not support ro [{}] property {}", this.getClass(), pd.getName());
                    }
                }
            } catch (IntrospectionException e) {
            }
        } else {
//			log.debug("get supported property from cache");
        }
        return result;
    }

    @SuppressWarnings({ "unchecked", "rawtypes" })
    public void fromMap(Map<byte[], byte[]> map) {
        RedisObjMap objMap = new RedisObjMap(map);
        List<PropertyDescriptorExtends> pds = getSupportedProperties();
        for (PropertyDescriptorExtends pd : pds) {
            String name = pd.getName();
            Type type = pd.getPropertyType();

            Object value = null;
            Method writer = pd.getWriteMethod();
            if (writer == null)
                continue;
            try {
                if (type == Integer.class || type == int.class) {
                    value = objMap.getInt(name);
                } else if (type == Long.class || type == long.class) {
                    value = objMap.getLong(name);
                } else if (type == String.class) {
                    value = objMap.getString(name);
                } else if (type == Boolean.class || type == boolean.class) {
                    value = objMap.getBoolean(name);
                } else if (type == Byte.class || type == byte.class) {
                    value = objMap.getByte(name);
                } else if (type == Short.class || type == short.class) {
                    value = objMap.getShort(name);
                } else if (type == BigDecimal.class) {
                    value = objMap.getBigDecimal(name, 8);
                } else if (type == Timestamp.class) {
                    Long time = objMap.getLong(name);
                    value = time == null ? null : new Timestamp(time);
                } else if (type == Date.class) {
                    Long time = objMap.getLong(name);
                    value = time == null ? null : new Date(time);
                } else if (type == Time.class) {
                    Long time = objMap.getLong(name);
                    value = time == null ? null : new Time(time);
                } else if (type == java.sql.Date.class) {
                    Long time = objMap.getLong(name);
                    value = time == null ? null : new java.sql.Date(time);
                } else if (Enum.class.isAssignableFrom((Class) type)) {
                    String enumName = objMap.getString(name);
                    if (StringUtils.isNoneBlank(enumName)) {
                        value = EnumUtils.getEnum((Class<Enum>) type, enumName);
                    }
                } else {
                    log.error("不能识别的属性,ro={},name={},class={}", this.getClass(), name, type);
                }
                if (value != null) {
                    writer.invoke(this, value);
                }
            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e) {
                log.warn("Can not set {} to {}.{}", value, this.getClass().getName(), name, e);
            }
        }
    }

    /**
     * Include all basis data.
     */
    @SuppressWarnings("rawtypes")
    public Map<byte[], byte[]> toMap() {
        RedisObjMap map = new RedisObjMap();
        List<PropertyDescriptorExtends> pds = getSupportedProperties();
        for (PropertyDescriptorExtends pd : pds) {
            String name = pd.getName();
            Class<?> type = pd.getPropertyType();
            Object value;
            Method reader = pd.getReadMethod();
            if (reader == null)
                continue;
            try {
                value = reader.invoke(this);

                if (type == Integer.class || type == int.class) {
                    map.put(name, (Integer) value);
                } else if (type == Long.class || type == long.class) {
                    map.put(name, (Long) value);
                } else if (type == String.class) {
                    map.put(name, (String) value);
                } else if (type == Boolean.class || type == boolean.class) {
                    map.put(name, (Boolean) value);
                } else if (type == Byte.class || type == byte.class) {
                    map.put(name, (Byte) value);
                } else if (type == Short.class || type == short.class) {
                    map.put(name, (Short) value);
                } else if (type == BigDecimal.class) {
                    map.put(name, (BigDecimal) value, 8);
                } else if (type == Date.class || type == Timestamp.class || type == java.sql.Date.class || type == Time.class) {
                    Date ts = (Date) value;
                    map.put(name, ts == null ? null : ts.getTime());
                } else if (Enum.class.isAssignableFrom(type)) {
                    map.put(name, value == null ? null : ((Enum) value).name());
                }
            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e) {
                e.printStackTrace();
                log.warn("Can not get value of {}.{}", this.getClass().getName(), name, e);
            }
        }
        return map.getSerialMap();
    }

    @SuppressWarnings("unused")
    private Type getIdType(Type type) {
        if(type==Serializable.class){
            Class<Object> clz = ReflectionUtil.findGenericParameter(this.getClass(), 0);
            if(clz == null){//兼容二层继承
                clz = ReflectionUtil.findGenericParameter(this.getClass().getSuperclass(), 0);
                if(clz == null){
                    log.error("没有获取到ro id的类型,ro class={}",this.getClass());
                }
            }
            return clz;
        }
        return type;
    }

    public String toString() {
        return DebugUtil.toString(this);
    }

    public ID getId() {
        return id;
    }

    public void setId(ID id) {
        this.id = id;
    }

    public Timestamp getCreateTimestamp() {
        return createTimestamp;
    }

    public void setCreateTimestamp(Timestamp createTimestamp) {
        this.createTimestamp = createTimestamp;
    }

    public Timestamp getUpdateTimestamp() {
        return updateTimestamp;
    }

    public void setUpdateTimestamp(Timestamp updateTimestamp) {
        this.updateTimestamp = updateTimestamp;
    }

}
