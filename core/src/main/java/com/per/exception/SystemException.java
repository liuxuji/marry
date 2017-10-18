package com.per.exception;

/**
 * Created this file:
 *  所有与程序编码有关的异常统一抛出本类及其子类, 使用系统断言{@link SystemAsserts}来进行快速检查
 * @Author xiaobo.xiong
 * @Date 2017-10-13  17:29
 */
public class SystemException extends RuntimeException{

    public SystemException() {
        super();
    }

    public SystemException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }

    public SystemException(String message, Throwable cause) {
        super(message, cause);
    }

    public SystemException(String message) {
        super(message);
    }

    public SystemException(Throwable cause) {
        super(cause);
    }


}
