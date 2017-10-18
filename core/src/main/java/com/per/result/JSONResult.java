package com.per.result;

/**
 * Created this file:
 * 定义前端统一返回的数据类型
 * @Author xiaobo.xiong
 * @Date 2017-10-18  9:56
 */
public class JSONResult {

    public static final Integer SUCCESS_CODE = 0;
    public static final Integer FAIL_CODE = 9999;

    private Integer code;
    private String message;
    private Object object;

    public JSONResult(){
        this.code = SUCCESS_CODE;
    }

    public JSONResult(String message,Object object){
        this.code = SUCCESS_CODE;
        this.message = message;
        this.object = object;
    }

    public JSONResult(String message){
        this.code = SUCCESS_CODE;
        this.message = message;
    }

    public JSONResult(Object object){
        this.code = SUCCESS_CODE;
        this.object = object;
    }

    public JSONResult(Integer code,String message,Object object){
        this.code = code;
        this.message = message;
        this.object = object;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Object getObject() {
        return object;
    }

    public void setObject(Object object) {
        this.object = object;
    }
}
