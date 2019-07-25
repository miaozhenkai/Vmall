package com.mzk.vmall.service;

import com.mzk.vmall.dao.ProductDao;
import com.mzk.vmall.dao.impl.ProductDaoImpl;
import com.mzk.vmall.pojo.Product;
import com.mzk.vmall.utils.DBUtils;
import com.mzk.vmall.utils.PageBean;

import java.util.List;

public class ProductServiceImpl {
    ProductDao pd = new ProductDaoImpl();

    //查询所有商品
    public List<Product> getProductAll() {
        return pd.getProductAll();
    }

    //按id删除商品
    public int delProductById(Integer p_id) {
        int i = -1;
        try {
            int num = pd.delProductById(p_id);
            if (num > 0) {
                i = num;
            } else if (num == 0) {
                i = 0;
            }
        } catch (Exception e) {
            e.printStackTrace();
            i = -1;
        }
        return i;
    }

    //增加商品，捕获异常，关闭连接
    public int insertProduct(Product p) {

        int num = -1;
        try {
            num = pd.insertProduct(p);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeAll(DBUtils.getConnection(), null, null);
        }
        return num;
    }

    //按id查询商品
    public Product getProducrByP_id(Integer p_id) {
        return pd.getProductByP_id(p_id);
    }

    //更新商品
    public int updateProduct(Product p) {
        int num = -1;
        try {
            num = pd.updateProduct(p);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeAll(DBUtils.getConnection(), null, null);
        }
        return num;
    }


    //取n条某产品类型的数据
    public List<Product> getProductNbyType_id(Integer type_id,int page,int limit){
        return pd.getProductNbyType_id(type_id, page, limit);
    }

    //得到某产品种类的数量
    public int getProductTypeNumberByType_id(Integer type_id) {
        return pd.getProductTypeNumberByType_id(type_id);
    }


}
