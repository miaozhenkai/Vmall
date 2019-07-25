package com.mzk.vmall.controller.fore;

import com.mzk.vmall.controller.BaseServlet;
import com.mzk.vmall.pojo.Users;
import com.mzk.vmall.service.UsersServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/fore/RegisterServlet")
public class RegisterServlet extends BaseServlet {
    UsersServiceImpl usi=new UsersServiceImpl();
    public void checkUsername(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out=response.getWriter();
        String username=request.getParameter("username");
        boolean b=usi.checkU_name(username);
        if (b){
            out.println(1);
        }else {
            out.println(0);
        }
    }
    public void addUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out=response.getWriter();
        String u_name=request.getParameter("username");
        String u_password=request.getParameter("password");
        String u_email=request.getParameter("email");
        String u_phone=request.getParameter("phone");
        Users u=new Users();
        u.setU_name(u_name);
        u.setU_password(u_password);
        u.setU_email(u_email);
        u.setU_phone(u_phone);
        u.setU_status(0);
        u.setU_level(0);
        u.setU_score(0);
        System.out.println(u);
        int i=usi.addUsers(u);
        if (i>0){
            out.println("注册成功！");
        }else {
            out.println("注册失败！");
        }
    }

}
