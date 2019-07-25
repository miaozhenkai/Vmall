<%--
  Created by IntelliJ IDEA.
  User: Miaozhenkai
  Date: 2019/5/16
  Time: 20:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Static/css/meiguostyle.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Static/css_mzk/bootstrap.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Static/css_mzk/1.css"/>
    <script src="${pageContext.request.contextPath}/Static/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/Static/js/slider.js"></script>
    <script src="${pageContext.request.contextPath}/Static/js/main.js"></script>
    <script src="${pageContext.request.contextPath}/Static/js/show_img.js"></script>
    <script src="${pageContext.request.contextPath}/Static/js/layer.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Static/js_mzk/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Static/js_mzk/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Static/js_mzk/menu.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Static/js_mzk/CeLan.js"></script>

    <style>
        #nr img {
            display: inline;
            max-width: 100%;
            vertical-align: top;
        }
    </style>
</head>
<body>
<!--最上-->
<div class="zuishang">
    <!--最上左-->
    <div id="zsleft">
        <a href="${pageContext.request.contextPath}/index.jsp" class="abiance">首页&nbsp;</a>
        <span style="margin-top: -1px;color:gray; position: absolute;width: 2px;">|</span>
        <a href="" class="abiance">&nbsp;&nbsp;&nbsp;华为官网&nbsp;</a>
        <span style="margin-top: -1px;color:gray; position: absolute;width: 2px;">|</span>
        <a href="" class="abiance">&nbsp;&nbsp;&nbsp;荣耀官网&nbsp;</a>
        <span style="margin-top: -1px;color:gray; position: absolute;width: 2px;">|</span>
        <a href="" class="abiance">&nbsp;&nbsp;&nbsp;花粉俱乐部&nbsp;</a>
        <span style="margin-top: -1px;color:gray; position: absolute;width: 2px;">|</span>
        <a href="" class="abiance">&nbsp;&nbsp;&nbsp;V码(优购码)&nbsp;</a>
        <span style="margin-top: -1px;color:gray; position: absolute;width: 2px;">|</span>
        <a href="" class="abiance">&nbsp;&nbsp;&nbsp;企业购&nbsp;</a>
        <span style="margin-top: -1px;color:gray; position: absolute;width: 2px;">|</span>
        <a href="" class="abiance">&nbsp;&nbsp;&nbsp;Select Region&nbsp;</a>
        <div class="fengexian1" style="margin-top: -36px;">|</div>
        <!--更多精彩-->
        <div id="gengduojingcai" align="center">
            <a href="">更多精彩&nbsp;</a> <img src="${pageContext.request.contextPath}/Static/img/ZuiShang/xiaojiantou1.png"
                                           class="xjtblack"/>
            <img src="${pageContext.request.contextPath}/Static/img/ZuiShang/xiaojiantou2.png" class="xjtred"
                 style="margin-top: -1px;"/>
        </div>
        <!--更多精彩隐藏-->
        <div id="gengduojingcaishow" align="center">
            <a href="" class="abiance">EMUI</a><br/>
            <a href="" class="abiance">应用市场</a><br/>
            <a href="" class="abiance">华为终端云空间</a><br/>
            <a href="" class="abiance">开发者联盟</a>
        </div>
    </div>
    <!--最上右-->
    <div id="dengluzhuce">
        <c:if test="${empty user }">
            <a href="${pageContext.request.contextPath}/Login.jsp" class="abiance">请登录</a>&nbsp;
            <a href="${pageContext.request.contextPath}/Register.jsp" class="abiance">注册</a>
        </c:if>
        <c:if test="${not empty user }">
            <a href="" class="abiance">${user.u_name}</a>&nbsp;&nbsp;
            <a href="${pageContext.request.contextPath}/fore/UsersServlet?flag=Logout" class="abiance">注销</a>
        </c:if>
        <div class="fengexian1">|</div>
    </div>
    <div id="wodedingdan" align="center">
        <a href="${pageContext.request.contextPath}/fore/OrderServlet?flag=showOrder" class="abiance">我的订单</a>
    </div>
    <div id="fengexian2">|</div>
    <div id="kehufuwu" align="center">
        <a href="">客户服务</a> <img src="${pageContext.request.contextPath}/Static/img/ZuiShang/xiaojiantou1.png"
                                 class="xjtblack"/>
        <img src="${pageContext.request.contextPath}/Static/img/ZuiShang/xiaojiantou2.png" class="xjtred"
             style="margin-top: -1px;"/>
    </div>
    <div id="fengexian3">|</div>
    <div id="wangzhandaohang" align="center">
        <a href="">网站导航&nbsp;</a><img src="${pageContext.request.contextPath}/Static/img/ZuiShang/xiaojiantou1.png"
                                      class="xjtblack"/>
        <img src="${pageContext.request.contextPath}/Static/img/ZuiShang/xiaojiantou2.png" class="xjtred"
             style="margin-top: -1px;"/>
    </div>
    <div id="fengexian4">|</div>
    <div id="shoujiban" align="center">
        <a href="">手机版&nbsp;</a><img src="${pageContext.request.contextPath}/Static/img/ZuiShang/xiaojiantou1.png"
                                     class="xjtblack"/>
        <img src="${pageContext.request.contextPath}/Static/img/ZuiShang/xiaojiantou2.png" class="xjtred"
             style="margin-top: -1px;"/>
    </div>
    <div id="gouwuche">
        <img src="${pageContext.request.contextPath}/Static/img/ZuiShang/gouwuche.png"
             style="margin-top: 10px;margin-left: 10px; float: left"/>&nbsp;&nbsp;
        <a href="${pageContext.request.contextPath}/fore/MainServlet?flag=showCarShop">购物车(0)</a>
    </div>

    <!--客户服务隐藏-->
    <div id="kehufuwushow" align="center">
        <a href="" class="abiance">服务中心</a><br/>
        <a href="" class="abiance">联系客服</a>
    </div>
    <!--网站导航隐藏-->
    <div id="wangzhandaohangshow">
        <div id="shangchengshouye">
            <a href="${pageContext.request.contextPath}/Main.jsp"><img
                    src="${pageContext.request.contextPath}/Static/img/ZuiShang/shangchengshouye.png"/>
                <p style="margin-top: -5px;">商城首页</p>
            </a>
        </div>
        <table style="float: left; margin-top: 12px;">
            <tr>
                <td style="color: #333;font-size: 16px;font-weight: 700;" width="80px">频道</td>
                <td width="100px"></td>
                <td style="color: #333;font-size: 16px;font-weight: 700;" width="80px">产品</td>
                <td width="100px"></td>
                <td style="color: #333;font-size: 16px;font-weight: 700;" width="80px">增值服务</td>
                <td width="100px"></td>
                <td style="color: #333;font-size: 16px;font-weight: 700;" width="80px ">会员</td>
            </tr>

        </table>
        <table style="margin-top: -5px;float: left;">
            <tr>
                <td width="80px">
                    <a href="">华为专区</a>
                </td>
                <td width="100px">
                    <a href="">荣耀专区</a>
                </td>
                <td width="80px">
                    <a href="">手机</a>
                </td>
                <td width="100px">
                    <a href="">智能家居</a>
                </td>
                <td width="80px">
                    <a href="">以旧换新</a>
                </td>
                <td width="100px">
                    <a href="">礼品包装</a>
                </td>
                <td width="80px">
                    <a href="">会员频道</a>
                </td>
            </tr>
        </table>
        <table style="margin-top: -12px;float: left;">
            <tr>
                <td width="80px">
                    <a href="">企业购</a>
                </td>
                <td width="100px"></td>
                <td width="80px">
                    <a href="">平板&笔记本</a>
                </td>
                <td width="100px">
                    <a href="">通用配件</a>
                </td>
                <td width="80px">
                    <a href="">补购保障</a>
                </td>
                <td width="100px">
                    <a href="">一口价换电池</a>
                </td>
                <td width="80px"></td>
            </tr>
        </table>
        <table style="margin-top: -12px;float: left;">
            <tr>
                <td width="80px"></td>
                <td width="100px"></td>
                <td width="80px">
                    <a href="">智能穿戴</a>
                </td>
                <td width="100px">
                    <a href="">专属配件</a>
                </td>
                <td width="80px">
                </td>
                <td width="100px">
                </td>
                <td width="80px"></td>
            </tr>
        </table>
    </div>
    <!--手机版隐藏-->
    <div id="shoujibanshow">
        <div class="erweima" style="border-bottom: 1px solid grey;">
            <img src="${pageContext.request.contextPath}/Static/img/ZuiShang/erweima1.png"
                 style="margin-top: 20px;float: left;margin-left: 25px;"/>
            <p style="color: #3a3a3a;font-size: 14px;font-weight: 700;float:left;margin-left: 10px;margin-top: 9px;">
                华为商城APP</p>
            <p style="color: #CB242B;font-size: 12px;float:left;margin-left: 10px;margin-top: -15px;">新人专享好礼</p>
            <p style="color:#CB242B;font-size: 12px;float:left;margin-left: 10px;margin-top:-20px;">最高5000积分</p>
            <img src="${pageContext.request.contextPath}/Static/img/ZuiShang/android_wechat.png"
                 style="margin-left: 10px; margin-top: -5px;"/>
        </div>
        <div class="erweima" style="border-bottom: 1px solid grey;">
            <img src="${pageContext.request.contextPath}/Static/img/ZuiShang/erweima2.jpg" width="90px" height="90px"
                 style="margin-top: 20px;float: left;margin-left: 25px;"/>
            <p style="color: #3a3a3a;font-size: 14px;font-weight: 700;float:left;margin-left: 10px;margin-top: 9px;">
                华为商城公众号</p>
            <p style="color: #777;font-size: 12px;float:left;margin-left: 10px;margin-top: -15px;">微信扫一扫</p>
            <img src="${pageContext.request.contextPath}/Static/img/ZuiShang/wechat.png"
                 style="margin-left: -97px; margin-top:60px;"/>
        </div>
        <div class="erweima">
            <img src="${pageContext.request.contextPath}/Static/img/ZuiShang/erweima3.jpg" width="90px" height="90px"
                 style="margin-top: 20px;float: left;margin-left: 25px;"/>
            <p style="color: #3a3a3a;font-size: 14px;font-weight: 700;float:left;margin-left: 10px;margin-top: 9px;">
                华为商城公众号</p>
            <img src="${pageContext.request.contextPath}/Static/img/ZuiShang/wechat.png"
                 style="margin-left: -97px; margin-top:45px;"/>
        </div>
    </div>
    <!--购物车隐藏-->
    <div id="gouwucheshow" align="center">
        <img src="${pageContext.request.contextPath}/Static/img/ZuiShang/gouwuchebig.png" style="margin-top: 50px;"/>
        <p style="color: #a4a4a4;font-size: 14px;margin-top: -15px;">您的购物车是空的，赶紧选购吧~</p>
    </div>
