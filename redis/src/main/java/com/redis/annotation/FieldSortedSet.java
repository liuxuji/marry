package com.redis.annotation;

import java.lang.annotation.*;

/**
 * Created this file:
 * 属性注解  获取属性存取的key
 * 如果有此注解 则当前进行更新保存的对象，需增加当前对象id到当前key的value
 * @Author xiaobo.xiong
 * @Date 2017-10-16  14:53
 */
@Retention(RetentionPolicy.RUNTIME)
@Documented
@Target(ElementType.FIELD)
@Inherited
public @interface FieldSortedSet {
    String prefix() default "";

    String key();

    String score() default "";
}
