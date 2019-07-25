package com.mzk.vmall.dao.impl;

import com.mzk.vmall.dao.OrderDetailDao;
import com.mzk.vmall.pojo.Order;
import com.mzk.vmall.pojo.OrderDetail;
import com.mzk.vmall.pojo.Product;
import com.mzk.vmall.utils.DBUtils;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class OrderDetailDaoImpl implements OrderDetailDao {
    @Override
    public int saveOrderDetail(OrderDetail od) throws Exception {
       int num=-1;
        String sql="insert into orderdetail(o_id,p_id,od_number,od_total) values (?,?,?,?)";
        List param=new ArrayList();
        param.add(od.getOrder().getO_id());
        param.add(od.getProduct().getP_id());
        param.add(od.getOd_number());
        param.add(od.getOd_total());
        num= DBUtils.myExecuteUpdate(sql,param);
        return num;
    }

    @Override
    public List<OrderDetail> getOrderDetailByO_id(String o_id) {
        List<OrderDetail> ODList=new ArrayList<OrderDetail>();
        String sql="select od.o_id o_id,p.p_id p_id,p_name,p_content,p_price,p_image,p.p_stock p_stock,\n" +
                "od.od_id od_id ,od.od_number od_number,od_total\n" +
                "from orderdetail od left join product p on od.p_id = p.p_id\n" +
                "left join `order` o on od.o_id = o.o_id\n" +
                "where od.o_id=?";
        List param=new ArrayList();
        param.add(o_id);
        ResultSet rs=DBUtils.myExecuteQuery(sql,param);
        try {
            while (rs.next()){
                OrderDetail od=new OrderDetail();
                od.setOd_id(rs.getInt("od_id"));
                od.setOrder(new Order(o_id));
                od.setOd_number(rs.getInt("od_number"));
                od.setOd_total(rs.getDouble("od_total"));
                Product p=new Product();
                p.setP_id(rs.getInt("p_id"));
                p.setP_price(rs.getDouble("p_price"));
                p.setP_name(rs.getString("p_name"));
                p.setP_content(rs.getString("p_content"));
                p.setP_stock(rs.getInt("p_stock"));
                p.setP_image(rs.getString("p_image"));
                od.setProduct(p);
                ODList.add(od);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
//            DBUtils.closeAll(DBUtils.getConnection(),null,rs);
        }
        return ODList;
    }

    @Override
    public int delOrderDetailByO_id(String o_id) throws Exception {
        List l=new ArrayList();
        String sql="DELETE FROM orderdetail WHERE o_id=?";
        l.add(o_id);
        return DBUtils.myExecuteUpdate(sql,l);
    }
}
