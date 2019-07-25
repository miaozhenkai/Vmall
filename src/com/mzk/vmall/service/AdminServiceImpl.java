package com.mzk.vmall.service;

import com.mzk.vmall.dao.AdminDao;
import com.mzk.vmall.dao.impl.AdminDaoImpl;
import com.mzk.vmall.pojo.Admin;

public class AdminServiceImpl {
    AdminDao ad = new AdminDaoImpl();

    public boolean adminLogin(String username, String password) {
        boolean b = false;
        Admin a = ad.getAdminByUsername(username);
        if (a != null) {
            if (a.getA_password().equals(password)) {
                b = true;
            }
        }
        return b;
    }
}
