package com.mzk.vmall.controller.back;

import com.mzk.vmall.controller.BaseServlet;
import com.mzk.vmall.pojo.Users;
import com.mzk.vmall.service.UsersServiceImpl;
import net.sf.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;


@WebServlet("/back/UsersServlet")
@MultipartConfig
public class UsersServlet extends BaseServlet {
    UsersServiceImpl usi=new UsersServiceImpl();
    public void getUsersList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int page = Integer.parseInt(request.getParameter("page"));
        int limit = Integer.parseInt(request.getParameter("limit"));
        List<Users> UList= usi.getUsersList(page,limit);
        int userAllNum=usi.getAllUsersNumber();
        JSONObject result = new JSONObject();
        result.put("code","0");
        result.put("msg","");
        result.put("count",userAllNum);
        result.put("data",UList);
        System.out.println(result);
        PrintWriter out = response.getWriter();
        out.println(result);
        out.flush();
        out.close();
    }
    public void deleteUsersByU_id(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int u_id = Integer.parseInt(request.getParameter("u_id"));
        int i=usi.delUsersByU_id(u_id);
        PrintWriter out = response.getWriter();
        if (i>0){
            out.println("删除用户成功");
        }else  if (i==0){
            out.println("删除用户失败");
        }else{
            out.println("不可删除此用户，因为有外键引用！");
        }
    }
    public void getUsersByU_id(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int u_id = Integer.parseInt(request.getParameter("u_id"));
        Users u=usi.getUsersByU_id(u_id);
        request.setAttribute("users",u);
        request.getRequestDispatcher("/Admin/UpdateUsers.jsp").forward(request, response);
    }
    public void updateUsersByU_id(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String json1=request.getParameter("json1");
        JSONObject jsonObject=JSONObject.fromObject(json1);
        Users u= (Users) JSONObject.toBean(jsonObject,Users.class);
        PrintWriter out = response.getWriter();
        int i=usi.updateUsers(u);
        if (i > 0) {
            out.println("更新成功");
            out.flush();
            out.close();
        } else {
            out.println("更新失败");
            out.flush();
            out.close();
        }
    }
}
