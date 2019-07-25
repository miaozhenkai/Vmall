package com.mzk.vmall.pojo;

public class Address {
    private Integer add_id;
    private Users users;//当前登录用户
    private String contact;//联系人
    private String phone;//电话号
    private String address;//地址

    public Address() {
    }

    public Address(Integer add_id, Users users, String contact, String phone, String address) {
        this.add_id = add_id;
        this.users = users;
        this.contact = contact;
        this.phone = phone;
        this.address = address;
    }

    public Address(Integer add_id) {
        this.add_id = add_id;
    }

    public Address(Users users, String contact, String phone, String address) {
        this.users = users;
        this.contact = contact;
        this.phone = phone;
        this.address = address;
    }

    public Integer getAdd_id() {
        return add_id;
    }

    public void setAdd_id(Integer add_id) {
        this.add_id = add_id;
    }

    public Users getUsers() {
        return users;
    }

    public void setUsers(Users users) {
        this.users = users;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "Address{" +
                "add_id=" + add_id +
                ", users=" + users +
                ", contact='" + contact + '\'' +
                ", phone='" + phone + '\'' +
                ", address='" + address + '\'' +
                '}';
    }
}
