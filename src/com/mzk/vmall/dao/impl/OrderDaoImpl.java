package com.mzk.vmall.dao.impl;

import com.mzk.vmall.dao.OrderDao;
import com.mzk.vmall.dao.OrderDetailDao;
import com.mzk.vmall.pojo.Address;
import com.mzk.vmall.pojo.Order;
import com.mzk.vmall.pojo.Users;
import com.mzk.vmall.utils.DBUtils;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class OrderDaoImpl implements OrderDao {

    @Override
    public int saveOrder(Order order) throws Exception {
        int num=-1;
        String sql="insert into `order`(o_id,u_id,add_id,totalprice,remarks,o_status,o_date) values(?,?,?,?,?,'待支付',default)";
        List param =new ArrayList();
        param.add(order.getO_id());
        param.add(order.getUsers().getU_id());
        param.add(order.getAddress().getAdd_id());
        param.add(order.getTotalPrice());
        param.add(order.getRemarks());
        num= DBUtils.myExecuteUpdate(sql,param);
        return num;
    }

    @Override
    public List<Order> getOrderByU_id(Integer u_id) {
        List<Order> OList=new ArrayList<>();
        String sql="select a.add_id add_id,contact,phone,address,\n" +
                "o.o_id o_id,totalprice,remarks,o_status,o_date,a.u_id u_id,u_name\t\t\n" +
                "from `order` o left join address a on a.add_id = o.add_id\n" +
                "left join  users u on a.u_id=u.u_id\n" +
                "where u.u_id=?";
        List param=new ArrayList();
        param.add(u_id);
        ResultSet rs=DBUtils.myExecuteQuery(sql,param);
        OrderDetailDao odd=new OrderDetailDaoImpl();
        try {
            while (rs.next()){
                Order order=new Order();
                Address address=new Address();
                address.setAdd_id(rs.getInt("add_id"));
                address.setPhone(rs.getString("phone"));
                address.setContact(rs.getString("contact"));
                address.setAddress(rs.getString("address"));
                order.setAddress(address);
                order.setO_date(rs.getTimestamp("o_date"));
                order.setO_id(rs.getString("o_id"));
                order.setRemarks(rs.getString("remarks"));
                order.setO_status(rs.getString("o_status"));
                order.setTotalPrice(rs.getDouble("totalprice"));
                Users u=new Users();
                u.setU_id(rs.getInt("u_id"));
                u.setU_name(rs.getString("u_name"));
                order.setUsers(u);
                order.ODList=odd.getOrderDetailByO_id(rs.getString("o_id"));
                OList.add(order);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeAll(DBUtils.getConnection(),null,rs);
        }
        return OList;
    }

    @Override
    public int getOrderNum() {
        int num=0;
        String sql="SELECT count(*) FROM `order`";
        ResultSet rs=DBUtils.myExecuteQuery(sql,null);
        try {
            while (rs.next()){
                num=rs.getInt("count(*)");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeAll(DBUtils.getConnection(),null,rs);
        }
        return num;
    }

    @Override
    public List<Order> getAllOrder(int u_id,int page,int limit) {
        List<Order> OList=new ArrayList<>();
        String sql="select a.add_id add_id,contact,phone,address,\n" +
                "o.o_id o_id,totalprice,remarks,o_status,o_date,a.u_id u_id,u_name\t\t\n" +
                "from `order` o left join address a on a.add_id = o.add_id\n" +
                "left join  users u on a.u_id=u.u_id\n" +
                "ORDER BY u_id LIMIT ?,?";
        List param=new ArrayList();
        param.add((page-1)*limit);
        param.add(limit);
        ResultSet rs=DBUtils.myExecuteQuery(sql,param);
        OrderDetailDao odd=new OrderDetailDaoImpl();
        try {
            while (rs.next()){
                Order order=new Order();
                Address address=new Address();
                address.setAdd_id(rs.getInt("add_id"));
                address.setPhone(rs.getString("phone"));
                address.setContact(rs.getString("contact"));
                address.setAddress(rs.getString("address"));
                order.setAddress(address);
                order.setO_date(rs.getTimestamp("o_date"));
                order.setO_id(rs.getString("o_id"));
                order.setRemarks(rs.getString("remarks"));
                order.setO_status(rs.getString("o_status"));
                order.setTotalPrice(rs.getDouble("totalprice"));
                Users u=new Users();
                u.setU_id(rs.getInt("u_id"));
                u.setU_name(rs.getString("u_name"));
                order.setUsers(u);
                order.ODList=odd.getOrderDetailByO_id(rs.getString("o_id"));
                OList.add(order);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeAll(DBUtils.getConnection(),null,rs);
        }
        return OList;
    }

    @Override
    public Order getOrderByO_id(String o_id) {
        Order order=null;
        String sql="select a.add_id add_id,contact,phone,address,\n" +
                "o.o_id o_id,totalprice,remarks,o_status,o_date,a.u_id u_id,u_name\n" +
                "from `order` o left join address a on a.add_id = o.add_id\n" +
                "left join  users u on a.u_id=u.u_id\n" +
                "WHERE o_id=?";
        List param=new ArrayList();
        param.add(o_id);
        ResultSet rs=DBUtils.myExecuteQuery(sql,param);
        OrderDetailDao odd=new OrderDetailDaoImpl();
        try {
            while (rs.next()){
                order=new Order();
                Address address=new Address();
                address.setAdd_id(rs.getInt("add_id"));
                address.setPhone(rs.getString("phone"));
                address.setContact(rs.getString("contact"));
                address.setAddress(rs.getString("address"));
                order.setAddress(address);
                order.setO_date(rs.getTimestamp("o_date"));
                order.setO_id(rs.getString("o_id"));
                order.setRemarks(rs.getString("remarks"));
                order.setO_status(rs.getString("o_status"));
                order.setTotalPrice(rs.getDouble("totalprice"));
                Users u=new Users();
                u.setU_id(rs.getInt("u_id"));
                u.setU_name(rs.getString("u_name"));
                order.setUsers(u);
                order.ODList=odd.getOrderDetailByO_id(rs.getString("o_id"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeAll(DBUtils.getConnection(),null,rs);
        }
        return order;
    }

    @Override
    public int delOrderByO_id(String o_id) throws Exception {
        List l=new ArrayList();
        String sql="DELETE FROM `order` WHERE o_id=?";
        l.add(o_id);
        return DBUtils.myExecuteUpdate(sql,l);
    }
}
