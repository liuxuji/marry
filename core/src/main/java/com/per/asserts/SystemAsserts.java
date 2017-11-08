package com.per.asserts;

import com.per.exception.BusinessException;
import com.per.exception.FunctionExceptions;
import com.per.exception.SystemException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.StringUtils;

import java.util.Collection;
import java.util.Map;

/**
 * Created this file:
 * 系统断言
 * @author xiaobo.xiong
 * @Date 2017-11-8  16:56
 */
public class SystemAsserts {
    private static Logger logger = LoggerFactory.getLogger(SystemAsserts.class);

    private SystemAsserts() {
    }

    public static void isTrue(boolean expression) {
        isTrue(expression, "表达式值必须为true");
    }

    public static void isTrue(boolean expression, String msg, Object... args) {
        if (!expression) {
            String exmsg = String.format(msg, args);
            logger.error(exmsg);
            if(StringUtils.hasLength(exmsg)){
                throw new BusinessException(FunctionExceptions.System.SYS_EXCEPTION, exmsg);
            }
            throw new SystemException(exmsg);
        }
    }

    public static void notNull(Object object) {
        notNull(object, "参数不能为null");
    }

    public static void notNull(Object object, String msg, Object... args) {
        if (object == null) {
            String exmsg = String.format(msg, args);
            logger.error(exmsg);
            if(StringUtils.hasLength(exmsg)){
                throw new BusinessException(FunctionExceptions.System.SYS_EXCEPTION, exmsg);
            }
            throw new SystemException(exmsg);
        }
    }

    public static void notEmpty(Object[] arr) {
        notEmpty(arr, "参数不能为empty");
    }

    public static void notEmpty(Object[] arr, String msg, Object... args) {
        if (arr == null || arr.length == 0) {
            String exmsg = String.format(msg, args);
            logger.error(exmsg);
            throw new SystemException(exmsg);
        }
    }
    public static void notEmpty(Collection<?> collection) {
        notEmpty(collection, "参数不能为empty");
    }

    public static void notEmpty(Collection<?> collection, String msg, Object... args) {
        if (collection == null || collection.isEmpty()) {
            String exmsg = String.format(msg, args);
            logger.error(exmsg);
            throw new SystemException(exmsg);
        }
    }

    public static void notEmpty(Map<?,?> map) {
        notEmpty(map, "参数不能为empty");
    }

    public static void notEmpty(Map<?,?> map, String msg, Object... args) {
        if (map == null || map.isEmpty()) {
            String exmsg = String.format(msg, args);
            logger.error(exmsg);
            throw new SystemException(exmsg);
        }
    }

    public static void hasText(String text, String msg, Object...args) {
        if(!StringUtils.hasText(text)){
            String exmsg = String.format(msg, args);
            logger.error(exmsg);
            throw new SystemException(exmsg);
        }
    }

    public static void hasText(String text) {
        hasText(text,"文本不能为空白");
    }
}
