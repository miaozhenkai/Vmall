package com.mzk.vmall.test;

import com.mzk.vmall.dao.AddressDao;
import com.mzk.vmall.dao.CarShopDao;
import com.mzk.vmall.dao.OrderDao;
import com.mzk.vmall.dao.UsersDao;
import com.mzk.vmall.dao.impl.*;
import com.mzk.vmall.pojo.*;
import com.mzk.vmall.service.OrderServiceImpl;
import com.mzk.vmall.service.ProductServiceImpl;
import com.mzk.vmall.service.ProductTypeServiceImpl;
import com.mzk.vmall.service.UsersServiceImpl;
import org.junit.Test;

import java.util.List;

public class VmallTest {
    @Test
    public void test() {
        AdminDaoImpl adi = new AdminDaoImpl();
        System.out.println(adi.getAdminByUsername("admin"));
    }

    @Test
    public void testGetProductAll() {
        ProductServiceImpl psi = new ProductServiceImpl();
        System.out.println(psi.getProductAll());
    }

    @Test
    public void testGetProductTypeAll() {
        ProductTypeServiceImpl ptsi = new ProductTypeServiceImpl();
        System.out.println(ptsi.getProductTypeAll());
    }

    @Test
    public void testGetProductByid() {
        ProductServiceImpl psi = new ProductServiceImpl();
        System.out.println(psi.getProducrByP_id(1));
    }

    @Test
    public void testUpdateProduct() {
        ProductServiceImpl psi = new ProductServiceImpl();
        Product p = new Product();
        ProductType pt = new ProductType();
        pt.setType_id(2);
        p.setP_id(2);
        p.setP_type(pt);
        p.setP_name("mzk");
        p.setP_image("111");
        p.setP_stock(20);
        p.setP_price(20);
        p.setP_content("haha");
        int i = psi.updateProduct(p);
        System.out.println(i);
    }

    @Test
    public void testGetUsersByName() {
        UsersDao ud = new UsersDaoImpl();
        System.out.println(ud.getUsersByname("mzk"));
    }

    @Test
    public void testGetCarShopByU_id(){
        CarShopDao csd=new CarShopDaoImpl();
        List<CarShop>l= csd.getCarShopByU_id(1);
        for (CarShop cs:l){
            System.out.println(cs);
        }
    }

    @Test
    public void testSaveAddress(){
        AddressDao ad=new AddressDaoImpl();
        Address add=new Address();
        add.setUsers(new Users(1));
        add.setContact("mzk3");
        add.setPhone("123321");
        add.setAddress("diqiu");
        int i=ad.saveAddress(add);
        System.out.println(i);

    }

    @Test
    public void testgetOrderByU_id(){
        OrderDao od=new OrderDaoImpl();
        System.out.println(od.getOrderByU_id(1));
    }

    @Test
    public void testgetPhoneN(){
        ProductServiceImpl psi=new ProductServiceImpl();
        List<Product> l=psi.getProductNbyType_id(1,1,10);
        for (Product p:l){
            System.out.println(p);
        }
    }

    @Test
    public void testgetUsersByU_id(){
        UsersServiceImpl usi=new UsersServiceImpl();
        Users u=usi.getUsersByU_id(1);
        System.out.println(u);
    }
    @Test
    public void testRandom(){
        String s= String.valueOf(Math.random()).substring(2,10)+String.valueOf(Math.random()).substring(2,10);
        System.out.println(s);
    }
    @Test
    public void testm(){
        double all=10;
        int limit=5;
        int e=(int) Math.ceil(all/limit);
        System.out.println(e);
        for (int i=0;i<e;i++){
            System.out.println("q");
        }
    }
    @Test
    public void testOrderNum(){
        OrderServiceImpl osi=new OrderServiceImpl();
        int i=osi.getOrderNum();
        System.out.println(i);
    }
    @Test
    public void testAllOrder(){
        OrderServiceImpl osi=new OrderServiceImpl();
        List<Order> l=osi.getAllOrder(0,1,1);
        for (Order o:l){
            System.out.println(o.getO_date().toString());
        }
    }
    @Test
    public void testgetOrderbuid(){
        OrderServiceImpl osi=new OrderServiceImpl();
       Order o=osi.getOrderByO_id("0879490158899475");
        System.out.println(o);
    }
    @Test
    public void testdelOrder(){
        OrderServiceImpl osi=new OrderServiceImpl();
        int i=osi.delOrderByO_id("8a72a89b9f74465b");
        System.out.println(i);
    }

}
