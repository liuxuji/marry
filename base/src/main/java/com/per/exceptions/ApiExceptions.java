package com.per.exceptions;

import com.per.exception.ExceptionType;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-13  10:54
 */
public interface ApiExceptions {

    enum AdminEnums implements ExceptionType{
        PARAMS_NULL(100,"参数为空")
        ;
        private int code;
        private String description;

        AdminEnums(int code, String description) {
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
