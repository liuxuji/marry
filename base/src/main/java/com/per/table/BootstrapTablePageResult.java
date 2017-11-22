package com.per.table;

import java.io.Serializable;
import java.util.List;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-21  13:45
 */
public class BootstrapTablePageResult <T extends Object> implements Serializable{

    private int total;
    private List<T> rows;

    public BootstrapTablePageResult() {
    }

    public BootstrapTablePageResult(int total, List<T> rows) {
        this.total = total;
        this.rows = rows;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public List<T> getRows() {
        return rows;
    }

    public void setRows(List<T> rows) {
        this.rows = rows;
    }
}
