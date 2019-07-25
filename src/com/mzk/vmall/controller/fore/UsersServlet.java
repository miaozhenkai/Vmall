package com.mzk.vmall.controller.fore;

import com.mysql.cj.xdevapi.JsonArray;
import com.mzk.vmall.controller.BaseServlet;
import com.mzk.vmall.pojo.MailInfo;
import com.mzk.vmall.pojo.Users;
import com.mzk.vmall.service.UsersServiceImpl;
import com.mzk.vmall.utils.MailUtil;
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
import java.util.Map;

@WebServlet("/fore/UsersServlet")
public class UsersServlet extends BaseServlet {
    UsersServiceImpl usi = new UsersServiceImpl();
    public void Login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        PrintWriter out = response.getWriter();
        String u_name = request.getParameter("username");
        String u_password = request.getParameter("password");
        Map<String, Object> m = usi.userLogin(u_name, u_password);
        String msg = (String) m.get("s");
        Users u = (Users) m.get("user");
        if(msg.equals("ok")){
            session.setAttribute("user",u);
        }
        JSONObject jsonObject = JSONObject.fromObject(m);
        out.println(jsonObject);
        out.flush();
        out.close();
        System.out.println(u_name + u_password);
        System.out.println(jsonObject);
    }
    public void Logout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.invalidate();
        response.sendRedirect(request.getContextPath()+"/index.jsp");
    }
    public void retrievePassword (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String u_name = request.getParameter("username");
        String email = request.getParameter("email");
        Users u=usi.getUsersByU_name(u_name);
        if(u!=null){
            if (u.getU_email().equals(email)){
                //随机生成验证码
                String Pin=String.valueOf(Math.random()).substring(2,6);
                //发邮件
                MailInfo mailInfo = new MailInfo();
                List<String> toList = new ArrayList<String>();
                toList.add(email);
                mailInfo.setToAddress(toList);
                mailInfo.setSubject("Vmall找回密码");
                mailInfo.setContent("您正在找回密码，验证码为：<h1>"+Pin+"</h1>");
                MailUtil.sendEmail(mailInfo);
                JSONObject json = new JSONObject();
                json.put("Pin", Pin);
                json.put("password", u.getU_password());
                System.out.println(json.toString());
                out.println(json);
            }else {
                out.println(1);
            }
        }else {
            out.println(0);
        }
    }

}
