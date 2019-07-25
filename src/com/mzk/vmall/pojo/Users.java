package com.mzk.vmall.pojo;

public class Users {
    private Integer u_id;
    private String u_name;
    private String u_password;
    private String u_email;
    private String u_phone;
    private Integer u_status;
    private Integer u_level;
    private Integer u_score;

    public Users(Integer u_id) {
        this.u_id = u_id;
    }

    @Override
    public String toString() {
        return "Users{" +
                "u_id=" + u_id +
                ", u_name='" + u_name + '\'' +
                ", u_password='" + u_password + '\'' +
                ", u_email='" + u_email + '\'' +
                ", u_phone='" + u_phone + '\'' +
                ", u_status=" + u_status +
                ", u_level=" + u_level +
                ", u_score=" + u_score +
                '}';
    }

    public Integer getU_id() {
        return u_id;
    }

    public void setU_id(Integer u_id) {
        this.u_id = u_id;
    }

    public String getU_name() {
        return u_name;
    }

    public void setU_name(String u_name) {
        this.u_name = u_name;
    }

    public String getU_password() {
        return u_password;
    }

    public void setU_password(String u_password) {
        this.u_password = u_password;
    }

    public String getU_email() {
        return u_email;
    }

    public void setU_email(String u_email) {
        this.u_email = u_email;
    }

    public String getU_phone() {
        return u_phone;
    }

    public void setU_phone(String u_phone) {
        this.u_phone = u_phone;
    }

    public Integer getU_status() {
        return u_status;
    }

    public void setU_status(Integer u_status) {
        this.u_status = u_status;
    }

    public Integer getU_level() {
        return u_level;
    }

    public void setU_level(Integer u_level) {
        this.u_level = u_level;
    }

    public Integer getU_score() {
        return u_score;
    }

    public void setU_score(Integer u_score) {
        this.u_score = u_score;
    }

    public Users() {
    }

    public Users(Integer u_id, String u_name, String u_password, String u_email, String u_phone, Integer u_status, Integer u_level, Integer u_score) {
        this.u_id = u_id;
        this.u_name = u_name;
        this.u_password = u_password;
        this.u_email = u_email;
        this.u_phone = u_phone;
        this.u_status = u_status;
        this.u_level = u_level;
        this.u_score = u_score;
    }
}
