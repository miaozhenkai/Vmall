package com.mzk.vmall.dao;

import com.mzk.vmall.pojo.Product;
import com.mzk.vmall.utils.PageBean;

import java.util.List;

public interface ProductDao {
    //取全部商品数据
    public List<Product> getProductAll();

    public int delProductById(Integer p_id) throws Exception;

    public int insertProduct(Product p) throws Exception;

    public Product getProductByP_id(Integer p_id);

    //更新
    public int updateProduct(Product p) throws Exception;

    //取n条手机类型的数据
    public  List<Product> getProductNbyType_id(Integer type_id,int page,int limit);
    //得到某产品种类的数量
    public int getProductTypeNumberByType_id(Integer type_id);

}
