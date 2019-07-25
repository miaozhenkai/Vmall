package com.mzk.vmall.controller.fore;

import com.mysql.cj.Session;
import com.mzk.vmall.controller.BaseServlet;
import com.mzk.vmall.pojo.Address;
import com.mzk.vmall.pojo.CarShop;
import com.mzk.vmall.pojo.Order;
import com.mzk.vmall.pojo.Users;
import com.mzk.vmall.service.AddressServiceImpl;
import com.mzk.vmall.service.OrderServiceImpl;
import com.mzk.vmall.service.UsersServiceImpl;
import com.mzk.vmall.utils.FileNameUtil;
import net.sf.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/fore/OrderServlet")
public class OrderServlet extends BaseServlet {
    AddressServiceImpl asi = new AddressServiceImpl();
    OrderServiceImpl osi = new OrderServiceImpl();
    UsersServiceImpl usi=new UsersServiceImpl();
    public void createOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Users u = (Users) session.getAttribute("user");
        List<Address> AddressList = asi.getAddByU_id(u.getU_id());
        session.setAttribute("AddressList", AddressList);
        List<CarShop> CSList = (List<CarShop>) session.getAttribute("CSList");
        List<CarShop> CSList2 = new ArrayList<>();
        String[] p_ids = request.getParameterValues("p_id");
        if (p_ids != null) {
            for (String pid : p_ids) {
                for (CarShop cs : CSList) {
                    int p_id = Integer.parseInt(pid);
                    if (p_id == cs.getProduct().getP_id()) {
                        CSList2.add(cs);
                    }
                }
                System.out.println(CSList2);
                session.setAttribute("CSList2", CSList2);
            }

        }
        request.getRequestDispatcher("/Order.jsp").forward(request, response);
    }

    public void saveOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Users u = (Users) session.getAttribute("user");
        List<CarShop> CSList2 = (List<CarShop>) session.getAttribute("CSList2");
        int add_id = new Integer(request.getParameter("add_id"));
        Order order = new Order();
        String o_id = String.valueOf(Math.random()).substring(2, 10) + String.valueOf(Math.random()).substring(2, 10);
        order.setO_id(o_id);
        order.setUsers(u);
        double totalPrice = Double.parseDouble(request.getParameter("total"));
        order.setTotalPrice(totalPrice);
        System.out.println("总计：" + totalPrice);
        order.setRemarks(request.getParameter("beizhu"));
        order.setAddress(new Address(add_id));
        int num = osi.saveOrder(order, CSList2);
        System.out.println(num + "qq" + "add_id" + add_id);
        if (num > 0) {
            List<Order> OList = osi.getOrderByUid(u.getU_id());
            System.out.println(OList);
            session.setAttribute("OList", OList);
            response.sendRedirect(request.getContextPath() + "/MyOrder.jsp");
        } else {
            response.sendRedirect(request.getContextPath() + "/Order.jsp");
        }
    }

    public void showOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Users u = (Users) session.getAttribute("user");
        List<Order> OList = osi.getOrderByUid(u.getU_id());
        System.out.println(OList);
        session.setAttribute("OList", OList);
        response.sendRedirect(request.getContextPath() + "/MyOrder.jsp");
    }

    public void addAddress(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Users u = (Users) session.getAttribute("user");
        String address = request.getParameter("address");
        String contact = request.getParameter("contact");
        String phone = request.getParameter("phone");
        Address add = new Address();
        add.setAddress(address);
        add.setContact(contact);
        add.setPhone(phone);
        add.setUsers(u);
        int i = asi.saveAddress(add);
        PrintWriter out = response.getWriter();
        if (i > 0) {
            out.println(1);
        } else {
            out.println("添加失败");
        }
    }
    public void myAddress(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Users u = (Users) session.getAttribute("user");
        List<Address> AddressList = asi.getAddByU_id(u.getU_id());
        session.setAttribute("AddressList", AddressList);
        request.getRequestDispatcher("/MyAddress.jsp").forward(request, response);
    }
    public void updateAddress(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        int add_id= Integer.parseInt(request.getParameter("add_id"));
        String contact= request.getParameter("contact");
        String phone= request.getParameter("phone");
        String address= request.getParameter("address");
        Address add=new Address();
        add.setAdd_id(add_id);
        add.setContact(contact);
        add.setPhone(phone);
        add.setAddress(address);
        int num=asi.updateAddress(add);
        if (num>0){
            out.println("地址更新成功");
        }else {
            out.println("地址更新失败");
        }
    }
    public void delAddress(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int add_id= Integer.parseInt(request.getParameter("add_id"));
        int num=asi.delAddress(add_id);
        HttpSession session = request.getSession();
        Users u = (Users) session.getAttribute("user");
        List<Address> AddressList = asi.getAddByU_id(u.getU_id());
        //session.setAttribute("AddressList", AddressList);
        PrintWriter out = response.getWriter();
        if (num>0){
            out.println("删除成功");
        }else  if (num==0){
            out.println("删除失败");
        }else{
            out.println("不可删除此商品，因为有外键引用！");
        }
    }

    public void changePassword(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String password=request.getParameter("password");
        HttpSession session = request.getSession();
        Users u = (Users) session.getAttribute("user");
        u.setU_password(password);
        System.out.println(u);
        PrintWriter out = response.getWriter();
        int i=usi.updateUsers(u);
        if (i > 0) {
            out.println("更新成功");
        } else {
            out.println("更新失败");
        }
    }
}
