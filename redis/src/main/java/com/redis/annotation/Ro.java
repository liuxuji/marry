package com.redis.annotation;

import java.lang.annotation.*;

/**
 * Created this file:
 * 类注解,获取类存储的key
 * 如果有此注解，则当前进行更新保存的对象，需序列当前对象到当前key的value
 * @Author xiaobo.xiong
 * @Date 2017-10-9  15:53
 */
@Target(ElementType.TYPE)
@Retention(RetentionPolicy.RUNTIME)
@Documented
@Inherited
public @interface Ro {

    String key();

}
