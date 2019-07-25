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
                /*height: 100px;*/
                /*line-height: 100px;*/
            }
        </style>
    </head>
    <body style="background-color: white">
    <div class="layui-card-body ">
        <table class="layui-table" lay-data="{url:'${pageContext.request.contextPath}/back/BackOrderServlet?flag=getOrderList',page:true,where:{type_id: 1},id:'test',limit:10,limits:[10,20,30],toolbar: '#toolbarDemo'  }" lay-filter="test">
            <thead>
            <tr>
                <th lay-data="{field:'u_name',templet: function(d){return d.users.u_name;},width:100}">用户名</th>
                <th lay-data="{field:'o_id', width:150}">订单号</th>
                <th lay-data="{field:'totalPrice', width:80}">总价</th>
                <th lay-data="{field:'remarks', edit: 'text',width:200}">备注</th>
                <th lay-data="{field:'o_status',width:100}">订单状态</th>
                <th lay-data="{field:'o_date',width:155, templet: '<div>{{ layui.laytpl.toDateString(d.o_date.time) }}</div>'}">下单时间</th>
                <th lay-data="{field:'contact',templet: function(d){return d.address.contact;}, width:100}">收货人</th>
                <th lay-data="{field:'phone',templet: function(d){return d.address.phone;}, width:120}">收货人电话</th>
                <th lay-data="{field:'address',templet: function(d){return d.address.address;}, width:200}">收货地址</th>
                <th lay-data="{fixed: 'right', width:170, align:'center', toolbar: '#barDemo'}"></th>
            </tr>
            </thead>
        </table>
        <script type="text/html" id="barDemo">
            <button class="layui-btn layui-btn-xs" lay-event="edit">查看详情</button>
            <button class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</button>
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
                    alert(data.o_date.time);
                    layer.confirm('真的删除行么', function(index){
                        $.ajax({
                            url:'${pageContext.request.contextPath}/back/BackOrderServlet?flag=delOrder',
                            method:'post',
                            data:"o_id="+data.o_id,
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
                    xadmin.open('查看详情','${pageContext.request.contextPath}/back/BackOrderServlet?flag=orderDetail&o_id='+data.o_id);
                }
            });
            //时间戳的处理
            layui.laytpl.toDateString = function(d, format){
                var date = new Date(d || new Date())
                    ,ymd = [
                    this.digit(date.getFullYear(), 4)
                    ,this.digit(date.getMonth() + 1)
                    ,this.digit(date.getDate())
                ]
                    ,hms = [
                    this.digit(date.getHours())
                    ,this.digit(date.getMinutes())
                    ,this.digit(date.getSeconds())
                ];

                format = format || 'yyyy-MM-dd HH:mm:ss';

                return format.replace(/yyyy/g, ymd[0])
                    .replace(/MM/g, ymd[1])
                    .replace(/dd/g, ymd[2])
                    .replace(/HH/g, hms[0])
                    .replace(/mm/g, hms[1])
                    .replace(/ss/g, hms[2]);
            };

            //数字前置补零
            layui.laytpl.digit = function(num, length, end){
                var str = '';
                num = String(num);
                length = length || 2;
                for(var i = num.length; i < length; i++){
                    str += '0';
                }
                return num < Math.pow(10, length) ? str + (num|0) : num;
            };


        });






    </script>
    </body>
</html>