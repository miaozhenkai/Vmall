package com.mzk.vmall.dao;

import com.mzk.vmall.pojo.OrderDetail;

import java.util.List;

public interface OrderDetailDao {
    //增加订单明细
    public int saveOrderDetail(OrderDetail od)throws  Exception;

    //根据订单号查订单明细
    public List<OrderDetail> getOrderDetailByO_id(String o_id);

    //删除
    public int delOrderDetailByO_id(String o_id) throws Exception;
}
