package com.mzk.vmall.dao.impl;

import com.mzk.vmall.dao.AddressDao;
import com.mzk.vmall.pojo.Address;
import com.mzk.vmall.pojo.Users;
import com.mzk.vmall.utils.DBUtils;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AddressDaoImpl implements AddressDao {
    @Override
    public Integer saveAddress(Address add) {
        int num=-1;
        String sql="INSERT INTO address(u_id,contact,phone,address) VALUES (?,?,?,?)";
        List param=new ArrayList();
        param.add(add.getUsers().getU_id());
        param.add(add.getContact());
        param.add(add.getPhone());
        param.add(add.getAddress());
        try {
            num= DBUtils.myExecuteUpdate(sql,param);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeAll(DBUtils.getConnection(),null,null);
        }

        return num;
    }

    @Override
    public List<Address> getAddByU_id(Integer u_id) {
        List<Address> AddList=new ArrayList<Address>();
        String sql="select add_id,u_id,contact,phone,address from address where u_id=?";
        List param=new ArrayList();
        param.add(u_id);
        ResultSet rs= DBUtils.myExecuteQuery(sql,param);
        try {
            while (rs.next()){
                Address add=new Address();
                add.setAdd_id(rs.getInt("add_id"));
                add.setAddress(rs.getString("address"));
                add.setContact(rs.getString("contact"));
                add.setPhone(rs.getString("phone"));
                add.setUsers(new Users(rs.getInt("u_id")));
                AddList.add(add);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeAll(DBUtils.getConnection(),null,rs);
        }
        return AddList;
    }

    @Override
    public int updateAddress(Address address) throws Exception {
        String sql = "update address set contact=?,phone=?,address=? where add_id=?";
        List l=new ArrayList();
        l.add(address.getContact());
        l.add(address.getPhone());
        l.add(address.getAddress());
        l.add(address.getAdd_id());
        return DBUtils.myExecuteUpdate(sql,l);
    }

    @Override
    public int delAddress(int add_id) throws Exception {
        String sql = "DELETE FROM address WHERE add_id = ?";
        List l=new ArrayList();
        l.add(add_id);
        return DBUtils.myExecuteUpdate(sql, l);
    }
}
