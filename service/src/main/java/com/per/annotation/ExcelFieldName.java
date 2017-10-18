package com.per.annotation;

import java.lang.annotation.*;

/**
 * Created this file:
 * excel 导出文件名称注解
 * @Author xiaobo.xiong
 * @Date 2017-10-12  10:00
 */
@Target(ElementType.FIELD)
@Retention(RetentionPolicy.RUNTIME)
@Inherited
@Documented
public @interface ExcelFieldName {
    String name();
}
