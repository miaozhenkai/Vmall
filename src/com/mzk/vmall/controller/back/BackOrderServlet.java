package com.mzk.vmall.controller.back;

import com.mzk.vmall.pojo.Order;
import com.mzk.vmall.service.OrderServiceImpl;
import net.sf.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/back/BackOrderServlet")
public class BackOrderServlet extends BackServlet {
    OrderServiceImpl osi = new OrderServiceImpl();

    public void getOrderList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int orderNum = osi.getOrderNum();
        int page = Integer.parseInt(request.getParameter("page"));
        int limit = Integer.parseInt(request.getParameter("limit"));
        List<Order> allOrderList = osi.getAllOrder(0, page, limit);
        JSONObject json = new JSONObject();
        json.put("code", "0");
        json.put("msg", "");
        json.put("count", orderNum);
        json.put("data", allOrderList);
        System.out.println(allOrderList.get(0).getO_date());
        PrintWriter out = response.getWriter();
        out.println(json);
    }

    public void orderDetail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String o_id = request.getParameter("o_id");
        Order order = osi.getOrderByO_id(o_id);
        session.setAttribute("order",order);
        response.sendRedirect(request.getContextPath()+"/Admin/OrderDetail.jsp");
    }
    public void delOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String o_id = request.getParameter("o_id");
        int num=osi.delOrderByO_id(o_id);
        if (num>0){
            out.println("订单删除成功");
        }else {
            out.println("订单删除失败");
        }
    }
}
