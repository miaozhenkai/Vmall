package com.mzk.vmall.dao;

import com.mzk.vmall.pojo.Order;

import java.util.List;

public interface OrderDao {
    //增加订单
    public int saveOrder(Order order) throws Exception;

    //查询全部订单根据u_id
    public List<Order> getOrderByU_id(Integer u_id);

    //查询订单总数
    public int getOrderNum();

    //查询全部订单
    public List<Order> getAllOrder(int u_id,int page,int limit);

    public Order getOrderByO_id(String o_id);

    public int delOrderByO_id(String o_id) throws Exception;
}
