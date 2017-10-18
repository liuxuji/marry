package com.per.annotation;

import java.lang.annotation.*;

/**
 * Created this file:
 * 每列的名称注解
 * @Author xiaobo.xiong
 * @Date 2017-10-12  10:01
 */
@Target(ElementType.FIELD)
@Retention(RetentionPolicy.RUNTIME)
@Inherited
@Documented
public @interface ExcelColumn {
    String name();
}