</div>
<!--logo处-->
<div class="logotiao" style="box-shadow: 0 3px 6px rgba(0,0,0,0.04);width: 1899px;">
    <div class="logo" style="margin-left: 350px">
        <a href="${pageContext.request.contextPath}/index.jsp"><img
                src="${pageContext.request.contextPath}/Static/img/logo.png" height="36px"/></a>
    </div>
    <div class="zhuanqu">
        <ul>
            <li>
                <a href=""><img src="${pageContext.request.contextPath}/Static/img/huaweizhuanqu.png" height="24px"></a>
            </li>
            <li>
                <a href=""><img src="${pageContext.request.contextPath}/Static/img/rongyaozhuanqu.png"
                                height="24px"></a>
            </li>
            <li style="font-size: 16px;">
                <a href="">Mate 20系列</a>
            </li>
            <li style="font-size: 16px;">
                <a href="">荣耀10</a>
            </li>
            <li style="font-size: 16px;">
                <a href="">华为P30</a>
            </li>
            <li style="font-size: 16px;">
                <a href="">荣耀V20</a>
            </li>
        </ul>
    </div>
    <div class="search-bar-form" style="position: absolute;margin-left: 1240px;">
        <form>
            <input type="text" class="text" maxlength="200" id="search-kw" placeholder="搜索"/>
            <a href=""><img style="margin-top: 7px;margin-left: 5px;"
                            src="${pageContext.request.contextPath}/Static/img/sousuo.png"/></a>
        </form>
    </div>
