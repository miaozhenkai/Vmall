package com.mzk.vmall.utils;

import java.util.ArrayList;
import java.util.List;

public class PageBean {
    private int currentPage = 1;//当前页码
    private int pageSize = 5;//每页显示的条数
    private int allRows;//总行数
    private int totalPage;//总页数
    private List list = new ArrayList();

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getAllRows() {
        return allRows;
    }

    public void setAllRows(int allRows) {
        this.allRows = allRows;
    }

    public int getTotalPage() {
        return allRows % pageSize == 0 ? allRows / pageSize : allRows / pageSize + 1;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public List getList() {
        return list;
    }

    public void setList(List list) {
        this.list = list;
    }

    @Override
    public String toString() {
        return "PageBean{" +
                "currentPage=" + currentPage +
                ", pageSize=" + pageSize +
                ", allRows=" + allRows +
                ", totalPage=" + totalPage +
                ", list=" + list +
                '}';
    }

    public PageBean(int currentPage, int pageSize, int allRows, int totalPage, List list) {
        this.currentPage = currentPage;
        this.pageSize = pageSize;
        this.allRows = allRows;
        this.totalPage = totalPage;
        this.list = list;
    }

    public PageBean() {
    }
}
