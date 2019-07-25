package com.mzk.vmall.pojo;

public class OrderDetail {
    private Integer od_id;
    private Order order;
    private Product product;//订单中的商品
    private Integer od_number;//订单明细中的商品数量小计
    private Double od_total;//订单明细小计

    @Override
    public String toString() {
        return "OrderDetail{" +
                "od_id=" + od_id +
                ", order=" + order +
                ", product=" + product +
                ", od_number=" + od_number +
                ", od_total=" + od_total +
                '}';
    }

    public Integer getOd_id() {
        return od_id;
    }

    public void setOd_id(Integer od_id) {
        this.od_id = od_id;
    }

    public Order getOrder() {
        return order;
    }

    public void setOrder(Order order) {
        this.order = order;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public Integer getOd_number() {
        return od_number;
    }

    public void setOd_number(Integer od_number) {
        this.od_number = od_number;
    }

    public Double getOd_total() {
        return od_total;
    }

    public void setOd_total(Double od_total) {
        this.od_total = od_total;
    }

    public OrderDetail() {
    }

    public OrderDetail(Integer od_id, Order order, Product product, Integer od_number, Double od_total) {
        this.od_id = od_id;
        this.order = order;
        this.product = product;
        this.od_number = od_number;
        this.od_total = od_total;
    }
}
