package com.mzk.vmall.dao;

import com.mzk.vmall.pojo.CarShop;

import java.util.List;

public interface CarShopDao {
    public int saveCS(CarShop cs) throws Exception;
    public int updateCS(CarShop cs) throws Exception;
    public int deleteCS(Integer c_id) throws Exception;
    public List<CarShop> getCarShopByU_id(Integer u_id);
    public CarShop getCarShopByU_idP_id(CarShop cs);
    public int GetC_numberByC_id(int c_id);
}
