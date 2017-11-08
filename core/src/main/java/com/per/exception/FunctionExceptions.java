package com.per.exception;

/**
 * Created this file:
 * 枚举异常常量
 * @author xiaobo.xiong
 * @Date 2017-11-8  17:17
 */
public interface FunctionExceptions {

    int SERVERERR = 600;

    enum System implements ExceptionType {
        OBJ_ISNULL						(SERVERERR + 1, "对象不能为NULL"),
        ID_NOT_EXIST					(SERVERERR + 2, "id不存在"),
        PARAMETER_ERROR					(SERVERERR + 3, "参数异常"),
        MISSING_REQUIRED_PARAMS			(SERVERERR + 4, "缺少必要参数"),
        TYPE_ISERR						(SERVERERR + 5, "类型匹配错误"),
        ILLEGAL_OPERATION				(SERVERERR + 6, "非法操作"),
        SYS_EXCEPTION					(SERVERERR + 304, "")//直接提示给客户端的文字

        ;

        private int code;
        private String description;

        System(int code, String description) {
            this.code = code;
            this.description = description;
        }

        @Override
        public int getCode() {
            return code;
        }

        @Override
        public String getDescription() {
            return description;
        }

    }

}
