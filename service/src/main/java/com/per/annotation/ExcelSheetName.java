package com.per.annotation;

import java.lang.annotation.*;

/**
 * Created this file:
 * 导出excel文档的 sheet注解
 * @Author xiaobo.xiong
 * @Date 2017-10-12  9:57
 */
@Target(ElementType.FIELD)
@Retention(RetentionPolicy.RUNTIME)
@Inherited
@Documented
public @interface ExcelSheetName {
    String name();
}
