package com.mzk.vmall.dao.impl;

import com.mzk.vmall.dao.CarShopDao;
import com.mzk.vmall.pojo.CarShop;
import com.mzk.vmall.pojo.Product;
import com.mzk.vmall.pojo.ProductType;
import com.mzk.vmall.pojo.Users;
import com.mzk.vmall.utils.DBUtils;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CarShopDaoImpl implements CarShopDao {
    @Override
    public int saveCS(CarShop cs) throws Exception {
        int num=-1;
        String sql="INSERT INTO carshop (u_id,p_id,c_number) VALUES (?,?,?)";
        List l=new ArrayList();
        l.add(cs.getUsers().getU_id());
        l.add(cs.getProduct().getP_id());
        l.add(cs.getC_number());
        num= DBUtils.myExecuteUpdate(sql,l);
        return num;
    }

    @Override
    public int updateCS(CarShop cs) throws Exception {
        int num=-1;
        String sql="UPDATE carshop SET c_number=? WHERE c_id=?";
        List l=new ArrayList();
        l.add(cs.getC_number());
        l.add(cs.getC_id());
        num= DBUtils.myExecuteUpdate(sql,l);
        return num;
    }

    @Override
    public int deleteCS(Integer c_id) throws Exception {
        int num=-1;
        String sql="DELETE FROM carshop WHERE c_id=?";
        List l=new ArrayList();
        l.add(c_id);
        num= DBUtils.myExecuteUpdate(sql,l);
        return num;
    }

    @Override
    public List<CarShop> getCarShopByU_id(Integer u_id) {
        String sql="SELECT p.p_id p_id,p_name,p_price,p_content,p_image,p_stock,p.type_id type_id,type_name,\n" +
                "u.u_id u_id,u_name,u_password,u_email,u_phone,u_status,u_level,u_score,c_id,c_number\n" +
                "FROM product p INNER JOIN producttype pt on pt.type_id = p.type_id\n" +
                "INNER JOIN carshop c on p.p_id=c.p_id INNER JOIN users u on c.u_id=u.u_id\n" +
                "WHERE u.u_id=?";
        List param=new ArrayList();
        param.add(u_id);
        ResultSet rs= DBUtils.myExecuteQuery(sql,param);
        List<CarShop> l=new ArrayList<>();
        try {
            while (rs.next()){
                CarShop cs=new CarShop();
                Product p=new Product();
                ProductType pt=new ProductType();
                Users u=new Users();
                //取出商品对象的所有数据
                p.setP_image(rs.getString("p_image"));
                p.setP_id(rs.getInt("p_id"));
                p.setP_content(rs.getString("p_content"));
                p.setP_name(rs.getString("p_name"));
                p.setP_price(rs.getDouble("p_price"));
                p.setP_stock(rs.getInt("p_stock"));
                //取出商品类型对象的所有数据
                pt.setType_id(rs.getInt("type_id"));
                pt.setType_name(rs.getString("type_name"));
                //将商品类型对象封装在商品对象中
                p.setP_type(pt);
                //取出user对象的全部数据
                u.setU_score(rs.getInt("u_score"));
                u.setU_id(rs.getInt("u_id"));
                u.setU_level(rs.getInt("u_level"));
                u.setU_name(rs.getString("u_name"));
                u.setU_password(rs.getString("u_password"));
                u.setU_status(rs.getInt("u_status"));
                u.setU_phone(rs.getString("u_phone"));
                u.setU_email(rs.getString("u_email"));
                cs.setC_id(rs.getInt("c_id"));
                cs.setProduct(p);
                cs.setUsers(u);
                cs.setC_number(rs.getInt("c_number"));
                l.add(cs);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return l;
    }

    @Override
    public CarShop getCarShopByU_idP_id(CarShop cs) {
        CarShop cs2=null;
        String sql = "select c_id,p_id,u_id,c_number from carshop where u_id=? and p_id=?";
        List param = new ArrayList();
        param.add(cs.getUsers().getU_id());
        param.add(cs.getProduct().getP_id());
        ResultSet rs = DBUtils.myExecuteQuery(sql, param);
        try {
            if (rs.next()) {//如果有值，则说明购物车表中有此用户买过此商品的数据
                cs2=new CarShop();
                cs2.setC_number(rs.getInt("c_number"));
                cs2.setUsers(new Users(rs.getInt("u_id")));
                cs2.setProduct(new Product(rs.getInt("p_id")));
                cs2.setC_id(rs.getInt("c_id"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBUtils.closeAll(DBUtils.getConnection(), null, rs);
        }
        return cs2;
    }

    @Override
    public int GetC_numberByC_id(int c_id) {
        int i=0;
        List l=new ArrayList();
        l.add(c_id);
    String sql="select c_number from carshop where c_id=?";
        ResultSet rs=DBUtils.myExecuteQuery(sql,l);
        try {
            while (rs.next()){
                i=rs.getInt("c_number");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return i;
    }
}
