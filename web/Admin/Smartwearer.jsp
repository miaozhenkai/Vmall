<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title>欢迎页面-X-admin2.2</title>
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
    <style type="text/css">
        .layui-table-cell {
            height: 100px;
            line-height: 100px;
        }
    </style>
</head>
<body style="background-color: white">
<div class="layui-card-body ">
    <table class="layui-table" lay-data="{url:'${pageContext.request.contextPath}/back/BackServlet?flag=getProductListbyType_id',page:true,where:{type_id: 3},id:'test',limit:5,limits:[5,10,15],toolbar: '#toolbarDemo'  }" lay-filter="test">
        <thead>
        <tr>
            <th lay-data="{field:'p_id', width:80}">商品ID</th>
            <th lay-data="{field:'p_name', width:100, edit: 'text'}">商品名称</th>
            <th lay-data="{field:'p_content', edit: 'text',width:240}">商品内容</th>
            <th lay-data="{field:'p_price',width:100}">商品价格</th>
            <th lay-data="{field:'p_image', edit: 'text',width:100,templet:function (d) { return '<div id=img1><img src='+'${pageContext.request.contextPath}/Static/img/product/'+d.p_image+' width=90px height=90px ></div>' ;}}">商品图片</th>
            <th lay-data="{field:'p_type',templet: function(d){return d.p_type.type_name;},width:100}">商品类型</th>
            <th lay-data="{field:'p_stock',width:100}">商品库存</th>
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
    $("img1").css({ "width": "70px", "height": "70px" });
    layui.use('table',
        function() {
            var table = layui.table;
            //监听工具条
            table.on('tool(test)', function(obj){
                var data = obj.data;
                if(obj.event === 'del'){
                    layer.confirm('真的删除行么', function(index){
                        $.ajax({
                            url:'${pageContext.request.contextPath}/back/BackServlet?flag=deleteProductByP_id',
                            method:'post',
                            data:"p_id="+data.p_id,
                            success:function(res){
                                //layer.msg(res);
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
                    xadmin.open('弹出自动宽高','${pageContext.request.contextPath}/back/BackServlet?flag=getProductByP_id&p_id='+data.p_id);
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