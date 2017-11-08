package com.per.exception;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-8  17:15
 */
public interface ExceptionType {

    /**
     * 异常代码,为方便前端捕捉,推荐分段处理
     * @return
     */
    int getCode();

    /**
     * 异常描述信息
     * @return
     */
    String getDescription();

}
