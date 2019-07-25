package com.mzk.vmall.controller.fore;

import com.mzk.vmall.controller.BaseServlet;
import com.mzk.vmall.pojo.MailInfo;
import com.mzk.vmall.utils.MailUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/fore/EmailServlet")
public class EmailServlet extends BaseServlet {
    public void sendPin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String email=request.getParameter("email");
        //随机生成验证码
        String Pin=String.valueOf(Math.random()).substring(2,6);
        //发邮件
        MailInfo mailInfo = new MailInfo();
        List<String> toList = new ArrayList<String>();
        toList.add(email);
        mailInfo.setToAddress(toList);
        mailInfo.setSubject("Vmall验证码");
        mailInfo.setContent("您的验证码为：<h1>"+Pin+"</h1>");
        MailUtil.sendEmail(mailInfo);

        out.println(Pin);
    }
}
