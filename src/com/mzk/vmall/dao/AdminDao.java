package com.mzk.vmall.dao;

import com.mzk.vmall.pojo.Admin;

public interface AdminDao {
    public Admin getAdminByUsername(String a_username);
}
