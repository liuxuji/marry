package com.per.vo.test;

/**
 * Created this file:
 *
 * @Author xiaobo.xiong
 * @Date 2017-10-11  16:14
 */
public class TestVo {

    private String name;

    private String value;

    public TestVo(){
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public TestVo(String name, String value) {
        this.name = name;
        this.value = value;
    }

    @Override
    public String toString() {
        return "TestVo{" +
                "name='" + name + '\'' +
                ", value='" + value + '\'' +
                '}';
    }
}
