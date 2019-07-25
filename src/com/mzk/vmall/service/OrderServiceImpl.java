package com.mzk.vmall.service;

import com.mzk.vmall.dao.CarShopDao;
import com.mzk.vmall.dao.OrderDao;
import com.mzk.vmall.dao.OrderDetailDao;
import com.mzk.vmall.dao.ProductDao;
import com.mzk.vmall.dao.impl.CarShopDaoImpl;
import com.mzk.vmall.dao.impl.OrderDaoImpl;
import com.mzk.vmall.dao.impl.OrderDetailDaoImpl;
import com.mzk.vmall.dao.impl.ProductDaoImpl;
import com.mzk.vmall.pojo.CarShop;
import com.mzk.vmall.pojo.Order;
import com.mzk.vmall.pojo.OrderDetail;
import com.mzk.vmall.pojo.Product;
import com.mzk.vmall.utils.DBUtils;

import java.util.List;

public class OrderServiceImpl {
    OrderDao odao=new OrderDaoImpl();
    OrderDetailDao oddao=new OrderDetailDaoImpl();
    ProductDao pdao=new ProductDaoImpl();
    CarShopDao csdao=new CarShopDaoImpl();
    public int saveOrder(Order order, List<CarShop> CSList){
        int num=-1;
        //涉及到四张表，所以保证数据有效，必须包裹在事务中
        try {
            DBUtils.startTransaction();
            //1.增加订单
            odao.saveOrder(order);
                //2.增加订单明细,需要从被选中的要结算的商品ID集合中取商品对象
                for (CarShop cs:CSList){
                    int p_id= cs.getProduct().getP_id();
                        //说明被选中的商品在购物车中找到
                        if (cs.getProduct().getP_stock()<cs.getC_number()){//判断库存够不够，如果不够，则直接抛异常结束操作
                            throw new Exception();
                        }
                        //构建订单明细的对象
                        OrderDetail od=new OrderDetail();
                        od.setProduct(cs.getProduct());
                        od.setOd_total(cs.getProduct().getP_price()*cs.getC_number());
                        od.setOd_number(cs.getC_number());
                        od.setOrder(order);
                        //订单明细进库
                        oddao.saveOrderDetail(od);
                        //4.更新库存
                        Product p=cs.getProduct();
                        p.setP_stock(p.getP_stock()- cs.getC_number());
                        pdao.updateProduct(p);
                        //5.删除购物车中已结算商品
                        csdao.deleteCS(cs.getC_id());
                }
            num=1;
            DBUtils.commit();
        } catch (Exception e) {
            e.printStackTrace();
            DBUtils.rollback();
        } finally {
            DBUtils.release();
            DBUtils.endTransaction();
            DBUtils.closeAll(DBUtils.getConnection(),null,null);
        }
        return num;
    }
    //查询全部订单
    public List<Order> getOrderByUid(Integer u_id){
        return odao.getOrderByU_id(u_id);
    }

    public int getOrderNum(){
        return odao.getOrderNum();
    }

    public List<Order> getAllOrder(int u_id,int page,int limit){
        return odao.getAllOrder(u_id,page,limit);
    }

    public Order getOrderByO_id(String o_id){
        Order o=odao.getOrderByO_id(o_id);
        return o;
    }

    public int delOrderByO_id(String o_id){
        int num=-1;
        try {
            int n=oddao.delOrderDetailByO_id(o_id);
            int m=odao.delOrderByO_id(o_id);
            if (m>0&&n>0){
                num=1;
            }else {
                num=-1;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return num;
    }
}
