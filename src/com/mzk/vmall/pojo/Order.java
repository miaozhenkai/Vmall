package com.mzk.vmall.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Order {
    private String o_id;//订单主键
    private Users users;//下订单的用户
    private Product product;//订单中的商品
    private Address address;//订单收货地址
    private double totalPrice;//订单总计
    private String remarks;//备注
    private String o_status;//订单状态
    private Date o_date;//下单时间
    public List<OrderDetail> ODList=new ArrayList<OrderDetail>();//为了在页面上同时显示此订单下的所有订单明细，所以要包含一个订单明细的集合

    public List<OrderDetail> getODList() {
        return ODList;
    }

    public void setODList(List<OrderDetail> ODList) {
        this.ODList = ODList;
    }

    public Order() {
    }

    public Order(String o_id) {
        this.o_id = o_id;
    }

    public Order(String o_id, Users users, Product product, Address address, double totalPrice, String remarks, String o_status, Date o_date) {
        this.o_id = o_id;
        this.users = users;
        this.product = product;
        this.address = address;
        this.totalPrice = totalPrice;
        this.remarks = remarks;
        this.o_status = o_status;
        this.o_date = o_date;
    }

    public String getO_id() {
        return o_id;
    }

    public void setO_id(String o_id) {
        this.o_id = o_id;
    }

    public Users getUsers() {
        return users;
    }

    public void setUsers(Users users) {
        this.users = users;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public String getO_status() {
        return o_status;
    }

    public void setO_status(String o_status) {
        this.o_status = o_status;
    }

    public Date getO_date() {
        return o_date;
    }

    public void setO_date(Date o_date) {
        this.o_date = o_date;
    }

    @Override
    public String toString() {
        return "Order{" +
                "o_id='" + o_id + '\'' +
                ", users=" + users +
                ", product=" + product +
                ", address=" + address +
                ", totalPrice=" + totalPrice +
                ", remarks='" + remarks + '\'' +
                ", o_status='" + o_status + '\'' +
                ", o_date=" + o_date +
                ", ODList=" + ODList +
                '}';
    }
}
