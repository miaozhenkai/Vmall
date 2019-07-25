package com.mzk.vmall.service;

import com.mzk.vmall.dao.ProductTypeDao;
import com.mzk.vmall.dao.impl.ProductTypeDaoImpl;
import com.mzk.vmall.pojo.ProductType;

import java.util.List;

public class ProductTypeServiceImpl {
    ProductTypeDao ptd = new ProductTypeDaoImpl();

    public List<ProductType> getProductTypeAll() {
        return ptd.getProductTypeAll();
    }
}
