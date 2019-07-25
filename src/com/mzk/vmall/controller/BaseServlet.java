package com.mzk.vmall.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.Method;


public class BaseServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String methodName = request.getParameter("flag");
        try {
            //取得当前正在被访问的类的类型
            Class<? extends BaseServlet> clazz = this.getClass();
            //取得指定名称的方法
            Method method = clazz.getMethod(methodName, HttpServletRequest.class, HttpServletResponse.class);
            //调用方法（执行方法）
            method.invoke(this, request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
