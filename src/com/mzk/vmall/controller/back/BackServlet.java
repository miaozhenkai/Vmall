package com.mzk.vmall.controller.back;

import com.mzk.vmall.controller.BaseServlet;
import com.mzk.vmall.pojo.Product;
import com.mzk.vmall.pojo.ProductType;
import com.mzk.vmall.service.AdminServiceImpl;
import com.mzk.vmall.service.ProductServiceImpl;
import com.mzk.vmall.service.ProductTypeServiceImpl;
import com.mzk.vmall.utils.FileNameUtil;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/back/BackServlet")
@MultipartConfig
public class BackServlet extends BaseServlet {
    ProductServiceImpl psi=new ProductServiceImpl();
    ProductTypeServiceImpl ptsi=new ProductTypeServiceImpl();
    public void adminLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        AdminServiceImpl asi = new AdminServiceImpl();
        //创建session对象
        HttpSession session = request.getSession();
        request.setCharacterEncoding("UTF-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        boolean b = asi.adminLogin(username, password);
        if (b) {
            request.getRequestDispatcher("/Admin/index.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("/Admin/AdminLogin.jsp").forward(request, response);
        }
    }
    public void getProductListbyType_id(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        List<ProductType> PTlist = (List<ProductType>) ptsi.getProductTypeAll();
        session.setAttribute("ptlist", PTlist);
        int type_id= Integer.parseInt(request.getParameter("type_id"));
        int page = Integer.parseInt(request.getParameter("page"));
        int limit = Integer.parseInt(request.getParameter("limit"));
        List<Product> productListbyType_id=psi.getProductNbyType_id(type_id,page,limit);
        int typeNum=psi.getProductTypeNumberByType_id(type_id);
        JSONObject result = new JSONObject();
        result.put("code","0");
        result.put("msg","");
        result.put("count",typeNum);
        result.put("data",productListbyType_id);
        System.out.println(result);
        PrintWriter out = response.getWriter();
        out.println(result);
        out.flush();
        out.close();
    }
    public void deleteProductByP_id(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int p_id= Integer.parseInt(request.getParameter("p_id"));
        int num=psi.delProductById(p_id);
        PrintWriter out = response.getWriter();
        if (num>0){
            out.println("删除成功");
        }else  if (num==0){
            out.println("删除失败");
        }else{
            out.println("不可删除此商品，因为有外键引用！");
        }
    }
    public void updateProductByP_id(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String p_name = request.getParameter("p_name");
        String p_content = request.getParameter("p_content");
        Double p_price = new Double(request.getParameter("p_price"));
        Integer p_stock = new Integer(request.getParameter("p_stock"));
        Integer type_id = new Integer(request.getParameter("type_id"));
        int p_id = Integer.parseInt(request.getParameter("p_id"));
        ProductType pt = new ProductType();
        pt.setType_id(type_id);
        Product p = new Product();
        p.setP_type(pt);
        p.setP_price(p_price);
        p.setP_stock(p_stock);
        p.setP_id(p_id);
        p.setP_name(p_name);
        p.setP_content(p_content);

        Part part = null;//上传图片的控件名称
        String saveFileName = null;
        String path = null;
        try {
            part = request.getPart("myfile");
            //分离出文件名11.jpg
            String realFileName = FileNameUtil.getRealFileName(part.getHeader("Content-Disposition"));
            System.out.println(realFileName);
            //拼出UUID文件名+后缀
            saveFileName = FileNameUtil.getUUIDFileName() + FileNameUtil.getFileType(realFileName);
            //找到真正本项目下的图片存储的路径
            path = request.getServletContext().getRealPath("/Static/img/product");
            System.out.println(path);
            //把做好的文件名对应的文件流存储到指定的目录下
            part.write(path + "/" + saveFileName);
            p.setP_image(saveFileName);
        } catch (Exception e) {
            e.printStackTrace();
            //没有选图片上传,则取出以前商品对象的图片赋值
            String p_image = request.getParameter("p_image");
            System.out.println("ll:" + p_image);
            p.setP_image(p_image);
        }
        System.out.println(p);
        int num = psi.updateProduct(p);
        HttpSession session = request.getSession();
       if (num > 0) {
           session.setAttribute("updatemsg","更新成功");
            response.sendRedirect(request.getContextPath() + "/back/BackServlet?flag=getProductByP_id&p_id="+p_id);
                  } else {
           session.setAttribute("updatemsg","更新失败");
           response.sendRedirect(request.getContextPath() + "/back/BackServlet?flag=getProductByP_id&p_id="+p_id);
      }
    }
    public void getProductByP_id(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int p_id= Integer.parseInt(request.getParameter("p_id"));
//        List<ProductType> PTlist = (List<ProductType>) ptsi.getProductTypeAll();
//        request.setAttribute("ptlist", PTlist);
        Product p=psi.getProducrByP_id(p_id);
        request.setAttribute("product",p);
        request.getRequestDispatcher("/Admin/UpdateProduct.jsp").forward(request, response);
    }
    public void addProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String p_name = request.getParameter("p_name");
        System.out.println(p_name+"111");
        String p_content = request.getParameter("p_content");
        Double p_price = new Double(request.getParameter("p_price"));
        Integer p_stock = new Integer(request.getParameter("p_stock"));
        Integer type_id = new Integer(request.getParameter("type_id"));
        ProductType pt = new ProductType();
        pt.setType_id(type_id);
        Product p = new Product();
        p.setP_type(pt);
        p.setP_price(p_price);
        p.setP_stock(p_stock);
        p.setP_name(p_name);
        p.setP_content(p_content);
        Part part = request.getPart("myfile");
        String imgFileName = FileNameUtil.getRealFileName(part.getHeader("Content-Disposition"));
        String imgNewFileName = FileNameUtil.getUUIDFileName() + FileNameUtil.getFileType(imgFileName);
        String path = request.getServletContext().getRealPath("/Static/img/product");
        part.write(path + "/" + imgNewFileName);
        p.setP_image(imgNewFileName);
        int num=psi.insertProduct(p);
        HttpSession session = request.getSession();
        if (num > 0) {
            session.setAttribute("addmsg","添加成功");
            response.sendRedirect(request.getContextPath() + "/Admin/AddProduct.jsp");
        } else {
            session.setAttribute("addmsg","添加失败");
            response.sendRedirect(request.getContextPath() + "/Admin/AddProduct.jsp");
        }
    }
}
