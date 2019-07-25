package com.mzk.vmall.service;

import com.mzk.vmall.dao.AddressDao;
import com.mzk.vmall.dao.impl.AddressDaoImpl;
import com.mzk.vmall.pojo.Address;
import com.mzk.vmall.utils.DBUtils;

import java.util.List;

public class AddressServiceImpl {
    AddressDao ad=new AddressDaoImpl();
    //根据登录用户查此用户名下的所有地址信息
    public List<Address> getAddByU_id(Integer u_id){
        return ad.getAddByU_id(u_id);
    }

    //增加地址
    public Integer saveAddress(Address address){
        return ad.saveAddress(address);
    }

    public int updateAddress(Address address){
        int num = -1;
        try {
            num = ad.updateAddress(address);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeAll(DBUtils.getConnection(), null, null);
        }
        return num;
    }

    public int delAddress(int add_id){
        int i=-1;
        try {
            int num=ad.delAddress(add_id);
            if (num > 0) {
                i = num;
            } else if (num == 0) {
                i = 0;
            }
        } catch (Exception e) {
            e.printStackTrace();
            i=-1;
        }finally {
            DBUtils.closeAll(DBUtils.getConnection(), null, null);
        }
        return i;
    }
}
