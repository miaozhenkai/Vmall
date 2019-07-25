package com.mzk.vmall.dao;

import com.mzk.vmall.pojo.Address;

import java.util.List;

public interface AddressDao {
    public Integer saveAddress(Address add);
    public List<Address> getAddByU_id(Integer u_id);
    public int updateAddress(Address address) throws Exception;
    public int delAddress(int add_id) throws Exception;
}
