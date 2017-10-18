package com.redis.annotation;

import java.lang.annotation.*;

/**
 * Created this file:
 * 类注解  获取类存取的key
 * 如果有此注解 则当前进行更新保存的对象，需序列当前对象id到当前key的value
 * 这个注解用在ro上，表示给该ro建立一个 list的 key，key里面存储的是，相应的id集合
 * @Author xiaobo.xiong
 * @Date 2017-10-16  14:51
 */
@Documented
@Target(ElementType.TYPE)
@Inherited
@Retention(RetentionPolicy.RUNTIME)
public @interface RoSortedSet {

    String key();

    String score() default "";

}
