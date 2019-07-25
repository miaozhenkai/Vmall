package com.mzk.vmall.dao.impl;

import com.mzk.vmall.dao.UsersDao;
import com.mzk.vmall.pojo.Users;
import com.mzk.vmall.utils.DBUtils;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UsersDaoImpl implements UsersDao {
    @Override
    public Users getUsersByname(String u_name) {
        Users u = null;
        String sql = "select u_id,u_name,u_password,u_email,u_phone,u_status,u_level,u_score from users where u_name=?";
        List l = new ArrayList();
        l.add(u_name);
        ResultSet rs = DBUtils.myExecuteQuery(sql, l);
        try {
            while (rs.next()) {
                u = new Users();
                u.setU_id(rs.getInt("u_id"));
                u.setU_name(rs.getString("u_name"));
                u.setU_password(rs.getString("u_password"));
                u.setU_email(rs.getString("u_email"));
                u.setU_phone(rs.getString("u_phone"));
                u.setU_status(rs.getInt("u_status"));
                u.setU_level(rs.getInt("u_level"));
                u.setU_score(rs.getInt("u_score"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        DBUtils.closeAll(DBUtils.getConnection(), null, rs);
        return u;
    }

    @Override
    public List<Users> getAllUsers() {
        Users u;
        List<Users> UList=new ArrayList<>();
        String sql="select u_id,u_name,u_password,u_email,u_phone,u_status,u_level,u_score from users";
        ResultSet rs=DBUtils.myExecuteQuery(sql,null);
        try {
            while (rs.next()){
                u=new Users();
                u.setU_id(rs.getInt("u_id"));
                u.setU_name(rs.getString("u_name"));
                u.setU_password(rs.getString("u_password"));
                u.setU_email(rs.getString("u_email"));
                u.setU_phone(rs.getString("u_phone"));
                u.setU_status(rs.getInt("u_status"));
                u.setU_level(rs.getInt("u_level"));
                u.setU_score(rs.getInt("u_score"));
                UList.add(u);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return UList;
    }
    //取n条用户数据
    @Override
    public List<Users> getUsersList(int page,int limit) {
        Users u;
        List<Users> UList=new ArrayList<>();
        String sql="select u_id,u_name,u_password,u_email,u_phone,u_status,u_level,u_score from users ORDER BY u_id LIMIT ?,?";
        List param=new ArrayList();
        param.add((page-1)*limit);
        param.add(limit);
        ResultSet rs=DBUtils.myExecuteQuery(sql,param);
        try {
            while (rs.next()){
                u=new Users();
                u.setU_id(rs.getInt("u_id"));
                u.setU_name(rs.getString("u_name"));
                u.setU_password(rs.getString("u_password"));
                u.setU_email(rs.getString("u_email"));
                u.setU_phone(rs.getString("u_phone"));
                u.setU_status(rs.getInt("u_status"));
                u.setU_level(rs.getInt("u_level"));
                u.setU_score(rs.getInt("u_score"));
                UList.add(u);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return UList;
    }

    @Override
    public int updateUsersByU_id(Users u) throws Exception {
        String sql="update users set u_name=?,u_password=?,u_email=?,u_phone=?,u_status=?,u_level=?,u_score=? where u_id=?";
        List param=new ArrayList();
        param.add(u.getU_name());
        param.add(u.getU_password());
        param.add(u.getU_email());
        param.add(u.getU_phone());
        param.add(u.getU_status());
        param.add(u.getU_level());
        param.add(u.getU_score());
        param.add(u.getU_id());
        return DBUtils.myExecuteUpdate(sql,param);
    }

    @Override
    public int deleteUsersByU_id(Integer u_id) throws Exception {
        String sql = "DELETE FROM users WHERE u_id = ?";
        List param=new ArrayList();
        param.add(u_id);
        return DBUtils.myExecuteUpdate(sql,param);
    }

    @Override
    public int addUsers(Users u) throws Exception {
        String sql="insert INTO users (u_name,u_password,u_email,u_phone,u_status,u_level,u_score) VALUES (?,?,?,?,?,?,?)";
        List param=new ArrayList();
        param.add(u.getU_name());
        param.add(u.getU_password());
        param.add(u.getU_email());
        param.add(u.getU_phone());
        param.add(u.getU_status());
        param.add(u.getU_level());
        param.add(u.getU_score());
        return DBUtils.myExecuteUpdate(sql,param);
    }
    //得到所有用户数量
    @Override
    public int getAllUsersNumber() {
        int num=0;
        String sql="select COUNT(*) from users";
        ResultSet rs=DBUtils.myExecuteQuery(sql,null);
        try {
            while (rs.next()){
                num=rs.getInt("COUNT(*)");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeAll(DBUtils.getConnection(), null, rs);
        }
        return num;
    }

    @Override
    public Users getUsersByU_id(int u_id) {
        Users u = null;
        String sql="select u_id,u_name,u_password,u_email,u_phone,u_status,u_level,u_score from users WHERE u_id=?";
        List param=new ArrayList();
        param.add(u_id);
        ResultSet rs=DBUtils.myExecuteQuery(sql,param);
        try {
            while (rs.next()){
                u=new Users();
                u.setU_id(rs.getInt("u_id"));
                u.setU_name(rs.getString("u_name"));
                u.setU_password(rs.getString("u_password"));
                u.setU_email(rs.getString("u_email"));
                u.setU_phone(rs.getString("u_phone"));
                u.setU_status(rs.getInt("u_status"));
                u.setU_level(rs.getInt("u_level"));
                u.setU_score(rs.getInt("u_score"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return u;
    }

    @Override
    public Users getUsersByU_name(String u_name) {
        Users u = null;
        String sql="select u_id,u_name,u_password,u_email,u_phone,u_status,u_level,u_score from users WHERE u_name=?";
        List param=new ArrayList();
        param.add(u_name);
        ResultSet rs=DBUtils.myExecuteQuery(sql,param);
        try {
            while (rs.next()){
                u=new Users();
                u.setU_id(rs.getInt("u_id"));
                u.setU_name(rs.getString("u_name"));
                u.setU_password(rs.getString("u_password"));
                u.setU_email(rs.getString("u_email"));
                u.setU_phone(rs.getString("u_phone"));
                u.setU_status(rs.getInt("u_status"));
                u.setU_level(rs.getInt("u_level"));
                u.setU_score(rs.getInt("u_score"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return u;
    }
}
