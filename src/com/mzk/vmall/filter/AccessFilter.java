package com.mzk.vmall.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class AccessFilter implements Filter {
    List list=new ArrayList();
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        //初始化拒绝访问的资源名称
        list.add("/Carshop.jsp");
        list.add("/MyAddress.jsp");
        list.add("/MyOrder.jsp");
        list.add("/MyPassword.jsp");
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletResponse response=(HttpServletResponse) servletResponse;
        HttpServletRequest request=(HttpServletRequest) servletRequest;
        String uri=request.getRequestURI();
        uri=uri.replace("/Vmall_war_exploded","");
        System.out.println(uri);
        HttpSession session=request.getSession();
        String methodName=request.getParameter("flag");
        if(session.getAttribute("user")==null){
            if(list.contains(uri)||"addCarShop".equals(methodName)||"showCarShop".equals(methodName)||"showOrder".equals(methodName)||"myAddress".equals(methodName)||"changePassword".equals(methodName)){
                response.sendRedirect(request.getContextPath()+"/Login.jsp");
                return;
            }
        }
        filterChain.doFilter(servletRequest,servletResponse);
    }

    @Override
    public void destroy() {

    }
}
