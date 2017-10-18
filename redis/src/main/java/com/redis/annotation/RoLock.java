package com.redis.annotation;

import java.lang.annotation.*;

/**
 * Created this file:
 *
 * @Author xiaobo.xiong
 * @Date 2017-10-9  15:58
 */
@Target(ElementType.TYPE)
@Retention(RetentionPolicy.RUNTIME)
@Documented
@Inherited
public @interface RoLock {

    String key();

}
