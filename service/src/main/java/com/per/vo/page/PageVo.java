package com.per.vo.page;

import java.io.Serializable;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-21  10:47
 */
public class PageVo implements Serializable {

    /**
     * 默认页大小
     */
    private static final int DEFAULT_PAGE_SIZE = 20;

    private static final int DEFAULT_PAGE_NUMBER = 1;


    /**
     * 当前页大小
     */
    private int pageSize = DEFAULT_PAGE_SIZE ;

    /**
     * 当前第几页
     */
    private int pageIndex = DEFAULT_PAGE_NUMBER;

    /**
     * 搜索键
     */
    private String searchKey;

    /**
     * 搜索值
     */
    private String searchValue;

    /**
     * 排序方式 DESC ASC
     */
    private String order;

    public String getOrder() {
        return order;
    }

    public void setOrder(String order) {
        this.order = order;
    }

    public String getSearchKey() {
        return searchKey;
    }

    public void setSearchKey(String searchKey) {
        this.searchKey = searchKey;
    }

    public String getSearchValue() {
        return searchValue;
    }

    public void setSearchValue(String searchValue) {
        this.searchValue = searchValue;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getPageIndex() {
        return pageIndex;
    }

    public void setPageIndex(int pageIndex) {
        this.pageIndex = pageIndex;
    }

}
