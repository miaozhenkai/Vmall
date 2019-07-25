package com.mzk.vmall.controller.fore;



import com.mzk.vmall.controller.BaseServlet;
import com.mzk.vmall.pojo.CarShop;
import com.mzk.vmall.pojo.Product;
import com.mzk.vmall.pojo.Users;
import com.mzk.vmall.service.CarShopServiceImpl;
import com.mzk.vmall.service.ProductServiceImpl;
import com.mzk.vmall.service.UsersServiceImpl;
import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;

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
import java.util.Map;

@WebServlet("/fore/MainServlet")
public class MainServlet extends BaseServlet {
    UsersServiceImpl usi = new UsersServiceImpl();
    ProductServiceImpl psi=new ProductServiceImpl();
    CarShopServiceImpl cssi=new CarShopServiceImpl();
    public void showMain(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        PrintWriter out = response.getWriter();
        //手机
        List allPhoneList= new ArrayList();
        for (int i=1;i<=(int)Math.ceil((double)psi.getProductTypeNumberByType_id(1)/5);i++){
            allPhoneList.add(psi.getProductNbyType_id(1,i,5));
        }
        session.setAttribute("allPhoneList",allPhoneList);
        //笔记本
        List allNotebookList= new ArrayList();
        for (int i=1;i<=(int)Math.ceil((double)psi.getProductTypeNumberByType_id(2)/5);i++){
            allNotebookList.add(psi.getProductNbyType_id(2,i,5));
        }
        session.setAttribute("allNotebookList",allNotebookList);
        //笔记本
        List allSmartWearerList= new ArrayList();
        for (int i=1;i<=(int)Math.ceil((double)psi.getProductTypeNumberByType_id(3)/5);i++){
            allSmartWearerList.add(psi.getProductNbyType_id(3,i,5));
        }
        session.setAttribute("allSmartWearerList",allSmartWearerList);


        request.getRequestDispatcher("/Main.jsp").forward(request, response);

    }
    public void showProductDetail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int p_id = Integer.parseInt(request.getParameter("p_id"));
        Product p=psi.getProducrByP_id(p_id);
        request.setAttribute("product",p);
        request.getRequestDispatcher("/ProductDetail.jsp").forward(request, response);
    }
    public void addCarShop(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession();
        Users u= (Users) session.getAttribute("user");
        Integer p_id= new Integer(request.getParameter("p_id"));
        Integer c_number= Integer.valueOf(request.getParameter("c_number"));
        System.out.println(u);
        System.out.println(p_id+"qq"+c_number);
        CarShop cs=new CarShop();
        cs.setProduct(new Product(p_id));
        cs.setUsers(u);
        cs.setC_number(c_number);
        int num=cssi.saveCS(cs);
        PrintWriter out = response.getWriter();
        if(num>0){
            out.println("添加成功");
        }else {
            out.println("添加失败");
        }
        out.flush();
        out.close();
    }
    public void showCarShop(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession();
        Users u= (Users) session.getAttribute("user");
        List<CarShop> CSList=cssi.getCarShopByUid(u.getU_id());
        session.setAttribute("CSList",CSList);
        request.getRequestDispatcher("/Carshop.jsp").forward(request,response);
    }

    public void changeCarShopNumber(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession();
        int c_number= Integer.parseInt(request.getParameter("c_number"));
        int c_id= Integer.parseInt(request.getParameter("c_id"));
        CarShop cs=new CarShop();
        cs.setC_id(c_id);
        cs.setC_number(c_number);
        int rsnum=cssi.updateCS(cs);
        Users u= (Users) session.getAttribute("user");
        List<CarShop> CSList=cssi.getCarShopByUid(u.getU_id());
        if(rsnum>0){
            session.setAttribute("CSList",CSList);
        }else {
            //更新不成功
        }
    }

    public void deleteCarShop(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession();
        PrintWriter out = response.getWriter();
        Integer c_id=new Integer(request.getParameter("c_id"));
        Users u= (Users) session.getAttribute("user");
        List<CarShop> CSList=cssi.getCarShopByUid(u.getU_id());
        int num=cssi.delete(c_id);
        if(num>0){
            //此时删除成功
            out.println("删除成功");
            session.setAttribute("CSList",CSList);

        }else{
            //此时删除失败
            out.println("删除失败");
        }
        out.flush();
        out.close();
    }
}
