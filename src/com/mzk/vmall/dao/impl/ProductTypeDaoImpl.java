package com.mzk.vmall.dao.impl;

import com.mzk.vmall.dao.ProductTypeDao;
import com.mzk.vmall.pojo.ProductType;
import com.mzk.vmall.utils.DBUtils;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductTypeDaoImpl implements ProductTypeDao {
    @Override
    public List<ProductType> getProductTypeAll() {
        List<ProductType> l = new ArrayList<ProductType>();
        ProductType pt;
        String sql = "SELECT type_id,type_name FROM producttype";
        ResultSet rs = DBUtils.myExecuteQuery(sql, null);
        try {
            while (rs.next()) {
                pt = new ProductType();
                pt.setType_id(rs.getInt("type_id"));
                pt.setType_name(rs.getString("type_name"));
                l.add(pt);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtils.closeAll(DBUtils.getConnection(), null, null);
        }
        return l;
    }
}