</div>


<div class="center_container w_1100 clear">
    <div class="center_container_nav fl">
        <div class="tit">个人中心</div>
        <div class="li">
            <div class="t">
                <a href="javascript:;">我的订单</a>
            </div>
            <div class="c">
                <a href="">所有订单</a>
                <a href="">代购订单</a>
                <a href="">自营订单</a>
                <a href="">商家订单</a>
                <a href="">积分订单</a>
            </div>
        </div>
        <div class="li">
            <div class="t">
                <a href="javascript:;">我的资产</a>
            </div>
            <div class="c">
                <a href="">我的余额</a>
                <a href="">我的积分</a>
                <a href="">积分兑换</a>
                <a href="">优惠券</a>
            </div>
        </div>
        <div class="li">
            <div class="t">
                <a href="javascript:;">售后服务</a>
            </div>
            <div class="c">
                <a href="">售后订单</a>
            </div>
        </div>
        <div class="li">
            <div class="t">
                <a href="javascript:;">我的账户</a>
            </div>
            <div class="c">
                <a href="">账号设置</a>
                <a href="${pageContext.request.contextPath}/fore/OrderServlet?flag=myAddress">收货地址</a>
                <a href="${pageContext.request.contextPath}/MyPassword.jsp">密码管理</a>
            </div>
        </div>
    </div>


    <div class="center_container_content fr">
        <div class="center_tit">我的地址</div>
        <div class="center5_second">
            <div class="tip"><strong>已保存收货地址</strong></div>
            <div class="center5_table">
                <table id="addrtable">
                    <tbody style="font-size: 12px;">
                    <tr>
                        <th>收件人</th>
                        <th>详细地址</th>
                        <th>联系电话</th>
                        <th>操作</th>
                    </tr>
                    <c:forEach items="${AddressList}" var="addressList">
                        <tr id="add">
                            <td>${addressList.contact}</td>
                            <td style="width:395px;">${addressList.address}</td>
                            <td>${addressList.phone}</td>
                            <td>
                                <a class="bian" id="edit"
                                   href="javascript:edit('${addressList.add_id}','${addressList.contact}','${addressList.phone}','${addressList.address}');">编辑</a>
                                <a class="bian" id="del" href="javascript:del(${addressList.add_id});">删除</a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        <!--center5_second end-->
        <!--center5_first start-->
        <div class="center5_first">
            <div class="tip">新增收货地址</div>
            <ul class="enter5_first_ul">
                <form id="form">
                    <li class="clear">
                        <div class="left"><span class="color_c01b21">*</span> 详细地址：</div>
                        <div class="right">
                            <div class="text_w"><textarea rows="3" id="dz" placeholder="具体到街道门牌楼层和房间号等"></textarea>
                            </div>
                        </div>
                    </li>
                    <li class="clear">
                        <div class="left"><span class="color_c01b21">*</span> 收货人姓名：</div>
                        <div class="right">
                            <div class="text"><input type="text" name="xm" value="" placeholder="姓名"></div>
                        </div>
                    </li>
                    <li class="clear">
                        <div class="left"><span class="color_c01b21">*</span> 手机号码：</div>
                        <div class="right">
                            <div class="text"><input type="number" name="dh" value="" placeholder="电话号码请加区号"></div>
                        </div>
                    </li>
                    <li>
                        <div class="button"><input type="button" class="but" value="提交保存" onclick="tijiao();"></div>
                        <input type="hidden" name="add_id" value="">
                    </li>
                </form>
            </ul>
        </div>
    </div>
    <script type="text/javascript">
        function edit(add_id, contact, phone, address) {
            $("input[name='add_id']").val(add_id);
            $("input[name='xm']").val(contact);
            $("input[name='dh']").val(phone);
            $("#dz").html(address);
        }

        function del(add_id) {
            $.ajax({
                url: "${pageContext.request.contextPath}/fore/OrderServlet?flag=delAddress",
                type: "post",
                data: {add_id: add_id},
                success: function (objstr) {
                    alert(objstr);
                    $("#addrtable").load(location.href + " #addrtable");
                },
                error: function () {
                    alert("ajax失败了");
                }
            });
        }
        function updateAddress() {
            var add_id=$("input[name='add_id']").val();
            var contact=$("input[name='xm']").val();
            var phone=$("input[name='dh']").val();
            var address=$("#dz").val();
            $.ajax({
                url: "${pageContext.request.contextPath}/fore/OrderServlet?flag=updateAddress",
                type: "post",
                data: {add_id: add_id,contact:contact,phone:phone,address:address},
                success: function (objstr) {
                    alert(objstr);
                    $("#addrtable").load(location.href + " #addrtable");
                    $("#form").load(location.href + " #form");
                },
                error: function () {
                    alert("ajax失败了");
                }
            });
        }
        function addAddress() {
            var contact=$("input[name='xm']").val();
            var phone=$("input[name='dh']").val();
            var address=$("#dz").val();
            $.ajax({
                url: "${pageContext.request.contextPath}/fore/OrderServlet?flag=addAddress",
                type: "post",
                data: {contact:contact,phone:phone,address:address},
                success: function (objstr) {
                    if (objstr==1) {
                        alert("添加地址成功");
                        $("#addrtable").load(location.href + " #addrtable");
                        $("#form").load(location.href + " #form");
                    }else {
                        alert(objstr);
                    }
                },
                error: function () {
                    alert("ajax失败了");
                }
            });
        }

        function tijiao() {
            var add_id=$("input[name='add_id']").val();
            if (add_id==""){
                 addAddress();
            } else {
                updateAddress();
            }
        }
    </script>


    <!--list_other start-->
    <div id="zuixia" style="position: absolute;margin-top: 800px;margin-left: -400px;">
        <div id="zx1">
            <ul>
                <li style="margin-left: -40px;margin-top: 20px;">
                    <img src="${pageContext.request.contextPath}/Static/img/zuixia/1.png" width="40px" height="40px"
                         style="float:left;">
                    <p style="margin-top:10px; margin-left: 10px;float: left;font-size: 18px;color: #3a3a3a;">百强企业
                        品质保证</p>
                </li>
                <li style="margin-left: 130px;margin-top: 20px;">
                    <img src="${pageContext.request.contextPath}/Static/img/zuixia/2.png" width="40px" height="40px"
                         style="float:left;">
                    <p style="margin-top:10px; margin-left: 10px;float: left;font-size: 18px;color: #3a3a3a;">7天退货
                        15天换货</p>
                </li>
                <li style="margin-left: 130px;margin-top: 20px;">
                    <img src="${pageContext.request.contextPath}/Static/img/zuixia/3.png" width="40px" height="40px"
                         style="float:left;">
                    <p style="margin-top:10px; margin-left: 10px;float: left;font-size: 18px;color: #3a3a3a;">
                        48元起免运费</p>
                </li>
                <li style="margin-left: 130px;margin-top: 20px;">
                    <img src="${pageContext.request.contextPath}/Static/img/zuixia/4.png" width="40px" height="40px"
                         style="float:left;">
                    <p style="margin-top:10px; margin-left: 10px;float: left;font-size: 18px;color: #3a3a3a;">1000家维修网点
                        全国联保</p>
                </li>
            </ul>
        </div>
        <div id="zx2">
            <table style="float: left;">
                <tr height="30px">
                    <td style="color: #333;font-size: 14px;" width="150px">购物相关</td>
                    <td style="color: #333;font-size: 14px;" width="150px">保修与退换货</td>
                    <td style="color: #333;font-size: 14px;" width="150px">维修与技术支持</td>
                    <td style="color: #333;font-size: 14px;" width="150px">特色服务</td>
                    <td style="color: #333;font-size: 14px;" width="150px">关于我们</td>
                    <td style="color: #333;font-size: 14px;" width="150px">友情链接</td>
                </tr>
                <tr height="22px">
                    <td>
                        <a href="">购物指南</a>
                    </td>
                    <td>
                        <a href="">保修政策</a>
                    </td>
                    <td>
                        <a href="">售后网点</a>
                    </td>
                    <td>
                        <a href="">防伪查询</a>
                    </td>
                    <td>
                        <a href="">公司介绍</a>
                    </td>
                    <td>
                        <a href="">华为集团</a>
                    </td>
                </tr>
                <tr height="22px">
                    <td>
                        <a href="">配送方式</a>
                    </td>
                    <td>
                        <a href="">退换货政策</a>
                    </td>
                    <td>
                        <a href="">预约维修</a>
                    </td>
                    <td>
                        <a href="">补购保障</a>
                    </td>
                    <td>
                        <a href="">华为商城简介</a>
                    </td>
                    <td>
                        <a href="">华为GBC官网</a>
                    </td>
                </tr>
                <tr height="22px">
                    <td>
                        <a href="">支付方式</a>
                    </td>
                    <td>
                        <a href="">退换货流程</a>
                    </td>
                    <td>
                        <a href="">手机寄修</a>
                    </td>
                    <td>
                        <a href="">以旧换新</a>
                    </td>
                    <td>
                        <a href="">华为线下门店</a>
                    </td>
                    <td>
                        <a href="">荣耀官网</a>
                    </td>
                </tr>
                <tr height="22px">
                    <td>
                        <a href="">常见问题</a>
                    </td>
                    <td>
                        <a href="">保修状态查询</a>
                    </td>
                    <td>
                        <a href="">备件价格查询</a>
                    </td>
                    <td>
                        <a href="">礼品包装</a>
                    </td>
                    <td>
                        <a href="">荣耀线下门店</a>
                    </td>
                    <td>
                        <a href="">花粉俱乐部</a>
                    </td>
                </tr>
                <tr height="22px">
                    <td>
                        <a href=""></a>
                    </td>
                    <td>
                        <a href="">配件防伪查询</a>
                    </td>
                    <td>
                        <a href="">上门服务</a>
                    </td>
                    <td>
                        <a href=""></a>
                    </td>
                    <td>
                        <a href="">诚征英才</a>
                    </td>
                    <td>
                        <a href="">网站地图</a>
                    </td>
                </tr>
                </tr>
                <tr height="22px">
                    <td>
                        <a href=""></a>
                    </td>
                    <td>
                        <a href=""></a>
                    </td>
                    <td>
                        <a href=""></a>
                    </td>
                    <td>
                        <a href=""></a>
                    </td>
                    <td>
                        <a href="">意见反馈</a>
                    </td>
                    <td>
                        <a href=""></a>
                    </td>
                </tr>
            </table>
            <div id="dianhua">
                <p style="font-size: 24px;font-weight: 700;color: #575757;" align="center">400-088-6888</p>
                <p style="color: #575757;font-size: 14px;" align="center">7x24小时客服热线（仅收市话费）</p>
                <a href="">
                    <div id="zaixiankefu"><img src="${pageContext.request.contextPath}/Static/img/zuixia/kefu.png"
                                               height="17px"
                                               width="20px" style="margin-top: 9px;margin-left: 40px;">
                        <p style="color: white;margin-top: -19px;margin-left: 75px;font-size: 14px;">在线客服</p>
                    </div>
                </a>
                <p style="color: #333;font-size: 15px;" align="center">关注Vmall:&nbsp;
                    <a href="" onmouseover="showerweima()" onmouseout="hideerweima()"><img
                            src="${pageContext.request.contextPath}/Static/img/zuixia/GuanZhuVmall/1.png"></a>&nbsp;
                    <a href=""><img src="${pageContext.request.contextPath}/Static/img/zuixia/GuanZhuVmall/2.png"></a>&nbsp;
                    <a href=""><img src="${pageContext.request.contextPath}/Static/img/zuixia/GuanZhuVmall/3.png"></a>&nbsp;
                    <a href=""><img src="${pageContext.request.contextPath}/Static/img/zuixia/GuanZhuVmall/4.png"></a>
                </p>
                <div id="dherweima" align="center">
                    <img src="${pageContext.request.contextPath}/Static/img/zuixia/GuanZhuVmall/dherweima.jpg"
                         width="108px"
                         height="108px" style="margin-top: 6px;"/>
                </div>
            </div>

        </div>
        <div id="zx3">
            <img src="${pageContext.request.contextPath}/Static/img/ZXVmall.png" width="82px" height="20px"
                 style="float: left;margin-top: 20px;"/>
            <p style="float: left;margin-left: 20px;margin-top: 20px;">
                <a href="">华为集团</a> |
                <a href="">华为CBG官网</a> |
                <a href="">荣耀官网</a> |
                <a href="">花粉俱乐部</a> |
                <a href="">华为应用市场</a> |
                <a href="">EMUI</a> |
                <a href="">华为终端云空间</a> |
                <a href="">开发者联盟</a> |
                <a href="">华为商城</a> |
                <a href="">手机版</a> |
                <a href="">网站地图</a>
            </p>
            <p style="float: left;color: #a4a4a4;font-size: 12px;margin-left: 20px;">隐私声明 服务协议 COOKIES Copyright ©
                2012-2019
                华为软件技术有限公司 版权所有 保留一切权利 公安备案 苏公网安备32011402010009号</p>
            <p style="float: left;color: #a4a4a4;font-size: 12px;margin-left: 102px;">苏ICP备17040376号-6
                增值电信业务经营许可证：苏B2-20130048号| 网络文化经营许可证：苏网文[2015] 1599-026号| 备案主体编号：32201911426827</p>
            <img src="${pageContext.request.contextPath}/Static/img/zuixia/5.jpg" width="70px" height="24px"
                 style="margin-left: 220px;margin-top: 20px;"/>
            <img src="${pageContext.request.contextPath}/Static/img/zuixia/6.png" width="70px" height="24px"
                 style="margin-left: 15px;margin-top: 20px;"/>
        </div>
    </div>
    <!--list_other end-->
    <!--list_show_content start-->

</div>
    <!--js end-->
</body>
</html>
