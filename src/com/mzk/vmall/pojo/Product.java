package com.mzk.vmall.pojo;

public class Product {
    private Integer p_id;
    private String p_name;
    private String p_content;
    private double p_price;
    private String p_image;
    private Integer p_stock;
    private ProductType p_type = new ProductType();

    public Product(Integer p_id) {
        this.p_id = p_id;
    }

    public Integer getP_id() {
        return p_id;
    }

    public void setP_id(Integer p_id) {
        this.p_id = p_id;
    }

    public String getP_name() {
        return p_name;
    }

    public void setP_name(String p_name) {
        this.p_name = p_name;
    }

    public String getP_content() {
        return p_content;
    }

    public void setP_content(String p_content) {
        this.p_content = p_content;
    }

    public double getP_price() {
        return p_price;
    }

    public void setP_price(double p_price) {
        this.p_price = p_price;
    }

    public String getP_image() {
        return p_image;
    }

    public void setP_image(String p_image) {
        this.p_image = p_image;
    }

    public Integer getP_stock() {
        return p_stock;
    }

    public void setP_stock(Integer p_stock) {
        this.p_stock = p_stock;
    }

    public ProductType getP_type() {
        return p_type;
    }

    public void setP_type(ProductType p_type) {
        this.p_type = p_type;
    }

    @Override
    public String toString() {
        return "Product{" +
                "p_id=" + p_id +
                ", p_name='" + p_name + '\'' +
                ", p_content='" + p_content + '\'' +
                ", p_price=" + p_price +
                ", p_image='" + p_image + '\'' +
                ", p_stock=" + p_stock +
                ", p_type=" + p_type +
                '}';
    }

    public Product() {
    }

    public Product(Integer p_id, String p_name, String p_content, double p_price, String p_image, Integer p_stock, ProductType p_type) {
        this.p_id = p_id;
        this.p_name = p_name;
        this.p_content = p_content;
        this.p_price = p_price;
        this.p_image = p_image;
        this.p_stock = p_stock;
        this.p_type = p_type;
    }
}
