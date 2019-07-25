<%--
  Created by IntelliJ IDEA.
  User: Miaozhenkai
  Date: 2019/5/15
  Time: 19:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Admin/lib/layui/css/layui.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/Admin/js/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Admin/lib/layui/layui.all.js"></script>
    <script>
        function close(status){
            parent.location.reload();
            // var index = parent.layer.getFrameIndex(window.name); //获取窗口索引
            // parent.layer.close(index);
        }
    </script>
    <style>
        html, body {
            width: 100%;
            height: 100%;
            margin: 0;
            padding: 0;
        }
        /*上下左右居中*/
        body {
            display: flex;
            justify-content: center;
            /*align-items: center;*/
        }
    </style>
</head>
<body>
<%--<div>${users}</div>--%>
<div>
<form class="layui-form" action="" >
    <div class="layui-form-item">
        <div class="layui-input-inline">
            <input type="hidden" name="u_id" lay-verify="required" autocomplete="off" class="layui-input" value="${users.u_id}">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">用户名</label>
        <div class="layui-input-inline">
            <input type="text" name="u_name" lay-verify="required" autocomplete="off" class="layui-input" value="${users.u_name}">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">用户密码</label>
        <div class="layui-input-inline">
            <input type="text" name="u_password" lay-verify="required" autocomplete="off" class="layui-input" value="${users.u_password}">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">邮箱</label>
        <div class="layui-input-inline">
            <input type="text" name="u_email" lay-verify="required" autocomplete="off" class="layui-input" value="${users.u_email}">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">手机</label>
        <div class="layui-input-inline">
            <input type="text" name="u_phone" lay-verify="required" autocomplete="off" class="layui-input" value="${users.u_phone}">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">状态</label>
        <div class="layui-input-inline">
            <input type="text" name="u_status" lay-verify="required" autocomplete="off" class="layui-input" value="${users.u_status}">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">等级</label>
        <div class="layui-input-inline">
            <input type="text" name="u_level" lay-verify="required" autocomplete="off" class="layui-input" value="${users.u_level}">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">积分</label>
        <div class="layui-input-inline">
            <input type="text" name="u_score" lay-verify="required" autocomplete="off" class="layui-input" value="${users.u_score}">
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit lay-filter="formDemo">修改</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>
</form>
</div>
<script>
    //Demo
    layui.use('form', function(){
        var form = layui.form;
        //监听提交
        form.on('submit(formDemo)', function(data){
            $.ajax({
                url: "${pageContext.request.contextPath}/back/UsersServlet?flag=updateUsersByU_id",
                type:"post",
                data: "json1="+JSON.stringify(data.field),
                success:  function(objstr) {
                    layer.alert(objstr, {
                        closeBtn: 1    // 是否显示关闭按钮
                        ,btn: ['确定'] //按钮
                        ,icon: 6    // icon
                    });
                },
                error : function() {
                    alert("失败了");
                }
            });
            return false;
        });
    });
</script>
</body>
</html>
