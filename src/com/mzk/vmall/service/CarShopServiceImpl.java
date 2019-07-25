package com.mzk.vmall.service;

import com.mzk.vmall.dao.CarShopDao;
import com.mzk.vmall.dao.impl.CarShopDaoImpl;
import com.mzk.vmall.pojo.CarShop;
import com.mzk.vmall.utils.DBUtils;

import java.util.List;

public class CarShopServiceImpl {
    CarShopDao csd=new CarShopDaoImpl();
    public int saveCS(CarShop cs){
        int num=-1;
        //判断此用户有无买过此商品，如有，则改数量 ，没有则增加数据
        CarShop cs2=csd.getCarShopByU_idP_id(cs);
        try {
            if(cs2!=null){
                //此时说明you此商品，需要进行数量更新
                cs.setC_number(cs2.getC_number()+cs.getC_number());
                //切记：更新数据时必须有主键ID,此处也可以直接使用c对象，因为它是从数据库中读出的，所以它有主键
                cs.setC_id(cs2.getC_id());
                num=csd.updateCS(cs);

            }else{
                //购物车中无此商品，则添加商品到购物车中
                cs.setC_number(cs.getC_number());
                num=csd.saveCS(cs);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            DBUtils.closeAll(DBUtils.getConnection(),null,null);
        }
        return num;
    }

    public int updateCS(CarShop cs){
        int num=-1;
        try {
            num=csd.updateCS(cs);
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            DBUtils.closeAll(DBUtils.getConnection(),null,null);
        }
        return num;
    }

    public int delete(Integer c_id){
        int num=-1;
        try {
            num= csd.deleteCS(c_id);
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            DBUtils.closeAll(DBUtils.getConnection(),null,null);
        }
        return num;
    }

    public List<CarShop> getCarShopByUid(Integer uid){
        return csd.getCarShopByU_id(uid);
    }

    public int GetC_numberByC_id(int c_id){
        int i=csd.GetC_numberByC_id(c_id);
        return i;
    }
}
