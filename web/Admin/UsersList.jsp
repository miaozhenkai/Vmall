<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title></title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="stylesheet" href="./css/font.css">
    <link rel="stylesheet" href="./css/xadmin.css">
    <script src="./lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="./js/xadmin.js"></script>
    <script type="text/javascript" src="./js/jquery.min.js"></script>
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<%--    <style type="text/css">--%>
<%--        .layui-table-cell {--%>
<%--            height: 100px;--%>
<%--            line-height: 100px;--%>
<%--        }--%>
<%--    </style>--%>
</head>
<body style="background-color: white">
<div class="layui-card-body ">
    <table class="layui-table" lay-data="{url:'${pageContext.request.contextPath}/back/UsersServlet?flag=getUsersList',page:true,id:'test',limit:10,limits:[10,15],toolbar: '#toolbarDemo'  }" lay-filter="test">
        <thead>
        <tr>
            <th lay-data="{field:'u_id', width:80}">用户ID</th>
            <th lay-data="{field:'u_name', width:100}">用户名</th>
            <th lay-data="{field:'u_password',width:100}">用户密码</th>
            <th lay-data="{field:'u_email',width:200}">邮箱</th>
            <th lay-data="{field:'u_phone',width:150}">手机</th>
            <th lay-data="{field:'u_status',width:100}">状态</th>
            <th lay-data="{field:'u_level',width:100}">等级</th>
            <th lay-data="{field:'u_score',width:100}">积分</th>
            <th lay-data="{fixed: 'right', width:150, align:'center', toolbar: '#barDemo'}"></th>
        </tr>
        </thead>
    </table>
    <script type="text/html" id="barDemo">
        <button class="layui-btn layui-btn-xs" lay-event="edit">编辑</button>
        <button class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</button>
    </script>
    <script type="text/html" id="toolbarDemo">
        <div class="layui-btn-container">
            <button class="layui-btn layui-btn-sm" lay-event="add">添加</button>
        </div>
    </script>
</div>
<script>
    layui.use('table',
        function() {
            var table = layui.table;
            //监听工具条
            table.on('tool(test)', function(obj){
                var data = obj.data;
                if(obj.event === 'del'){
                    layer.confirm('真的删除行么', function(index){
                        $.ajax({
                            url:'${pageContext.request.contextPath}/back/UsersServlet?flag=deleteUsersByU_id',
                            method:'post',
                            data:"u_id="+data.u_id,
                            success:function(res){
                                layer.alert(res, {
                                    closeBtn: 1    // 是否显示关闭按钮
                                    ,btn: ['确定'] //按钮
                                    ,icon: 6    // icon
                                    ,yes:function(){
                                        location.reload();
                                    }
                                });
                            },
                            error:function () {
                                alert("gg");
                            }
                        }) ;
                    });
                } else if(obj.event === 'edit'){
                    xadmin.open('修改用户信息'+data.u_id,'${pageContext.request.contextPath}/back/UsersServlet?flag=getUsersByU_id&u_id='+data.u_id);
                }
            });
            //监听事件
            table.on('toolbar(test)', function(obj){
                var checkStatus = table.checkStatus(obj.config.id);
                switch(obj.event){
                    case 'add':
                        xadmin.open('添加商品','${pageContext.request.contextPath}/Admin/AddProduct.jsp');
                        break;
                };
            });
        });
</script>
</body>
</html>