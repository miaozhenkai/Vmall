<%--
  Created by IntelliJ IDEA.
  User: Miaozhenkai
  Date: 2019/4/23
  Time: 13:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title>Vmall后台登录</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale+=0.8,target-densitydpi=low-dpi"/>
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Admin/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Admin/css/login.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Admin/css/xadmin.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/Admin/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/Admin/lib/layui/layui.js" charset="utf-8"></script>
</head>
<body class="login-bg">
<div class="login layui-anim layui-anim-up">
    <div class="message">华为商城后台管理登录</div>
    <div id="darkbannerwrap"></div>

    <form action="${pageContext.request.contextPath}/back/BackServlet?flag=adminLogin" method="post" class="layui-form">
        <input name="username" placeholder="用户名" type="text" lay-verify="required" class="layui-input">
        <hr class="hr15">
        <input name="password" lay-verify="required" placeholder="密码" type="password" class="layui-input">
        <hr class="hr15">
        <input value="登录" lay-submit lay-filter="login" style="width:100%;" type="submit">
        <hr class="hr20">
    </form>
</div>
<script>
    $(function () {
        layui.use('form', function () {
            var form = layui.form;
            // layer.msg('玩命卖萌中', function(){
            //   //关闭后的操作
            //   });
            //监听提交
        });
    })
</script>

<!-- 底部结束 -->

</body>
</html>
