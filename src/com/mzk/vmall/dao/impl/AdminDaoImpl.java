package com.mzk.vmall.dao.impl;

import com.mzk.vmall.dao.AdminDao;
import com.mzk.vmall.pojo.Admin;
import com.mzk.vmall.utils.DBUtils;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AdminDaoImpl implements AdminDao {
    @Override
    public Admin getAdminByUsername(String a_username) {
        Admin a = null;
        String sql = "select a_id,a_username,a_password from admin where a_username=?";
        List l = new ArrayList();
        l.add(a_username);
        ResultSet rs = DBUtils.myExecuteQuery(sql, l);
        try {
            while (rs.next()) {
                a = new Admin();
                a.setA_id(rs.getInt("a_id"));
                a.setA_username(rs.getString("a_username"));
                a.setA_password(rs.getString("a_password"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        DBUtils.closeAll(DBUtils.getConnection(), null, rs);
        return a;
    }
}
