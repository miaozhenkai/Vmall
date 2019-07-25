package com.mzk.vmall.dao.impl;

import com.mzk.vmall.dao.ProductDao;
import com.mzk.vmall.pojo.Product;
import com.mzk.vmall.pojo.ProductType;
import com.mzk.vmall.utils.DBUtils;
import com.mzk.vmall.utils.PageBean;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDaoImpl implements ProductDao {
    //查全部商品
    @Override
    public List<Product> getProductAll() {
        List<Product> l = new ArrayList<Product>();
        Product p;
        ProductType pt;
        String sql = "select p_id,p_name,p_content,p_price,p_image,p_stock,t.type_id t_id,type_name  from product inner join producttype t on product.type_id = t.type_id";
        ResultSet rs = DBUtils.myExecuteQuery(sql, null);
        try {
            while (rs.next()) {
                p = new Product();
                p.setP_id(rs.getInt("p_id"));
                p.setP_name(rs.getString("p_name"));
                p.setP_content(rs.getString("p_content"));
                p.setP_price(rs.getDouble("p_price"));
                p.setP_image(rs.getString("p_image"));
                p.setP_stock(rs.getInt("p_stock"));
                pt = new ProductType();
                pt.setType_id(rs.getInt("t_id"));
                pt.setType_name(rs.getString("type_name"));
                p.setP_type(pt);
                l.add(p);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return l;
    }

    @Override
    public int delProductById(Integer p_id) throws Exception {
        String sql = "DELETE FROM product WHERE p_id = ?";
        List l = new ArrayList();
        l.add(p_id);
        int num = -1;
        num = DBUtils.myExecuteUpdate(sql, l);
        DBUtils.closeAll(DBUtils.getConnection(), null, null);
        return num;
    }

    //添加商品
    @Override
    public int insertProduct(Product p) throws Exception {
        String sql = "insert INTO product (p_name,p_content,p_price,p_image,p_stock,type_id) VALUES (?,?,?,?,?,?)";
        List l = new ArrayList();
        l.add(p.getP_name());
        l.add(p.getP_content());
        l.add(p.getP_price());
        l.add(p.getP_image());
        l.add(p.getP_stock());
        l.add(p.getP_type().getType_id());
        int num = DBUtils.myExecuteUpdate(sql, l);
        return num;
    }

    //按p_id查商品
    @Override
    public Product getProductByP_id(Integer p_id) {
        Product p = null;
        String sql = "select p_id,p_name,p_content,p_price,p_image,p_stock,type_id  from product where p_id=?";
        List l = new ArrayList();
        l.add(p_id);
        ResultSet rs = DBUtils.myExecuteQuery(sql, l);
        try {
            while (rs.next()) {
                p = new Product();
                ProductType pt = new ProductType();
                p.setP_name(rs.getString("p_name"));
                p.setP_id(rs.getInt("p_id"));
                p.setP_content(rs.getString("p_content"));
                p.setP_price(rs.getDouble("p_price"));
                p.setP_stock(rs.getInt("p_stock"));
                p.setP_image(rs.getString("p_image"));
                pt.setType_id(rs.getInt("type_id"));
                p.setP_type(pt);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeAll(DBUtils.getConnection(), null, null);
        }
        return p;
    }

    //更新商品
    @Override
    public int updateProduct(Product p) throws Exception {
        String sql = "update product set p_name=?,p_content=?,p_price=?,p_image=?,p_stock=?,type_id=? where p_id=?";
        List l = new ArrayList();
        l.add(p.getP_name());
        l.add(p.getP_content());
        l.add(p.getP_price());
        l.add(p.getP_image());
        l.add(p.getP_stock());
        l.add(p.getP_type().getType_id());
        l.add(p.getP_id());
        return DBUtils.myExecuteUpdate(sql, l);
    }

    //取n条某产品类型的数据
    @Override
    public List<Product> getProductNbyType_id(Integer type_id,int page,int limit) {
        List param=new ArrayList();
        Product p;
        ProductType pt;
        String sql="select p_id,p_name,p_content,p_price,p_image,p_stock,t.type_id type_id,type_name \n" +
                "from product inner join producttype t on product.type_id = t.type_id WHERE t.type_id=? ORDER BY p_price DESC LIMIT ?,? ";
        param.add(type_id);
        param.add((page-1)*limit);
        param.add(limit);
        ResultSet rs = DBUtils.myExecuteQuery(sql, param);
        List list = new ArrayList();
        try {
            while (rs.next()){
                p = new Product();
                p.setP_id(rs.getInt("p_id"));
                p.setP_name(rs.getString("p_name"));
                p.setP_content(rs.getString("p_content"));
                p.setP_price(rs.getDouble("p_price"));
                p.setP_image(rs.getString("p_image"));
                p.setP_stock(rs.getInt("p_stock"));
                pt = new ProductType();
                pt.setType_id(rs.getInt("type_id"));
                pt.setType_name(rs.getString("type_name"));
                p.setP_type(pt);
                list.add(p);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeAll(DBUtils.getConnection(), null, null);
        }
        return list;
    }

    //得到某产品种类的数量
    @Override
    public int getProductTypeNumberByType_id(Integer type_id) {
        int typeNum=0;
        String sql="SELECT count(type_id) FROM product WHERE type_id=?";
        List param=new ArrayList();
        param.add(type_id);
        ResultSet rs = DBUtils.myExecuteQuery(sql, param);
        try {
            while (rs.next()){
                typeNum=rs.getInt("count(type_id)");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeAll(DBUtils.getConnection(), null, null);
        }
        return typeNum;
    }
}
