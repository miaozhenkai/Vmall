package com.mzk.vmall.pojo;

public class CarShop {
    private Integer c_id;
    private Users users;
    private Product product;
    private Integer c_number;

    @Override
    public String toString() {
        return "CarShop{" +
                "c_id=" + c_id +
                ", users=" + users +
                ", product=" + product +
                ", c_number=" + c_number +
                '}';
    }

    public Integer getC_id() {
        return c_id;
    }

    public void setC_id(Integer c_id) {
        this.c_id = c_id;
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

    public Integer getC_number() {
        return c_number;
    }

    public void setC_number(Integer c_number) {
        this.c_number = c_number;
    }

    public CarShop(Integer c_id, Users users, Product product, Integer c_number) {
        this.c_id = c_id;
        this.users = users;
        this.product = product;
        this.c_number = c_number;
    }

    public CarShop() {
    }
}
