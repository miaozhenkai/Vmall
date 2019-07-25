package com.mzk.vmall.service;

import com.mzk.vmall.dao.UsersDao;
import com.mzk.vmall.dao.impl.UsersDaoImpl;
import com.mzk.vmall.pojo.Product;
import com.mzk.vmall.pojo.Users;
import com.mzk.vmall.utils.DBUtils;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class UsersServiceImpl {
    UsersDao ud = new UsersDaoImpl();
    public Map<String, Object> userLogin(String u_name, String u_password) {
        Map<String, Object> m = new HashMap<>();
        String s = null;
        Users u = ud.getUsersByname(u_name);
        if (u != null) {
            if (u.getU_password().equals(u_password)) {
                if (u.getU_status() == 0) {
                    s = "ok";
                    m.put("user",u);
                } else {
                    s = "用户被冻结，请联系管理员";
                }
            } else {
                s = "用户名或密码不正确！";
            }
        } else {
            s = "用户名或密码不正确！";
        }
        m.put("s",s);
        return m;
    }
    public List<Users> getUsersList(int page,int limit){
        return ud.getUsersList(page,limit);
    }
    //得到所有用户数量
    public int getAllUsersNumber() {
        return ud.getAllUsersNumber();
    }

    //按id删除用户
    public int delUsersByU_id(Integer u_id) {
        int i = -1;
        try {
            int num = ud.deleteUsersByU_id(u_id);
            if (num > 0) {
                i = num;
            } else if (num == 0) {
                i = 0;
            }
        } catch (Exception e) {
            e.printStackTrace();
            i = -1;
        } finally {
            DBUtils.closeAll(DBUtils.getConnection(), null, null);
        }
        return i;
    }
    //增加用户，捕获异常，关闭连接
    public int addUsers(Users u) {
        int num = -1;
        try {
            num = ud.addUsers(u);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeAll(DBUtils.getConnection(), null, null);
        }
        return num;
    }

    //更新用户
    public int updateUsers(Users u) {
        int num = -1;
        try {
            num = ud.updateUsersByU_id(u);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeAll(DBUtils.getConnection(), null, null);
        }
        return num;
    }

    public Users getUsersByU_id(int u_id){
        return ud.getUsersByU_id(u_id);
    }

    public boolean checkU_name(String u_name) {
        boolean b=true;
        Users u=ud.getUsersByU_name(u_name);
        if (u!=null){
            b=true;
        }else {
            b=false;
        }
        return b;
    }

    public Users getUsersByU_name(String u_name){
        return ud.getUsersByU_name(u_name);
    }

}