<%--
  Created by IntelliJ IDEA.
  User: Miaozhenkai
  Date: 2019/5/16
  Time: 15:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Static/css_mzk/bootstrap.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Static/css_mzk/1.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Static/js_mzk/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Static/js_mzk/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Static/js_mzk/menu.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Static/js_mzk/CeLan.js"></script>
    <title></title>
</head>
<body style="">
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
            <a href=""><img src="${pageContext.request.contextPath}/Static/img/ZuiShang/shangchengshouye.png"/>
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
<div class="logotiao">
    <div class="logo">
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
    <div class="search-bar-form">
        <form>
            <input type="text" class="text" maxlength="200" id="search-kw" placeholder="搜索"/>
            <a href=""><img style="margin-top: 7px;margin-left: 5px;"
                            src="${pageContext.request.contextPath}/Static/img/sousuo.png"/></a>
        </form>
    </div>
</div>

<!--轮播图背景-->
<div id="zhucaidanBG">
    <div id="myCarousel" class="carousel slide" style="position: absolute;">
        <!-- 轮播（Carousel）指标 -->
        <ol class="carousel-indicators" style="bottom: 60px;left: 1471px;">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
            <li data-target="#myCarousel" data-slide-to="4"></li>
            <li data-target="#myCarousel" data-slide-to="5"></li>
            <li data-target="#myCarousel" data-slide-to="6"></li>
            <li data-target="#myCarousel" data-slide-to="7"></li>
            <li data-target="#myCarousel" data-slide-to="8"></li>
        </ol>
        <!-- 轮播（Carousel）项目 -->
        <div class="carousel-inner">
            <div class="item active">
                <img src="${pageContext.request.contextPath}/Static/img/ZhuCaiDan/LunBo/caidanBG1.jpg"
                     alt="First slide">
            </div>
            <div class="item">
                <img src="${pageContext.request.contextPath}/Static/img/ZhuCaiDan/LunBo/caidanBG2.jpg"
                     alt="Second slide">
            </div>
            <div class="item">
                <img src="${pageContext.request.contextPath}/Static/img/ZhuCaiDan/LunBo/caidanBG3.jpg"
                     alt="Third slide">
            </div>
            <div class="item">
                <img src="${pageContext.request.contextPath}/Static/img/ZhuCaiDan/LunBo/caidanBG4.jpg">
            </div>
            <div class="item">
                <img src="${pageContext.request.contextPath}/Static/img/ZhuCaiDan/LunBo/caidanBG5.jpg">
            </div>
            <div class="item">
                <img src="${pageContext.request.contextPath}/Static/img/ZhuCaiDan/LunBo/caidanBG6.jpg">
            </div>
            <div class="item">
                <img src="${pageContext.request.contextPath}/Static/img/ZhuCaiDan/LunBo/caidanBG7.jpg">
            </div>
            <div class="item">
                <img src="${pageContext.request.contextPath}/Static/img/ZhuCaiDan/LunBo/caidanBG8.jpg">
            </div>
            <div class="item">
                <img src="${pageContext.request.contextPath}/Static/img/ZhuCaiDan/LunBo/caidanBG9.jpg">
            </div>
        </div>
        <!-- 轮播（Carousel）导航 -->
        <a class="left " href="#myCarousel" role="button" data-slide="prev">
            <img src="${pageContext.request.contextPath}/Static/img/ZhuCaiDan/LunBo/lunboleft1.png"
                 style="position: absolute; margin-top: -335px;margin-left:575px;"/>
        </a>
        <a class="right " href="#myCarousel" role="button" data-slide="next">
            <img src="${pageContext.request.contextPath}/Static/img/ZhuCaiDan/LunBo/lunboright1.png"
                 style="position: absolute; margin-top: -335px;margin-left:1505px;"/>
        </a>
    </div>

    <!--主菜单-->
    <div id="zhucaidan">
        <div id="shouji_zcd" onmouseover="showshouji()" onmouseout="hideshouji()">
            <p class="s1">
                <a href="">手机</a>
            </p>
            <p class="s2">
                <a href="">荣耀</a>&nbsp;&nbsp;&nbsp;
                <a href="">HUAWEI P系列</a>
            </p>
        </div>
        <div id="bijiben_zcd" onmouseover="showbijiben()" onmouseout="hidebijiben()">
            <p class="s1">
                <a href="">笔记本&平板</a>
            </p>
            <p class="s2">
                <a href="">平板电脑</a>&nbsp;&nbsp;&nbsp;
                <a href="">笔记本电脑</a>
            </p>
        </div>
        <div id="chuandai_zcd" onmouseover="showchuandai()" onmouseout="hidechuandai()">
            <p class="s1">
                <a href="">智能穿戴</a>
            </p>
            <p class="s2">
                <a href="">手环</a>&nbsp;&nbsp;&nbsp;
                <a href="">手表</a>&nbsp;&nbsp;&nbsp;
                <a href="">VR</a>
            </p>
        </div>
        <div id="jiaju_zcd" onmouseover="showjiaju()" onmouseout="hidejiaju()">
            <p class="s1">
                <a href="">智能家居</a>
            </p>
            <p class="s2">
                <a href="">路由器</a>&nbsp;&nbsp;&nbsp;
                <a href="">电视盒子</a>&nbsp;&nbsp;&nbsp;
                <a href="">照明</a>
            </p>
        </div>
        <div id="peijian" onmouseover="showpeijian()" onmouseout="hidepeijian()">
            <p class="s1">
                <a href="">热销配件</a>
            </p>
            <p class="s2">
                <a href="">保护壳</a>&nbsp;&nbsp;&nbsp;
                <a href="">移动电源</a>&nbsp;&nbsp;&nbsp;
                <a href="">耳机</a>
            </p>
        </div>
        <div id="qita" onmouseover="showqita()" onmouseout="hideqita()">
            <p class="s1">
                <a href="">增值服务&其他</a>
            </p>
            <p class="s2">
                <a href="">智能计算卡</a>&nbsp;&nbsp;&nbsp;
                <a href="">增值卡</a>
            </p>
        </div>
    </div>

    <!--隐藏部分-->
    <!--隐藏手机-->
    <div id="hideshouji" onmouseover="showshouji()" onmouseout="hideshouji()">
        <table style="margin-top: 23px;margin-left: 30px;">
            <tr height="100px">
                <td width="215px">
                    <a href="">
                        <div class="hidekuang">
                            <img src="${pageContext.request.contextPath}/Static/img/menu/shouji/1.png" width="56px"
                                 height="56px" style="margin-left: 6px;margin-top: 11px;">
                            <p style="font-size: 14px;margin-left:70px ;margin-top: -40px;">荣耀</p>
                        </div>
                    </a>
                </td>
                <td width="215px">
                    <a href="">
                        <div class="hidekuang">
                            <img src="${pageContext.request.contextPath}/Static/img/menu/shouji/2.png" width="56px"
                                 height="56px" style="margin-left: 6px;margin-top: 11px;">
                            <p style="font-size: 14px;margin-left:70px ;margin-top: -40px;">HUAWEI nova系列</p>
                        </div>
                    </a>
                </td>
                <td width="215px">
                    <a href="">
                        <div class="hidechakanquanbu">
                            <p style="font-size: 15px;margin-left:20px ;margin-top: 9px;color: gray;">查看全部</p>
                        </div>
                    </a>
                </td>
            </tr>
            <tr height="100px">
                <td width="215px">
                    <a href="">
                        <div class="hidekuang">
                            <img src="${pageContext.request.contextPath}/Static/img/menu/shouji/3.png" width="56px"
                                 height="56px" style="margin-left: 6px;margin-top: 11px;">
                            <p style="font-size: 14px;margin-left:70px ;margin-top: -40px;">HUAWEI P 系列</p>
                        </div>
                    </a>
                </td>
                <td width="215px">
                    <a href="">
                        <div class="hidekuang">
                            <img src="${pageContext.request.contextPath}/Static/img/menu/shouji/4.png" width="56px"
                                 height="56px" style="margin-left: 6px;margin-top: 11px;">
                            <p style="font-size: 14px;margin-left:70px ;margin-top: -40px;">华为畅享系列</p>
                        </div>
                    </a>
                </td>
            </tr>
            <tr height="100px">
                <td width="215px">
                    <a href="">
                        <div class="hidekuang">
                            <img src="${pageContext.request.contextPath}/Static/img/menu/shouji/5.png" width="56px"
                                 height="56px" style="margin-left: 6px;margin-top: 11px;">
                            <p style="font-size: 14px;margin-left:70px ;margin-top: -40px;">HUAWEI Mate系列</p>
                        </div>
                    </a>
                </td>
                <td width="215px">
                    <a href="">
                        <div class="hidekuang">
                            <img src="${pageContext.request.contextPath}/Static/img/menu/shouji/6.png" width="56px"
                                 height="56px" style="margin-left: 6px;margin-top: 11px;">
                            <p style="font-size: 14px;margin-left:70px ;margin-top: -40px;">HUAWEI 麦芒系列</p>
                        </div>
                    </a>
                </td>
            </tr>
            <tr height="100px">
                <td width="215px">
                    <a href="">
                        <div class="hidekuang">
                            <img src="${pageContext.request.contextPath}/Static/img/menu/shouji/7.png" width="56px"
                                 height="56px" style="margin-left: 6px;margin-top: 11px;">
                            <p style="font-size: 14px;margin-left:70px ;margin-top: -40px;">荣耀畅玩系列</p>
                        </div>
                    </a>
                </td>
                <td width="215px">
                    <a href="">
                        <div class="hidekuang">
                            <img src="${pageContext.request.contextPath}/Static/img/menu/shouji/8.png" width="56px"
                                 height="56px" style="margin-left: 6px;margin-top: 11px;">
                            <p style="font-size: 14px;margin-left:70px ;margin-top: -40px;">移动4G+专区</p>
                        </div>
                    </a>
                </td>
            </tr>
        </table>
    </div>
    <!--隐藏笔记本-->
    <div id="hidebijiben" onmouseover="showbijiben()" onmouseout="hidebijiben()">
        <table style="margin-top: 23px;margin-left: 30px;">
            <tr height="100px">
                <td width="215px">
                    <a href="">
                        <div class="hidekuang">
                            <img src="${pageContext.request.contextPath}/Static/img/menu/bijiben/1.png" width="56px"
                                 height="56px" style="margin-left: 6px;margin-top: 11px;">
                            <p style="font-size: 14px;margin-left:70px ;margin-top: -40px;">平板电脑</p>
                        </div>
                    </a>
                </td>
            </tr>
            <tr height="100px">
                <td width="215px">
                    <a href="">
                        <div class="hidekuang">
                            <img src="${pageContext.request.contextPath}/Static/img/menu/bijiben/2.png" width="56px"
                                 height="56px" style="margin-left: 6px;margin-top: 11px;">
                            <p style="font-size: 14px;margin-left:70px ;margin-top: -40px;">笔记本电脑</p>
                        </div>
                    </a>
                </td>
            </tr>
            <tr height="100px">
                <td width="215px">
                    <a href="">
                        <div class="hidekuang">
                            <img src="${pageContext.request.contextPath}/Static/img/menu/bijiben/3.png" width="56px"
                                 height="56px" style="margin-left: 6px;margin-top: 11px;">
                            <p style="font-size: 14px;margin-left:70px ;margin-top: -40px;">笔记本配件</p>
                        </div>
                    </a>
                </td>
            </tr>
            <tr height="100px">
                <td width="215px">
                    <a href="">
                        <div class="hidechakanquanbu">
                            <p style="font-size: 15px;margin-left:20px ;margin-top: 9px;color: gray;">查看全部</p>
                        </div>
                    </a>
                </td>
            </tr>
        </table>
    </div>
    <!--隐藏智能穿戴-->
    <div id="hidechuandai" onmouseover="showchuandai()" onmouseout="hidechuandai()">
        <table style="margin-top: 23px;margin-left: 30px;">
            <tr height="100px">
                <td width="215px">
                    <a href="">
                        <div class="hidekuang">
                            <img src="${pageContext.request.contextPath}/Static/img/menu/chuandai/1.png" width="56px"
                                 height="56px" style="margin-left: 6px;margin-top: 11px;">
                            <p style="font-size: 14px;margin-left:70px ;margin-top: -40px;">手环</p>
                        </div>
                    </a>
                </td>
            </tr>
            <tr height="100px">
                <td width="215px">
                    <a href="">
                        <div class="hidekuang">
                            <img src="${pageContext.request.contextPath}/Static/img/menu/chuandai/2.png" width="56px"
                                 height="56px" style="margin-left: 6px;margin-top: 11px;">
                            <p style="font-size: 14px;margin-left:70px ;margin-top: -40px;">手表</p>
                        </div>
                    </a>
                </td>
            </tr>
            <tr height="100px">
                <td width="215px">
                    <a href="">
                        <div class="hidekuang">
                            <img src="${pageContext.request.contextPath}/Static/img/menu/chuandai/3.png" width="56px"
                                 height="56px" style="margin-left: 6px;margin-top: 11px;">
                            <p style="font-size: 14px;margin-left:70px ;margin-top: -40px;">VR</p>
                        </div>
                    </a>
                </td>
            </tr>
            <tr height="100px">
                <td width="215px">
                    <a href="">
                        <div class="hidechakanquanbu">
                            <p style="font-size: 15px;margin-left:20px ;margin-top: 9px;color: gray;">查看全部</p>
                        </div>
                    </a>
                </td>
            </tr>
        </table>
    </div>
    <!--隐藏智能家居-->
    <div id="hidejiaju" onmouseover="showjiaju()" onmouseout="hidejiaju()">
        <table style="margin-top: 23px;margin-left: 30px;">
            <tr height="100px">
                <td width="215px">
                    <a href="">
                        <div class="hidekuang">
                            <img src="${pageContext.request.contextPath}/Static/img/menu/jiaju/1.png" width="56px"
                                 height="56px" style="margin-left: 6px;margin-top: 11px;">
                            <p style="font-size: 14px;margin-left:70px ;margin-top: -40px;">路由器</p>
                        </div>
                    </a>
                </td>
                <td width="215px">
                    <a href="">
                        <div class="hidekuang">
                            <img src="${pageContext.request.contextPath}/Static/img/menu/jiaju/2.png" width="56px"
                                 height="56px" style="margin-left: 6px;margin-top: 11px;">
                            <p style="font-size: 14px;margin-left:70px ;margin-top: -40px;">子母/分布式路由</p>
                        </div>
                    </a>
                </td>
                <td width="215px">
                    <a href="">
                        <div class="hidekuang">
                            <img src="${pageContext.request.contextPath}/Static/img/menu/jiaju/3.png" width="56px"
                                 height="56px" style="margin-left: 6px;margin-top: 11px;">
                            <p style="font-size: 14px;margin-left:70px ;margin-top: -40px;">环境</p>
                        </div>
                    </a>
                </td>
                <td width="215px">
                    <a href="">
                        <div class="hidekuang">
                            <img src="${pageContext.request.contextPath}/Static/img/menu/jiaju/4.png" width="56px"
                                 height="56px" style="margin-left: 6px;margin-top: 11px;">
                            <p style="font-size: 14px;margin-left:70px ;margin-top: -40px;">影音</p>
                        </div>
                    </a>
                </td>
            </tr>
            <tr height="100px">
                <td width="215px">
                    <a href="">
                        <div class="hidekuang">
                            <img src="${pageContext.request.contextPath}/Static/img/menu/jiaju/5.png" width="56px"
                                 height="56px" style="margin-left: 6px;margin-top: 11px;">
                            <p style="font-size: 14px;margin-left:70px ;margin-top: -40px;">电视盒子</p>
                        </div>
                    </a>
                </td>
                <td width="215px">
                    <a href="">
                        <div class="hidekuang">
                            <img src="${pageContext.request.contextPath}/Static/img/menu/jiaju/6.png" width="56px"
                                 height="56px" style="margin-left: 6px;margin-top: 11px;">
                            <p style="font-size: 14px;margin-left:70px ;margin-top: -40px;">电力猫/wifi放大器</p>
                        </div>
                    </a>
                </td>
                <td width="215px">
                    <a href="">
                        <div class="hidekuang">
                            <img src="${pageContext.request.contextPath}/Static/img/menu/jiaju/7.png" width="56px"
                                 height="56px" style="margin-left: 6px;margin-top: 11px;">
                            <p style="font-size: 14px;margin-left:70px ;margin-top: -40px;">安防</p>
                        </div>
                    </a>
                </td>
                <td width="215px">
                    <a href="">
                        <div class="hidekuang">
                            <img src="${pageContext.request.contextPath}/Static/img/menu/jiaju/8.png" width="56px"
                                 height="56px" style="margin-left: 6px;margin-top: 11px;">
                            <p style="font-size: 14px;margin-left:70px ;margin-top: -40px;">卫浴</p>
                        </div>
                    </a>
                </td>
            </tr>
            <tr height="100px">
                <td width="215px">
                    <a href="">
                        <div class="hidekuang">
                            <img src="${pageContext.request.contextPath}/Static/img/menu/jiaju/9.png" width="56px"
                                 height="56px" style="margin-left: 6px;margin-top: 11px;">
                            <p style="font-size: 14px;margin-left:70px ;margin-top: -40px;">照明</p>
                        </div>
                    </a>
                </td>
                <td width="215px">
                    <a href="">
                        <div class="hidekuang">
                            <img src="${pageContext.request.contextPath}/Static/img/menu/jiaju/10.png" width="56px"
                                 height="56px" style="margin-left: 6px;margin-top: 11px;">
                            <p style="font-size: 14px;margin-left:70px ;margin-top: -40px;">随行wifi</p>
                        </div>
                    </a>
                </td>
                <td width="215px">
                    <a href="">
                        <div class="hidekuang">
                            <img src="${pageContext.request.contextPath}/Static/img/menu/jiaju/11.png" width="56px"
                                 height="56px" style="margin-left: 6px;margin-top: 11px;">
                            <p style="font-size: 14px;margin-left:70px ;margin-top: -40px;">健康</p>
                        </div>
                    </a>
                </td>
                <td width="215px">
                    <a href="">
                        <div class="hidekuang">
                            <img src="${pageContext.request.contextPath}/Static/img/menu/jiaju/12.png" width="56px"
                                 height="56px" style="margin-left: 6px;margin-top: 11px;">
                            <p style="font-size: 14px;margin-left:70px ;margin-top: -40px;">其他</p>
                        </div>
                    </a>
                </td>
            </tr>
            <tr height="100px">
                <td width="215px">
                    <a href="">
                        <div class="hidekuang">
                            <img src="${pageContext.request.contextPath}/Static/img/menu/jiaju/13.png" width="56px"
                                 height="56px" style="margin-left: 6px;margin-top: 11px;">
                            <p style="font-size: 14px;margin-left:70px ;margin-top: -40px;">清洁</p>
                        </div>
                    </a>
                </td>
                <td width="215px">
                    <a href="">
                        <div class="hidekuang">
                            <img src="${pageContext.request.contextPath}/Static/img/menu/jiaju/14.png" width="56px"
                                 height="56px" style="margin-left: 6px;margin-top: 11px;">
                            <p style="font-size: 14px;margin-left:70px ;margin-top: -40px;">节能</p>
                        </div>
                    </a>
                </td>
                <td width="215px">
                    <a href="">
                        <div class="hidekuang">
                            <img src="${pageContext.request.contextPath}/Static/img/menu/jiaju/15.png" width="56px"
                                 height="56px" style="margin-left: 6px;margin-top: 11px;">
                            <p style="font-size: 14px;margin-left:70px ;margin-top: -40px;">厨电</p>
                        </div>
                    </a>
                </td>
                <td width="215px">
                    <a href="">
                        <div class="hidechakanquanbu">
                            <p style="font-size: 15px;margin-left:20px ;margin-top: 9px;color: gray;">查看全部</p>
                        </div>
                    </a>
                </td>
            </tr>
        </table>
    </div>
    <!--隐藏热销配件-->
    <div id="hidepeijian" onmouseover="showpeijian()" onmouseout="hidepeijian()">
        <table style="margin-top: 23px;margin-left: 30px;">
            <tr height="100px">
                <td width="215px">
                    <a href="">
                        <div class="hidekuang">
                            <img src="${pageContext.request.contextPath}/Static/img/menu/peijian/1.png" width="56px"
                                 height="56px" style="margin-left: 6px;margin-top: 11px;">
                            <p style="font-size: 14px;margin-left:70px ;margin-top: -40px;">保护壳</p>
                        </div>
                    </a>
                </td>
                <td width="215px">
                    <a href="">
                        <div class="hidekuang">
                            <img src="${pageContext.request.contextPath}/Static/img/menu/peijian/2.png" width="56px"
                                 height="56px" style="margin-left: 6px;margin-top: 11px;">
                            <p style="font-size: 14px;margin-left:70px ;margin-top: -40px;">贴膜</p>
                        </div>
                    </a>
                </td>
                <td width="215px">
                    <a href="">
                        <div class="hidekuang">
                            <img src="${pageContext.request.contextPath}/Static/img/menu/peijian/3.png" width="56px"
                                 height="56px" style="margin-left: 6px;margin-top: 11px;">
                            <p style="font-size: 14px;margin-left:70px ;margin-top: -40px;">储存卡</p>
                        </div>
                    </a>
                </td>
                <td width="215px">
                    <a href="">
                        <div class="hidekuang">
                            <img src="${pageContext.request.contextPath}/Static/img/menu/peijian/4.png" width="56px"
                                 height="56px" style="margin-left: 6px;margin-top: 11px;">
                            <p style="font-size: 14px;margin-left:70px ;margin-top: -40px;">生活周边</p>
                        </div>
                    </a>
                </td>
            </tr>
            <tr height="100px">
                <td width="215px">
                    <a href="">
                        <div class="hidekuang">
                            <img src="${pageContext.request.contextPath}/Static/img/menu/peijian/5.jpg" width="56px"
                                 height="56px" style="margin-left: 6px;margin-top: 11px;">
                            <p style="font-size: 14px;margin-left:70px ;margin-top: -40px;">移动电源</p>
                        </div>
                    </a>
                </td>
                <td width="215px">
                    <a href="">
                        <div class="hidekuang">
                            <img src="${pageContext.request.contextPath}/Static/img/menu/peijian/6.png" width="56px"
                                 height="56px" style="margin-left: 6px;margin-top: 11px;">
                            <p style="font-size: 14px;margin-left:70px ;margin-top: -40px;">音响</p>
                        </div>
                    </a>
                </td>
                <td width="215px">
                    <a href="">
                        <div class="hidekuang">
                            <img src="${pageContext.request.contextPath}/Static/img/menu/peijian/7.png" width="56px"
                                 height="56px" style="margin-left: 6px;margin-top: 11px;">
                            <p style="font-size: 14px;margin-left:70px ;margin-top: -40px;">摄像机</p>
                        </div>
                    </a>
                </td>
                <td width="215px">
                    <a href="">
                        <div class="hidekuang">
                            <img src="${pageContext.request.contextPath}/Static/img/menu/peijian/8.png" width="56px"
                                 height="56px" style="margin-left: 6px;margin-top: 11px;">
                            <p style="font-size: 14px;margin-left:70px ;margin-top: -40px;">盒子专属配件</p>
                        </div>
                    </a>
                </td>
            </tr>
            <tr height="100px">
                <td width="215px">
                    <a href="">
                        <div class="hidekuang">
                            <img src="${pageContext.request.contextPath}/Static/img/menu/peijian/9.png" width="56px"
                                 height="56px" style="margin-left: 6px;margin-top: 11px;">
                            <p style="font-size: 14px;margin-left:70px ;margin-top: -40px;">耳机</p>
                        </div>
                    </a>
                </td>
                <td width="215px">
                    <a href="">
                        <div class="hidekuang">
                            <img src="${pageContext.request.contextPath}/Static/img/menu/peijian/10.png" width="56px"
                                 height="56px" style="margin-left: 6px;margin-top: 11px;">
                            <p style="font-size: 14px;margin-left:70px ;margin-top: -40px;">自拍杆</p>
                        </div>
                    </a>
                </td>
                <td width="215px">
                    <a href="">
                        <div class="hidekuang">
                            <img src="${pageContext.request.contextPath}/Static/img/menu/peijian/11.png" width="56px"
                                 height="56px" style="margin-left: 6px;margin-top: 11px;">
                            <p style="font-size: 14px;margin-left:70px ;margin-top: -40px;">智能硬件</p>
                        </div>
                    </a>
                </td>
                <td width="215px">
                    <a href="">
                        <div class="hidekuang">
                            <img src="${pageContext.request.contextPath}/Static/img/menu/peijian/12.png" width="56px"
                                 height="56px" style="margin-left: 6px;margin-top: 11px;">
                            <p style="font-size: 14px;margin-left:70px ;margin-top: -40px;">触控笔</p>
                        </div>
                    </a>
                </td>
            </tr>
            <tr height="100px">
                <td width="215px">
                    <a href="">
                        <div class="hidekuang">
                            <img src="${pageContext.request.contextPath}/Static/img/menu/peijian/13.png" width="56px"
                                 height="56px" style="margin-left: 6px;margin-top: 11px;">
                            <p style="font-size: 14px;margin-left:70px ;margin-top: -40px;">保护套</p>
                        </div>
                    </a>
                </td>
                <td width="215px">
                    <a href="">
                        <div class="hidekuang">
                            <img src="${pageContext.request.contextPath}/Static/img/menu/peijian/14.png" width="56px"
                                 height="56px" style="margin-left: 6px;margin-top: 11px;">
                            <p style="font-size: 14px;margin-left:70px ;margin-top: -40px;">充电器</p>
                        </div>
                    </a>
                </td>
                <td width="215px">
                    <a href="">
                        <div class="hidekuang">
                            <img src="${pageContext.request.contextPath}/Static/img/menu/peijian/15.png" width="56px"
                                 height="56px" style="margin-left: 6px;margin-top: 11px;">
                            <p style="font-size: 14px;margin-left:70px ;margin-top: -40px;">表带</p>
                        </div>
                    </a>
                </td>
                <td width="215px">
                    <a href="">
                        <div class="hidechakanquanbu">
                            <p style="font-size: 15px;margin-left:20px ;margin-top: 9px;color: gray;">查看全部</p>
                        </div>
                    </a>
                </td>
            </tr>
        </table>
    </div>
    <!--隐藏其他-->
    <div id="hideqita" onmouseover="showqita()" onmouseout="hideqita()">
        <table style="margin-top: 23px;margin-left: 30px;">
            <tr height="100px">
                <td width="215px">
                    <a href="">
                        <div class="hidekuang">
                            <img src="${pageContext.request.contextPath}/Static/img/menu/qita/1.png" width="56px"
                                 height="56px"
                                 style="margin-left: 6px;margin-top: 11px;">
                            <p style="font-size: 14px;margin-left:70px ;margin-top: -40px;">智能计算</p>
                        </div>
                    </a>
                </td>
            </tr>
            <tr height="100px">
                <td width="215px">
                    <a href="">
                        <div class="hidekuang">
                            <img src="${pageContext.request.contextPath}/Static/img/menu/qita/2.png" width="56px"
                                 height="56px"
                                 style="margin-left: 6px;margin-top: 11px;">
                            <p style="font-size: 14px;margin-left:70px ;margin-top: -40px;">增值卡</p>
                        </div>
                    </a>
                </td>
            </tr>

            <tr height="100px">
                <td width="215px">
                    <a href="">
                        <div class="hidechakanquanbu">
                            <p style="font-size: 15px;margin-left:20px ;margin-top: 9px;color: gray;">查看全部</p>
                        </div>
                    </a>
                </td>
            </tr>
        </table>
    </div>

    <!--登陆条-->
    <div id="denglutiao">
        <div id="d1">
            <table align="center" style="margin-top: 14px;margin-left: 15px;">
                <tr>
                    <td rowspan="2"><img src="${pageContext.request.contextPath}/Static/img/denglutiaotouxiang.png"
                                         width="60px" height="60px"></td>
                    <td style="font-size: 14px;color: #999;" width="200px" align="center">您好！请
                        <a href="">登录</a>&nbsp;/&nbsp;
                        <a href="">注册</a>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <a href=""><img src="${pageContext.request.contextPath}/Static/img/xinren.png"></a>&nbsp;&nbsp;
                        <a href=""><img src="${pageContext.request.contextPath}/Static/img/huiyuan.png"></a>
                    </td>
                </tr>
            </table>
        </div>
        <div id="d2">
            <table align="center" style="margin-top: 14px;">
                <tr>
                    <td align="center">
                        <a href=""><img src="${pageContext.request.contextPath}/Static/img/DLTxiaotubiao1.png"><br>企业特惠</a>
                    </td>
                    <td align="center">
                        <a href=""><img src="${pageContext.request.contextPath}/Static/img/DLTxiaotubiao2.png"><br>以旧换新</a>
                    </td>
                    <td align="center">
                        <a href=""><img src="${pageContext.request.contextPath}/Static/img/DLTxiaotubiao3.png"><br>会员领劵</a>
                    </td>
                    <td align="center">
                        <a href=""><img src="${pageContext.request.contextPath}/Static/img/DLTxiaotubiao4.png"><br>优选配件</a>
                    </td>
                    <td align="center">
                        <a href=""><img src="${pageContext.request.contextPath}/Static/img/DLTxiaotubiao5.png"><br>荣耀数码</a>
                    </td>
                    <td align="center">
                        <a href=""><img src="${pageContext.request.contextPath}/Static/img/DLTxiaotubiao6.png"><br>华为数码</a>
                    </td>
                </tr>
            </table>
        </div>
        <div id="d3">
            <p style="margin-top: 13px;margin-left:60px ; font-size: 14px;color: #777;">
                <a href="">公告：&nbsp;&nbsp;华为P30即将发售</a>
            </p>
        </div>
        <div id="d4">
            <table align="center" style="margin-top: 14px;">
                <tr>
                    <td>
                        <a href=""><img src="${pageContext.request.contextPath}/Static/img/DLTxiaotubiao7.png">&nbsp;优购码</a>
                    </td>
                    <td>
                        <a href=""><img src="${pageContext.request.contextPath}/Static/img/DLTxiaotubiao8.png">&nbsp;实名认证</a>
                    </td>
                    <td>
                        <a href=""><img src="${pageContext.request.contextPath}/Static/img/DLTxiaotubiao9.png">&nbsp;补购保障</a>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</div>
<div id="ZCDBGxiamian">
    <table align="center">
        <tr>
            <td width="350px" align="center">
                <a href=""><img src="${pageContext.request.contextPath}/Static/img/ZCDBGxiamian1.jpg"></a>
            </td>
            <td width="350px" align="center">
                <a href=""><img src="${pageContext.request.contextPath}/Static/img/ZCDBGxiamian2.jpg"></a>
            </td>
            <td width="350px" align="center">
                <a href=""><img src="${pageContext.request.contextPath}/Static/img/ZCDBGxiamian3.jpg"></a>
            </td>
            <td width="350px" align="center">
                <a href=""><img src="${pageContext.request.contextPath}/Static/img/ZCDBGxiamian4.png"></a>
            </td>
        </tr>
    </table>
</div>
<div id="gudingLeft">
    <a href=""><img src="${pageContext.request.contextPath}/Static/img/GDleft.png"/></a>
</div>
<div id="gudingRight">
    <a href=""><img src="${pageContext.request.contextPath}/Static/img/GDright.png"/></a>
</div>
<div id="ReXiaoDanPin">
    <p style="font-size: 26px;">热销单品</p>
    <table style="margin-top: 5px;">
        <tr>
            <td rowspan="2" width="240px">
                <a href=""><img src="${pageContext.request.contextPath}/Static/img/Rexiaodanpin/RXDP1.jpg"
                                id="RXDP1"></a>
            </td>
            <td width="243px">
                <a href="">
                    <div class="RXDP2">
                        <div class="xiaozi">
                            <p align="center" style="color: white;">爆款</p>
                        </div>
                        <div class="tu"><img src="${pageContext.request.contextPath}/Static/img/Rexiaodanpin/RXDP2.png"
                                             width="150px" height="150px"/></div>
                        <p class="xiaozi2" align="center">荣耀10青春版</p>
                        <p class="xiaozi3" align="center">4+64GB减100</p>
                        <p class="xiaozi4" align="center">¥8888</p>
                    </div>
                </a>
            </td>
            <td width="243px">
                <a href="">
                    <div class="RXDP2">
                        <div class="xiaozi">
                            <p align="center" style="color: white;">直降</p>
                        </div>
                        <div class="tu"><img src="${pageContext.request.contextPath}/Static/img/Rexiaodanpin/RXDP3.png"
                                             width="150px" height="150px"/></div>
                        <p class="xiaozi2" align="center">HUAWEI Mate 20 Pro</p>
                        <p class="xiaozi3" align="center">直降500+6免息</p>
                        <p class="xiaozi4" align="center">¥4299</p>
                    </div>
                </a>
            </td>
            <td width="243px">
                <a href="">
                    <div class="RXDP2">
                        <div class="xiaozi">
                            <p align="center" style="color: white;">特惠</p>
                        </div>
                        <div class="tu"><img src="${pageContext.request.contextPath}/Static/img/Rexiaodanpin/RXDP4.png"
                                             width="150px" height="150px"/></div>
                        <p class="xiaozi2" align="center">荣耀Note10</p>
                        <p class="xiaozi3" align="center">最高减500元</p>
                        <p class="xiaozi4" align="center">¥299</p>
                    </div>
                </a>
            </td>
            <td width="243px">
                <a href="">
                    <div class="RXDP2">
                        <div class="xiaozi" style="background-color: deepskyblue;">
                            <p align="center" style="color: white;">新品</p>
                        </div>
                        <div class="tu"><img src="${pageContext.request.contextPath}/Static/img/Rexiaodanpin/RXDP5.png"
                                             width="150px" height="150px"/></div>
                        <p class="xiaozi2" align="center">HUAWEI nova 4e</p>
                        <p class="xiaozi3" align="center">增配件礼包</p>
                        <p class="xiaozi4" align="center">¥3299</p>
                    </div>
                </a>
            </td>
        </tr>
        <tr>
            <td width="243px">
                <a href="">
                    <div class="RXDP2">
                        <div class="xiaozi">
                            <p align="center" style="color: white;">爆款</p>
                        </div>
                        <div class="tu"><img src="${pageContext.request.contextPath}/Static/img/Rexiaodanpin/RXDP6.png"
                                             width="150px" height="150px"/></div>
                        <p class="xiaozi2" align="center">荣耀10</p>
                        <p class="xiaozi3" align="center">最高优惠100</p>
                        <p class="xiaozi4" align="center">¥1099</p>
                    </div>
                </a>
            </td>
            <td width="243px">
                <a href="">
                    <div class="RXDP2">
                        <div class="xiaozi" style="background-color: deepskyblue;">
                            <p align="center" style="color: white;">新品</p>
                        </div>
                        <div class="tu"><img src="${pageContext.request.contextPath}/Static/img/Rexiaodanpin/RXDP7.png"
                                             width="150px" height="150px"/></div>
                        <p class="xiaozi2" align="center">华为畅享 9S</p>
                        <p class="xiaozi3" align="center">定金50等于100</p>
                        <p class="xiaozi4" align="center">¥1499</p>
                    </div>
                </a>
            </td>
            <td width="243px">
                <a href="">
                    <div class="RXDP2">
                        <div class="xiaozi">
                            <p align="center" style="color: white;">热卖</p>
                        </div>
                        <div class="tu"><img src="${pageContext.request.contextPath}/Static/img/Rexiaodanpin/RXDP8.png"
                                             width="150px" height="150px"/></div>
                        <p class="xiaozi2" align="center">荣耀畅玩8</p>
                        <p class="xiaozi3" align="center">4+64GB金色版到手价899</p>
                        <p class="xiaozi4" align="center">¥1889</p>
                    </div>
                </a>
            </td>
            <td width="243px">
                <a href="">
                    <div class="RXDP2">
                        <div class="xiaozi">
                            <p align="center" style="color: white;">爆款</p>
                        </div>
                        <div class="tu"><img src="${pageContext.request.contextPath}/Static/img/Rexiaodanpin/RXDP9.png"
                                             width="150px" height="150px"/></div>
                        <p class="xiaozi2" align="center">HWAWEI P20 Pro</p>
                        <p class="xiaozi3" align="center">下单减100</p>
                        <p class="xiaozi4" align="center">¥1222</p>
                    </div>
                </a>
            </td>
        </tr>
    </table>
</div>

<div id="JingPinTuiJian">
    <p style="font-size: 26px;">精品推荐</p>
    <table style="margin-top: 10px;">
        <tr>
            <td width="243px">
                <a href="">
                    <div class="JPTJ">
                        <div class="xiaozi" style="background-color: deepskyblue;">
                            <p align="center" style="color: white;">爆款</p>
                        </div>
                        <div class="tu"><img
                                src="${pageContext.request.contextPath}/Static/img/Jingpintuijian/JPTJ1.png"
                                width="150px" height="150px"/></div>
                        <p class="xiaozi2" align="center">新款上市 定金50抵150元</p>
                        <p class="xiaozi3" align="center">HUAWEI WATCH GT 活力款</p>
                        <p class="xiaozi4" align="center">¥1488</p>
                    </div>
                </a>
            </td>
            <td width="243px">
                <a href="">
                    <div class="JPTJ">
                        <div class="xiaozi" style="background-color: white;"></div>
                        <div class="tu"><img
                                src="${pageContext.request.contextPath}/Static/img/Jingpintuijian/JPTJ2.png"
                                width="150px" height="150px"/></div>
                        <p class="xiaozi2" align="center">新款上市 定金50抵150元</p>
                        <p class="xiaozi3" align="center">HUAWEI WATCH GT 活力款</p>
                        <p class="xiaozi4" align="center">¥1488</p>
                    </div>
                </a>
            </td>
            <td width="243px">
                <a href="">
                    <div class="JPTJ">
                        <div class="xiaozi">
                            <p align="center" style="color: white;">新品</p>
                        </div>
                        <div class="tu"><img
                                src="${pageContext.request.contextPath}/Static/img/Jingpintuijian/JPTJ3.png"
                                width="150px" height="150px"/></div>
                        <p class="xiaozi2" align="center">新款上市 定金50抵150元</p>
                        <p class="xiaozi3" align="center">HUAWEI WATCH GT 活力款</p>
                        <p class="xiaozi4" align="center">¥1488</p>
                    </div>
                </a>
            </td>
            <td width="243px">
                <a href="">
                    <div class="JPTJ">
                        <div class="xiaozi" style="background-color: white;"></div>
                        <div class="tu"><img
                                src="${pageContext.request.contextPath}/Static/img/Jingpintuijian/JPTJ4.png"
                                width="150px" height="150px"/></div>
                        <p class="xiaozi2" align="center">新款上市 定金50抵150元</p>
                        <p class="xiaozi3" align="center">HUAWEI WATCH GT 活力款</p>
                        <p class="xiaozi4" align="center">¥1488</p>
                    </div>
                </a>
            </td>
            <td width="243px">
                <a href="">
                    <div class="JPTJ">
                        <div class="xiaozi">
                            <p align="center" style="color: white;">直降</p>
                        </div>
                        <div class="tu"><img
                                src="${pageContext.request.contextPath}/Static/img/Jingpintuijian/JPTJ5.png"
                                width="150px" height="150px"/></div>
                        <p class="xiaozi2" align="center">新款上市 定金50抵150元</p>
                        <p class="xiaozi3" align="center">HUAWEI WATCH GT 活力款</p>
                        <p class="xiaozi4" align="center">¥1488</p>
                    </div>
                </a>
            </td>
        </tr>
    </table>
</div>

<!--广告1轮播图-->
<div id="adv1">
    <div id="myCarousel1" class="carousel slide">
        <!-- 轮播（Carousel）指标 -->
        <ol class="carousel-indicators lbxiaoyuan" style="bottom: -5px;left: 1114px;">
            <li data-target="#myCarousel1" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel1" data-slide-to="1"></li>
            <li data-target="#myCarousel1" data-slide-to="2"></li>
            <li data-target="#myCarousel1" data-slide-to="3"></li>
            <li data-target="#myCarousel1" data-slide-to="4"></li>
            <li data-target="#myCarousel1" data-slide-to="5"></li>
            <li data-target="#myCarousel1" data-slide-to="6"></li>
            <li data-target="#myCarousel1" data-slide-to="7"></li>
            <li data-target="#myCarousel1" data-slide-to="8"></li>
        </ol>
        <!-- 轮播（Carousel）项目 -->
        <div class="carousel-inner" style="border-radius: 10px;">
            <div class="item active">
                <img src="${pageContext.request.contextPath}/Static/img/adv/adv1_1.jpg" alt="First slide">
            </div>
            <div class="item">
                <img src="${pageContext.request.contextPath}/Static/img/adv/adv1_2.jpg" alt="Second slide">
            </div>
            <div class="item">
                <img src="${pageContext.request.contextPath}/Static/img/adv/adv1_3.jpg" alt="Third slide">
            </div>
            <div class="item">
                <img src="${pageContext.request.contextPath}/Static/img/adv/adv1_4.jpg" alt="Third slide">
            </div>
            <div class="item">
                <img src="${pageContext.request.contextPath}/Static/img/adv/adv1_5.jpg" alt="Third slide">
            </div>
            <div class="item">
                <img src="${pageContext.request.contextPath}/Static/img/adv/adv1_6.jpg" alt="Third slide">
            </div>
            <div class="item">
                <img src="${pageContext.request.contextPath}/Static/img/adv/adv1_7.jpg" alt="Third slide">
            </div>
            <div class="item">
                <img src="${pageContext.request.contextPath}/Static/img/adv/adv1_8.jpg" alt="Third slide">
            </div>
            <div class="item">
                <img src="${pageContext.request.contextPath}/Static/img/adv/adv1_9.jpg" alt="Third slide">
            </div>
        </div>
    </div>
</div>
<div id="ShouJi">
    <p style="font-size: 26px;float: left;">手机</p>
    <div class="xiaozi0">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href=""><span>HUAWEI Mate系列</span></a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href=""><span>荣耀</span></a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href=""><span>HUAWEI P系列</span></a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href=""><span>荣耀畅玩系列</span></a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href=""><span>HUAWEI nova系列</span></a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href=""><span>华为畅享系列</span></a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href=""><span>HUAWEI 麦芒系列</span></a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href=""><span>移动4G+专区</span></a>
    </div>
    <table style="margin-top: 3px;">
        <c:forEach items="${allPhoneList}" var="allPhoneList" varStatus="status">
            <tr height="300px">
                <c:forEach items="${status.getCurrent()}" var="phoneList1_5">
                    <td width="243px">
                        <a href="${pageContext.request.contextPath}/fore/MainServlet?flag=showProductDetail&p_id=${phoneList1_5.p_id}">
                            <div class="RXDP2">
                                <div class="xiaoziNO"></div>
                                <div class="tu"><img
                                        src="${pageContext.request.contextPath}/Static/img/product/${phoneList1_5.p_image}"
                                        width="150px " height="150px "/></div>
                                <p class="xiaozi2 " align="center ">${phoneList1_5.p_name}</p>
                                <p class="xiaozi3 " align="center ">${phoneList1_5.p_content}</p>
                                <p class="xiaozi4 " align="center ">¥${phoneList1_5.p_price}</p>
                            </div>
                        </a>
                    </td>
                </c:forEach>
            </tr>
        </c:forEach>
    </table>
</div>
<div id="BiJiBen">
    <p style="font-size: 26px;float: left;">笔记本电脑</p>
    <div class="xiaozi0">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href=""><span>平板电脑</span></a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href=""><span>笔记本电脑</span></a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href=""><span>笔记本配件</span></a>
    </div>
    <table style="margin-top: 3px;">
        <c:forEach items="${allNotebookList}" var="allNotebookList" varStatus="notebookList">
            <tr height="300px">
                <c:forEach items="${notebookList.getCurrent()}" var="notebookList">
                    <td width="243px">
                        <a href="${pageContext.request.contextPath}/fore/MainServlet?flag=showProductDetail&p_id=${notebookList.p_id}">
                            <div class="RXDP2">
                                <div class="xiaoziNO"></div>
                                <div class="tu"><img
                                        src="${pageContext.request.contextPath}/Static/img/product/${notebookList.p_image}"
                                        width="150px " height="150px "/></div>
                                <p class="xiaozi2 " align="center ">${notebookList.p_name}</p>
                                <p class="xiaozi3 " align="center ">${notebookList.p_content}</p>
                                <p class="xiaozi4 " align="center ">¥${notebookList.p_price}</p>
                            </div>
                        </a>
                    </td>
                </c:forEach>
            </tr>
        </c:forEach>
    </table>
</div>
<div class="ChuanDai">
    <p style="font-size: 26px;float: left;" id="zhinengchuandai">智能穿戴</p>
    <div class="xiaozi0">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href=""><span>手环</span></a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href=""><span>手表</span></a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href=""><span>VR</span></a>
    </div>
    <table style="margin-top: 3px;">

        <c:forEach items="${allSmartWearerList}" var="allSmartWearerList" varStatus="SmartWearerList">
            <tr height="300px">
                <c:forEach items="${SmartWearerList.getCurrent()}" var="SmartWearerList">
                    <td width="243px">
                        <a href="${pageContext.request.contextPath}/fore/MainServlet?flag=showProductDetail&p_id=${SmartWearerList.p_id}">
                            <div class="RXDP2">
                                <div class="xiaoziNO"></div>
                                <div class="tu"><img
                                        src="${pageContext.request.contextPath}/Static/img/product/${SmartWearerList.p_image}"
                                        width="150px " height="150px "/></div>
                                <p class="xiaozi2 " align="center ">${SmartWearerList.p_name}</p>
                                <p class="xiaozi3 " align="center ">${SmartWearerList.p_content}</p>
                                <p class="xiaozi4 " align="center ">¥${SmartWearerList.p_price}</p>
                            </div>
                        </a>
                    </td>
                </c:forEach>
            </tr>
        </c:forEach>







    </table>
    <div id="myCarousel2" class="carousel slide">
        <!-- 轮播（Carousel）项目 -->
        <div class="carousel-inner" style="width: 1200px;height: 255px;">
            <div class="item active">
                <table>
                    <tr height="255px">
                        <td width="202px">
                            <a href="">
                                <div class="xiaokuang">
                                    <div class="xiaokuang1">
                                        <div class="xiaozi" style="background-color: deepskyblue;">
                                            <p align="center" style="color: white;">新品</p>
                                        </div>
                                        <div class="tu"><img
                                                src="${pageContext.request.contextPath}/Static/img/ZhiNengChuanDai/CDlite1.png"
                                                width="120px" height="120px"/></div>
                                        <div class="xiaokuang2" align="center"><span class="xiaozi3">限时直降20元</span>
                                        </div>
                                    </div>
                                    <p class="xiaozi2" align="center">华为手环 3</p>
                                    <p class="xiaozi4" align="center">¥269</p>
                                </div>
                            </a>
                        </td>
                        <td width="202px">
                            <a href="">
                                <div class="xiaokuang">
                                    <div class="xiaokuang1">
                                        <div class="xiaozi" style="background-color: deepskyblue;">
                                            <p align="center" style="color: white;">新品</p>
                                        </div>
                                        <div class="tu"><img
                                                src="${pageContext.request.contextPath}/Static/img/ZhiNengChuanDai/CDlite2.png"
                                                width="120px" height="120px"/></div>
                                        <div class="xiaokuang2" align="center"><span class="xiaozi3">七重定位</span></div>
                                    </div>
                                    <p class="xiaozi2" align="center">荣耀小K 2 儿童手表</p>
                                    <p class="xiaozi4" align="center">¥299</p>
                                </div>
                            </a>
                        </td>
                        <td width="202px">
                            <a href="">
                                <div class="xiaokuang">
                                    <div class="xiaokuang1">
                                        <div class="xiaoziNO"></div>
                                        <div class="tu"><img
                                                src="${pageContext.request.contextPath}/Static/img/ZhiNengChuanDai/CDlite3.png"
                                                width="120px" height="120px"/></div>
                                        <div class="xiaokuang2" align="center"><span class="xiaozi3">限时直降100元</span>
                                        </div>
                                    </div>
                                    <p class="xiaozi2" align="center">HUAWEI WATCH 2</p>
                                    <p class="xiaozi4" align="center">¥1288</p>
                                </div>
                            </a>
                        </td>
                        <td width="202px">
                            <a href="">
                                <div class="xiaokuang">
                                    <div class="xiaokuang1">
                                        <div class="xiaoziNO"></div>
                                        <div class="tu"><img
                                                src="${pageContext.request.contextPath}/Static/img/ZhiNengChuanDai/CDlite4.png"
                                                width="120px" height="120px"/></div>
                                        <div class="xiaokuang2" align="center"><span class="xiaozi3">限时直降20元</span>
                                        </div>
                                    </div>
                                    <p class="xiaozi2" align="center">华为儿童手表</p>
                                    <p class="xiaozi4" align="center">¥378</p>
                                </div>
                            </a>
                        </td>
                        <td width="202px">
                            <a href="">
                                <div class="xiaokuang">
                                    <div class="xiaokuang1">
                                        <div class="xiaozi">
                                            <p align="center" style="color: white;">爆款</p>
                                        </div>
                                        <div class="tu"><img
                                                src="${pageContext.request.contextPath}/Static/img/ZhiNengChuanDai/CDlite5.jpg"
                                                width="120px" height="120px"/></div>
                                        <div class="xiaokuang2" align="center"><span class="xiaozi3">两种佩戴方式</span></div>
                                    </div>
                                    <p class="xiaozi2" align="center">荣耀手环4 Running版</p>
                                    <p class="xiaozi4" align="center">¥99</p>
                                </div>
                            </a>
                        </td>
                        <td width="202px">
                            <a href="">
                                <div class="xiaokuang">
                                    <div class="xiaokuang1">
                                        <div class="xiaoziNO"></div>
                                        <div class="tu"><img
                                                src="${pageContext.request.contextPath}/Static/img/ZhiNengChuanDai/CDlite6.png"
                                                width="120px" height="120px"/></div>
                                        <div class="xiaokuang2" align="center"><span class="xiaozi3">低调奢华 天生不凡</span>
                                        </div>
                                    </div>
                                    <p class="xiaozi2" align="center">华为智能手表 保时捷</p>
                                    <p class="xiaozi4" align="center">¥4988</p>
                                </div>
                            </a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="item">
                <table>
                    <tr height="255px">
                        <td width="202px">
                            <a href="">
                                <div class="xiaokuang">
                                    <div class="xiaokuang1">
                                        <div class="xiaoziNO"></div>
                                        <div class="tu"><img
                                                src="${pageContext.request.contextPath}/Static/img/ZhiNengChuanDai/CDlite7.png"
                                                width="120px" height="120px"/></div>
                                        <div class="xiaokuang2" align="center"><span class="xiaozi3">精准定位 清晰通话</span>
                                        </div>
                                    </div>
                                    <p class="xiaozi2" align="center">华为儿童手表 3</p>
                                    <p class="xiaozi4" align="center">¥378</p>
                                </div>
                            </a>
                        </td>
                        <td width="202px">
                            <a href="">
                                <div class="xiaokuang">
                                    <div class="xiaokuang1">
                                        <div class="xiaoziNO"></div>
                                        <div class="tu"><img
                                                src="${pageContext.request.contextPath}/Static/img/ZhiNengChuanDai/CDlite8.png"
                                                width="120px" height="120px"/></div>
                                        <div class="xiaokuang2" align="center"><span class="xiaozi3">低调奢华 天生不凡</span>
                                        </div>
                                    </div>
                                    <p class="xiaozi2" align="center">华为智能手表 保时捷版</p>
                                    <p class="xiaozi4" align="center">¥4988</p>
                                </div>
                            </a>
                        </td>
                        <td width="202px">
                            <a href="">
                                <div class="xiaokuang">
                                    <div class="xiaokuang1">
                                        <div class="xiaoziNO"></div>
                                        <div class="tu"><img
                                                src="${pageContext.request.contextPath}/Static/img/ZhiNengChuanDai/CDlite9.png"
                                                width="120px" height="120px"/></div>
                                        <div class="xiaokuang2" align="center"><span class="xiaozi3">是手环 也是耳机</span>
                                        </div>
                                    </div>
                                    <p class="xiaozi2" align="center">华为手环B3 青春版</p>
                                    <p class="xiaozi4" align="center">¥449</p>
                                </div>
                            </a>
                        </td>
                        <td width="202px">
                            <a href="">
                                <div class="xiaokuang">
                                    <div class="xiaokuang1">
                                        <div class="xiaoziNO"></div>
                                        <div class="tu"><img
                                                src="${pageContext.request.contextPath}/Static/img/ZhiNengChuanDai/CDlite10.png"
                                                width="120px" height="120px"/></div>
                                        <div class="xiaokuang2" align="center"><span class="xiaozi3">14天持久续航</span>
                                        </div>
                                    </div>
                                    <p class="xiaozi2" align="center">华为手环3e 跑步精灵</p>
                                    <p class="xiaozi4" align="center">¥99</p>
                                </div>
                            </a>
                        </td>
                        <td width="202px">
                            <a href="">
                                <div class="xiaokuang">
                                    <div class="xiaokuang1">
                                        <div class="xiaoziNO"></div>
                                        <div class="tu"><img
                                                src="${pageContext.request.contextPath}/Static/img/ZhiNengChuanDai/CDlite11.png"
                                                width="120px" height="120px"/></div>
                                        <div class="xiaokuang2" align="center"><span class="xiaozi3"></span></div>
                                    </div>
                                    <p class="xiaozi2" align="center">华为运动手环 GPS版</p>
                                    <p class="xiaozi4" align="center">¥288</p>
                                </div>
                            </a>
                        </td>
                        <td width="202px">
                            <a href="">
                                <div class="xiaokuang">
                                    <div class="xiaokuang1">
                                        <div class="xiaoziNO"></div>
                                        <div class="tu"><img
                                                src="${pageContext.request.contextPath}/Static/img/ZhiNengChuanDai/CDlite12.png"
                                                width="120px" height="120px"/></div>
                                        <div class="xiaokuang2" align="center"><span class="xiaozi3">适配HUAWEI P20</span>
                                        </div>
                                    </div>
                                    <p class="xiaozi2" align="center">HUAWEI VR 2</p>
                                    <p class="xiaozi4" align="center">¥1999</p>
                                </div>
                            </a>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <!-- 轮播（Carousel）导航 -->
        <a class="left " href="#myCarousel2" role="button" data-slide="prev"
           style="margin-top: -190px;position: absolute;">
            <img src="${pageContext.request.contextPath}/Static/img/shangpingundongleft1.png"/>
        </a>
        <a class="right " href="#myCarousel2" role="button" data-slide="next"
           style="margin-top: -190px;margin-left:1153px;  position: absolute;">
            <img src="${pageContext.request.contextPath}/Static/img/shangpingundongright1.png"/>
        </a>
    </div>
</div>
<div class="ChuanDai">
    <p style="font-size: 26px;float: left;" id="JiaJu">智能家居</p>
    <div class="xiaozi0">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href=""><span>路由器</span></a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href=""><span>子母/分布式路由</span></a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href=""><span>电力猫/wifi放大器</span></a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href=""><span>随行wifi</span></a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href=""><span>电视盒子</span></a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href=""><span>照明</span></a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href=""><span>清洁</span></a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href=""><span>节能</span></a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href=""><span>环境</span></a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href=""><span>安防</span></a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href=""><span>健康</span></a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href=""><span>厨电</span></a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href=""><span>影音</span></a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href=""><span>卫浴</span></a>
    </div>
    <table style="margin-top: 3px;">
        <tr height="308px">
            <td width="243px" colspan="2">
                <a href="">
                    <div class="RXDP2" style="width: 470px;">
                        <div><img src="${pageContext.request.contextPath}/Static/img/ZhiNengJiaJu/jj1.jpg"
                                  style="border-radius: 10px;"/></div>
                    </div>
                </a>
            </td>
            <td width="243px">
                <a href="">
                    <div class="RXDP2">
                        <div class="xiaozi">
                            <p align="center" style="color: white;">热卖</p>
                        </div>
                        <div class="tu"><img src="${pageContext.request.contextPath}/Static/img/ZhiNengJiaJu/jj2.png"
                                             width="150px" height="150px"/></div>
                        <p class="xiaozi2" align="center">荣耀路由Pro2</p>
                        <p class="xiaozi3" align="center">四核全千兆</p>
                        <p class="xiaozi4" align="center">¥349</p>
                    </div>
                </a>
            </td>
            <td width="243px">
                <a href="">
                    <div class="RXDP2">
                        <div class="xiaozi" style="background-color: deepskyblue;">
                            <p align="center" style="color: white;">新品</p>
                        </div>
                        <div class="tu"><img src="${pageContext.request.contextPath}/Static/img/ZhiNengJiaJu/jj3.png"
                                             width="150px" height="150px"/></div>
                        <p class="xiaozi2" align="center">华为AI音响</p>
                        <p class="xiaozi3" align="center">限时直降30元</p>
                        <p class="xiaozi4" align="center">¥369</p>
                    </div>
                </a>
            </td>
            <td width="243px">
                <a href="">
                    <div class="RXDP2">
                        <div class="xiaozi" style="background-color: deepskyblue;">
                            <p align="center" style="color: white;">买赠</p>
                        </div>
                        <div class="tu"><img src="${pageContext.request.contextPath}/Static/img/ZhiNengJiaJu/jj4.png"
                                             width="150px" height="150px"/></div>
                        <p class="xiaozi2" align="center">荣耀YOYO智能音箱</p>
                        <p class="xiaozi3" align="center">只能通话</p>
                        <p class="xiaozi4" align="center">¥199</p>
                    </div>
                </a>
            </td>
        </tr>
        <tr>
            <td width="243px">
                <a href="">
                    <div class="RXDP2">
                        <div class="xiaoziNO"></div>
                        <div class="tu"><img src="${pageContext.request.contextPath}/Static/img/ZhiNengJiaJu/jj5.png"
                                             width="150px" height="150px"/></div>
                        <p class="xiaozi2" align="center">华为路由WS5200增强版</p>
                        <p class="xiaozi3" align="center">限时直降12元</p>
                        <p class="xiaozi4" align="center">¥217</p>
                    </div>
                </a>
            </td>
            <td width="243px">
                <a href="">
                    <div class="RXDP2">
                        <div class="xiaozi" style="background-color: deepskyblue;">
                            <p align="center" style="color: white;">新品</p>
                        </div>
                        <div class="tu"><img src="${pageContext.request.contextPath}/Static/img/ZhiNengJiaJu/jj6.png"
                                             width="150px" height="150px"/></div>
                        <p class="xiaozi2" align="center">荣耀路由2S</p>
                        <p class="xiaozi3" align="center">4颗信号放大器</p>
                        <p class="xiaozi4" align="center">¥199</p>
                    </div>
                </a>
            </td>
            <td width="243px">
                <a href="">
                    <div class="RXDP2">
                        <div class="xiaoziNO"></div>
                        <div class="tu"><img src="${pageContext.request.contextPath}/Static/img/ZhiNengJiaJu/jj7.png"
                                             width="150px" height="150px"/></div>
                        <p class="xiaozi2" align="center">华为路由器WS5105</p>
                        <p class="xiaozi3" align="center">限时直降15元</p>
                        <p class="xiaozi4" align="center">¥144</p>
                    </div>
                </a>
            </td>
            <td width="243px">
                <a href="">
                    <div class="RXDP2">
                        <div class="xiaozi" style="background-color: deepskyblue;">
                            <p align="center" style="color: white;">新品</p>
                        </div>
                        <div class="tu"><img src="${pageContext.request.contextPath}/Static/img/ZhiNengJiaJu/jj8.png"
                                             width="150px" height="150px"/></div>
                        <p class="xiaozi2" align="center">荣耀存储</p>
                        <p class="xiaozi3" align="center">1TB大容量 即插即备份</p>
                        <p class="xiaozi4" align="center">¥699</p>
                    </div>
                </a>
            </td>
            <td width="243px">
                <a href="">
                    <div class="RXDP2">
                        <div class="xiaozi" style="background-color: deepskyblue;">
                            <p align="center" style="color: white;">新品</p>
                        </div>
                        <div class="tu"><img src="${pageContext.request.contextPath}/Static/img/ZhiNengJiaJu/jj9.png"
                                             width="150px" height="150px"/></div>
                        <p class="xiaozi2" align="center">华为备咖存储</p>
                        <p class="xiaozi3" align="center">限时直降50元 </p>
                        <p class="xiaozi4" align="center">¥649</p>
                    </div>
                </a>
            </td>
        </tr>
    </table>

    <div id="myCarousel3" class="carousel slide">
        <!-- 轮播（Carousel）项目 -->
        <div class="carousel-inner" style="width: 1200px;height: 255px;">
            <div class="item active">
                <table>
                    <tr height="255px">
                        <td width="202px">
                            <a href="">
                                <div class="xiaokuang">
                                    <div class="xiaokuang1">
                                        <div class="xiaoziNO"></div>
                                        <div class="tu"><img
                                                src="${pageContext.request.contextPath}/Static/img/ZhiNengJiaJu/jjLite1.png"
                                                width="120px" height="120px"/></div>
                                        <div class="xiaokuang2" align="center"><span class="xiaozi3">限时直降20元</span>
                                        </div>
                                    </div>
                                    <p class="xiaozi2" align="center">华为路由器A1</p>
                                    <p class="xiaozi4" align="center">¥379</p>
                                </div>
                            </a>
                        </td>
                        <td width="202px">
                            <a href="">
                                <div class="xiaokuang">
                                    <div class="xiaokuang1">
                                        <div class="xiaoziNO"></div>
                                        <div class="tu"><img
                                                src="${pageContext.request.contextPath}/Static/img/ZhiNengJiaJu/jjLite2.png"
                                                width="120px" height="120px"/></div>
                                        <div class="xiaokuang2" align="center"><span class="xiaozi3">智能语音蓝牙遥控</span>
                                        </div>
                                    </div>
                                    <p class="xiaozi2" align="center">荣耀盒子Pro</p>
                                    <p class="xiaozi4" align="center">¥419</p>
                                </div>
                            </a>
                        </td>
                        <td width="202px">
                            <a href="">
                                <div class="xiaokuang">
                                    <div class="xiaokuang1">
                                        <div class="xiaoziNO"></div>
                                        <div class="tu"><img
                                                src="${pageContext.request.contextPath}/Static/img/ZhiNengJiaJu/jjLite3.png"
                                                width="120px" height="120px"/></div>
                                        <div class="xiaokuang2" align="center"><span class="xiaozi3">限时直降50元</span>
                                        </div>
                                    </div>
                                    <p class="xiaozi2" align="center">华为子母路由器Q1</p>
                                    <p class="xiaozi4" align="center">¥409</p>
                                </div>
                            </a>
                        </td>
                        <td width="202px">
                            <a href="">
                                <div class="xiaokuang">
                                    <div class="xiaokuang1">
                                        <div class="xiaoziNO"></div>
                                        <div class="tu"><img
                                                src="${pageContext.request.contextPath}/Static/img/ZhiNengJiaJu/jjLite4.png"
                                                width="120px" height="120px"/></div>
                                        <div class="xiaokuang2" align="center"><span class="xiaozi3">双核双千兆</span></div>
                                    </div>
                                    <p class="xiaozi2" align="center">荣耀路由 X2</p>
                                    <p class="xiaozi4" align="center">¥149</p>
                                </div>
                            </a>
                        </td>
                        <td width="202px">
                            <a href="">
                                <div class="xiaokuang">
                                    <div class="xiaokuang1">
                                        <div class="xiaoziNO"></div>
                                        <div class="tu"><img
                                                src="${pageContext.request.contextPath}/Static/img/ZhiNengJiaJu/jjLite5.png"
                                                width="120px" height="120px"/></div>
                                        <div class="xiaokuang2" align="center"><span class="xiaozi3">限时直降20元</span>
                                        </div>
                                    </div>
                                    <p class="xiaozi2" align="center">华为路由WS5200</p>
                                    <p class="xiaozi4" align="center">¥179</p>
                                </div>
                            </a>
                        </td>
                        <td width="202px">
                            <a href="">
                                <div class="xiaokuang">
                                    <div class="xiaokuang1">
                                        <div class="xiaoziNO"></div>
                                        <div class="tu"><img
                                                src="${pageContext.request.contextPath}/Static/img/ZhiNengJiaJu/jjLite6.png"
                                                width="120px" height="120px"/></div>
                                        <div class="xiaokuang2" align="center"><span class="xiaozi3">限时直降5元</span></div>
                                    </div>
                                    <p class="xiaozi2" align="center">华为wifi放大器</p>
                                    <p class="xiaozi4" align="center">¥94</p>
                                </div>
                            </a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="item">
                <table>
                    <tr height="255px">
                        <td width="202px">
                            <a href="">
                                <div class="xiaokuang">
                                    <div class="xiaokuang1">
                                        <div class="xiaoziNO"></div>
                                        <div class="tu"><img
                                                src="${pageContext.request.contextPath}/Static/img/ZhiNengJiaJu/jjLite7.png"
                                                width="120px" height="120px"/></div>
                                        <div class="xiaokuang2" align="center"><span class="xiaozi3">限时最高优惠100元</span>
                                        </div>
                                    </div>
                                    <p class="xiaozi2" align="center">荣耀分布式路由</p>
                                    <p class="xiaozi4" align="center">¥799</p>
                                </div>
                            </a>
                        </td>
                        <td width="202px">
                            <a href="">
                                <div class="xiaokuang">
                                    <div class="xiaokuang1">
                                        <div class="xiaoziNO"></div>
                                        <div class="tu"><img
                                                src="${pageContext.request.contextPath}/Static/img/ZhiNengJiaJu/jjLite8.png"
                                                width="120px" height="120px"/></div>
                                        <div class="xiaokuang2" align="center"><span class="xiaozi3">新品上市</span></div>
                                    </div>
                                    <p class="xiaozi2" align="center">华为wifi 放大器</p>
                                    <p class="xiaozi4" align="center">¥94</p>
                                </div>
                            </a>
                        </td>
                        <td width="202px">
                            <a href="">
                                <div class="xiaokuang">
                                    <div class="xiaokuang1">
                                        <div class="xiaoziNO"></div>
                                        <div class="tu"><img
                                                src="${pageContext.request.contextPath}/Static/img/ZhiNengJiaJu/jjLite9.png"
                                                width="120px" height="120px"/></div>
                                        <div class="xiaokuang2" align="center"><span class="xiaozi3">限时直降10元</span>
                                        </div>
                                    </div>
                                    <p class="xiaozi2" align="center">荣耀路由X1 增强版</p>
                                    <p class="xiaozi4" align="center">¥139</p>
                                </div>
                            </a>
                        </td>
                        <td width="202px">
                            <a href="">
                                <div class="xiaokuang">
                                    <div class="xiaokuang1">
                                        <div class="xiaoziNO"></div>
                                        <div class="tu"><img
                                                src="${pageContext.request.contextPath}/Static/img/ZhiNengJiaJu/jjLite10.png"
                                                width="120px" height="120px"/></div>
                                        <div class="xiaokuang2" align="center"><span class="xiaozi3">支持5G信号智能优先选择</span>
                                        </div>
                                    </div>
                                    <p class="xiaozi2" align="center">华为路由器WS5100</p>
                                    <p class="xiaozi4" align="center">¥119</p>
                                </div>
                            </a>
                        </td>
                        <td width="202px">
                            <a href="">
                                <div class="xiaokuang">
                                    <div class="xiaokuang1">
                                        <div class="xiaoziNO"></div>
                                        <div class="tu"><img
                                                src="${pageContext.request.contextPath}/Static/img/ZhiNengJiaJu/jjLite11.png"
                                                width="120px" height="120px"/></div>
                                        <div class="xiaokuang2" align="center"><span class="xiaozi3">即插即用 自动配对</span>
                                        </div>
                                    </div>
                                    <p class="xiaozi2" align="center">荣耀wifi 穿墙宝</p>
                                    <p class="xiaozi4" align="center">¥268</p>
                                </div>
                            </a>
                        </td>
                        <td width="202px">
                            <a href="">
                                <div class="xiaokuang">
                                    <div class="xiaokuang1">
                                        <div class="xiaoziNO"></div>
                                        <div class="tu"><img
                                                src="${pageContext.request.contextPath}/Static/img/ZhiNengJiaJu/jjLite12.png"
                                                width="120px" height="120px"/></div>
                                        <div class="xiaokuang2" align="center"><span class="xiaozi3">轻薄小巧 口袋Wifi</span>
                                        </div>
                                    </div>
                                    <p class="xiaozi2" align="center">华为随行wifi 2 畅享版</p>
                                    <p class="xiaozi4" align="center">¥309</p>
                                </div>
                            </a>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <!-- 轮播（Carousel）导航 -->
        <a class="left " href="#myCarousel3" role="button" data-slide="prev"
           style="margin-top: -190px;position: absolute;">
            <img src="${pageContext.request.contextPath}/Static/img/shangpingundongleft1.png"/>
        </a>
        <a class="right " href="#myCarousel3" role="button" data-slide="next"
           style="margin-top: -190px;margin-left:1153px;  position: absolute;">
            <img src="${pageContext.request.contextPath}/Static/img/shangpingundongright1.png"/>
        </a>
    </div>
    <a href=""><img src="${pageContext.request.contextPath}/Static/img/ZhiNengJiaJu/jjLong.jpg"
                    style="margin-top: 10px;border-radius: 10px;"/></a>
</div>

<!--热销配件-->
<div class="ChuanDai">
    <p style="font-size: 26px;float: left;" id="ReXiaoPeiJian">热销配件</p>
    <div class="xiaozi0">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href=""><span>保护壳</span></a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href=""><span>保护套</span></a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href=""><span>贴膜</span></a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href=""><span>移动电源</span></a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href=""><span>耳机</span></a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href=""><span>充电器/线材</span></a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href=""><span>自拍杆/支架</span></a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href=""><span>音箱</span></a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href=""><span>U盘/存储卡</span></a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href=""><span>摄像机/镜头</span></a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href=""><span>智能硬件</span></a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href=""><span>表带</span></a>
    </div>
    <table style="margin-top: 3px;">
        <tr height="308px">
            <td width="243px" colspan="2">
                <a href="">
                    <div class="RXDP2" style="width: 470px;">
                        <div><img src="${pageContext.request.contextPath}/Static/img/ReXiaoPeiJian/p1j.png"
                                  style="border-radius: 10px;"/></div>
                    </div>
                </a>
            </td>
            <td width="243px">
                <a href="">
                    <div class="RXDP2">
                        <div class="xiaozi" style="background-color: deepskyblue;">
                            <p align="center" style="color: white;">新品</p>
                        </div>
                        <div class="tu"><img src="${pageContext.request.contextPath}/Static/img/ReXiaoPeiJian/pj2.png"
                                             width="150px" height="150px"/></div>
                        <p class="xiaozi2" align="center">HUAWEI FreeBuds 2系列</p>
                        <p class="xiaozi3" align="center">限量赠礼 最高3期免息</p>
                        <p class="xiaozi4" align="center">¥999</p>
                    </div>
                </a>
            </td>
            <td width="243px">
                <a href="">
                    <div class="RXDP2">
                        <div class="xiaozi" style="background-color: deepskyblue;">
                            <p align="center" style="color: white;">新品</p>
                        </div>
                        <div class="tu"><img src="${pageContext.request.contextPath}/Static/img/ReXiaoPeiJian/pj3.png"
                                             width="150px" height="150px"/></div>
                        <p class="xiaozi2" align="center">华为安居智能摄像机</p>
                        <p class="xiaozi3" align="center">360度全景视角</p>
                        <p class="xiaozi4" align="center">¥299</p>
                    </div>
                </a>
            </td>
            <td width="243px">
                <a href="">
                    <div class="RXDP2">
                        <div class="xiaozi" style="width: 90px;">
                            <p align="center" style="color: white;">会员专享优惠</p>
                        </div>
                        <div class="tu"><img src="${pageContext.request.contextPath}/Static/img/ReXiaoPeiJian/pj4.png"
                                             width="150px" height="150px"/></div>
                        <p class="xiaozi2" align="center">荣耀移动电源2</p>
                        <p class="xiaozi3" align="center">18W双向快充</p>
                        <p class="xiaozi4" align="center">¥99</p>
                    </div>
                </a>
            </td>
        </tr>
        <tr>
            <td width="243px">
                <a href="">
                    <div class="RXDP2">
                        <div class="xiaozi" style="background-color: deepskyblue;">
                            <p align="center" style="color: white;">新品</p>
                        </div>
                        <div class="tu"><img src="${pageContext.request.contextPath}/Static/img/ReXiaoPeiJian/pj5.png"
                                             width="150px" height="150px"/></div>
                        <p class="xiaozi2" align="center">华为便携打印机</p>
                        <p class="xiaozi3" align="center">无墨打印技术</p>
                        <p class="xiaozi4" align="center">¥589</p>
                    </div>
                </a>
            </td>
            <td width="243px">
                <a href="">
                    <div class="RXDP2">
                        <div class="xiaozi" style="background-color: deepskyblue;width: 90px;">
                            <p align="center" style="color: white;">最高优惠50元</p>
                        </div>
                        <div class="tu"><img src="${pageContext.request.contextPath}/Static/img/ReXiaoPeiJian/pj6.png"
                                             width="150px" height="150px"/></div>
                        <p class="xiaozi2" align="center">FlyPods系列无线耳机</p>
                        <p class="xiaozi3" align="center">享分期免息</p>
                        <p class="xiaozi4" align="center">¥749</p>
                    </div>
                </a>
            </td>
            <td width="243px">
                <a href="">
                    <div class="RXDP2">
                        <div class="xiaozi" style="background-color: deepskyblue;">
                            <p align="center" style="color: white;">新品</p>
                        </div>
                        <div class="tu"><img src="${pageContext.request.contextPath}/Static/img/ReXiaoPeiJian/pj7.png"
                                             width="150px" height="150px"/></div>
                        <p class="xiaozi2" align="center">华为无线充电器</p>
                        <p class="xiaozi3" align="center">支持Qi无线充电标准</p>
                        <p class="xiaozi4" align="center">¥99</p>
                    </div>
                </a>
            </td>
            <td width="243px">
                <a href="">
                    <div class="RXDP2">
                        <div class="xiaozi" style="width: 90px;">
                            <p align="center" style="color: white;">最高优惠70元</p>
                        </div>
                        <div class="tu"><img src="${pageContext.request.contextPath}/Static/img/ReXiaoPeiJian/pj8.png"
                                             width="150px" height="150px"/></div>
                        <p class="xiaozi2" align="center">荣耀智能体脂秤</p>
                        <p class="xiaozi3" align="center">科学减脂</p>
                        <p class="xiaozi4" align="center">¥99</p>
                    </div>
                </a>
            </td>
            <td width="243px">
                <a href="">
                    <div class="RXDP2">
                        <div class="xiaozi">
                            <p align="center" style="color: white;">爆款</p>
                        </div>
                        <div class="tu"><img src="${pageContext.request.contextPath}/Static/img/ReXiaoPeiJian/pj9.png"
                                             width="150px" height="150px"/></div>
                        <p class="xiaozi2" align="center">荣耀智能体脂秤</p>
                        <p class="xiaozi3" align="center">健身减脂必备 </p>
                        <p class="xiaozi4" align="center">¥129</p>
                    </div>
                </a>
            </td>
        </tr>
    </table>
    <div id="myCarousel4" class="carousel slide">
        <!-- 轮播（Carousel）项目 -->
        <div class="carousel-inner" style="width: 1200px;height: 255px;">
            <div class="item active">
                <table>
                    <tr height="255px">
                        <td width="202px">
                            <a href="">
                                <div class="xiaokuang">
                                    <div class="xiaokuang1">
                                        <div class="xiaozi" style="width: 90px;">
                                            <p align="center" style="color: white;">最高优惠70元</p>
                                        </div>
                                        <div class="tu"><img
                                                src="${pageContext.request.contextPath}/Static/img/ReXiaoPeiJian/pjLite1.png"
                                                width="120px" height="120px"/></div>
                                        <div class="xiaokuang2" align="center"><span class="xiaozi3">10天待机</span></div>
                                    </div>
                                    <p class="xiaozi2" align="center">荣耀xSport运动蓝牙耳机</p>
                                    <p class="xiaozi4" align="center">¥179</p>
                                </div>
                            </a>
                        </td>
                        <td width="202px">
                            <a href="">
                                <div class="xiaokuang">
                                    <div class="xiaokuang1">
                                        <div class="xiaoziNO"></div>
                                        <div class="tu"><img
                                                src="${pageContext.request.contextPath}/Static/img/ReXiaoPeiJian/pjLite2.png"
                                                width="120px" height="120px"/></div>
                                        <div class="xiaokuang2" align="center"><span class="xiaozi3">3种降噪模式切换</span>
                                        </div>
                                    </div>
                                    <p class="xiaozi2" align="center">华为主动降噪耳机3</p>
                                    <p class="xiaozi4" align="center">¥349</p>
                                </div>
                            </a>
                        </td>
                        <td width="202px">
                            <a href="">
                                <div class="xiaokuang">
                                    <div class="xiaokuang1">
                                        <div class="xiaozi" style="width: 90px;">
                                            <p align="center" style="color: white;">最高优惠30元</p>
                                        </div>
                                        <div class="tu"><img
                                                src="${pageContext.request.contextPath}/Static/img/ReXiaoPeiJian/pjLite3.png"
                                                width="120px" height="120px"/></div>
                                        <div class="xiaokuang2" align="center"><span class="xiaozi3">限时直降50元</span>
                                        </div>
                                    </div>
                                    <p class="xiaozi2" align="center">360度全景云台</p>
                                    <p class="xiaozi4" align="center">¥269</p>
                                </div>
                            </a>
                        </td>
                        <td width="202px">
                            <a href="">
                                <div class="xiaokuang">
                                    <div class="xiaokuang1">
                                        <div class="xiaozi">
                                            <p align="center" style="color: white;">爆款</p>
                                        </div>
                                        <div class="tu"><img
                                                src="${pageContext.request.contextPath}/Static/img/ReXiaoPeiJian/pjLite4.png"
                                                width="120px" height="120px"/></div>
                                        <div class="xiaokuang2" align="center"><span class="xiaozi3">开启自拍新时代</span>
                                        </div>
                                    </div>
                                    <p class="xiaozi2" align="center">华为无线三脚架自拍杆</p>
                                    <p class="xiaozi4" align="center">¥89</p>
                                </div>
                            </a>
                        </td>
                        <td width="202px">
                            <a href="">
                                <div class="xiaokuang">
                                    <div class="xiaokuang1">
                                        <div class="xiaoziNO"></div>
                                        <div class="tu"><img
                                                src="${pageContext.request.contextPath}/Static/img/ReXiaoPeiJian/pjLite5.png"
                                                width="120px" height="120px"/></div>
                                        <div class="xiaokuang2" align="center"><span class="xiaozi3">无需墨盒/高清画质</span>
                                        </div>
                                    </div>
                                    <p class="xiaozi2" align="center">荣耀MINI照片打印机</p>
                                    <p class="xiaozi4" align="center">¥599</p>
                                </div>
                            </a>
                        </td>
                        <td width="202px">
                            <a href="">
                                <div class="xiaokuang">
                                    <div class="xiaokuang1">
                                        <div class="xiaozi">
                                            <p align="center" style="color: white;">热卖</p>
                                        </div>
                                        <div class="tu"><img
                                                src="${pageContext.request.contextPath}/Static/img/ReXiaoPeiJian/pjLite6.png"
                                                width="120px" height="120px"/></div>
                                        <div class="xiaokuang2" align="center"><span class="xiaozi3">支持9V2A快充</span>
                                        </div>
                                    </div>
                                    <p class="xiaozi2" align="center">华为车载充电器快充版</p>
                                    <p class="xiaozi4" align="center">¥59</p>
                                </div>
                            </a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="item">
                <table>
                    <tr height="255px">
                        <td width="202px">
                            <a href="">
                                <div class="xiaokuang">
                                    <div class="xiaokuang1">
                                        <div class="xiaoziNO"></div>
                                        <div class="tu"><img
                                                src="${pageContext.request.contextPath}/Static/img/ReXiaoPeiJian/pjLite7.png"
                                                width="120px" height="120px"/></div>
                                        <div class="xiaokuang2" align="center"><span class="xiaozi3">支持Qi无线充电标准</span>
                                        </div>
                                    </div>
                                    <p class="xiaozi2" align="center">华为无线充电器</p>
                                    <p class="xiaozi4" align="center">¥99</p>
                                </div>
                            </a>
                        </td>
                        <td width="202px">
                            <a href="">
                                <div class="xiaokuang">
                                    <div class="xiaokuang1">
                                        <div class="xiaozi">
                                            <p align="center" style="color: white;">爆款</p>
                                        </div>
                                        <div class="tu"><img
                                                src="${pageContext.request.contextPath}/Static/img/ReXiaoPeiJian/pjLite8.png"
                                                width="120px" height="120px"/></div>
                                        <div class="xiaokuang2" align="center"><span class="xiaozi3">健身减脂必备</span></div>
                                    </div>
                                    <p class="xiaozi2" align="center">华为智能体重秤</p>
                                    <p class="xiaozi4" align="center">¥169</p>
                                </div>
                            </a>
                        </td>
                        <td width="202px">
                            <a href="">
                                <div class="xiaokuang">
                                    <div class="xiaokuang1">
                                        <div class="xiaoziNO"></div>
                                        <div class="tu"><img
                                                src="${pageContext.request.contextPath}/Static/img/ReXiaoPeiJian/pjLite9.png"
                                                width="120px" height="120px"/></div>
                                        <div class="xiaokuang2" align="center"><span class="xiaozi3">3种降噪模式切换</span>
                                        </div>
                                    </div>
                                    <p class="xiaozi2" align="center">华为主动降噪耳机3</p>
                                    <p class="xiaozi4" align="center">¥399</p>
                                </div>
                            </a>
                        </td>
                        <td width="202px">
                            <a href="">
                                <div class="xiaokuang">
                                    <div class="xiaokuang1">
                                        <div class="xiaoziNO"></div>
                                        <div class="tu"><img
                                                src="${pageContext.request.contextPath}/Static/img/ReXiaoPeiJian/pjLite10.png"
                                                width="120px" height="120px"/></div>
                                        <div class="xiaokuang2" align="center"><span class="xiaozi3">360全景云台</span>
                                        </div>
                                    </div>
                                    <p class="xiaozi2" align="center">智能摄像机</p>
                                    <p class="xiaozi4" align="center">¥299</p>
                                </div>
                            </a>
                        </td>
                        <td width="202px">
                            <a href="">
                                <div class="xiaokuang">
                                    <div class="xiaokuang1">
                                        <div class="xiaoziNO"></div>
                                        <div class="tu"><img
                                                src="${pageContext.request.contextPath}/Static/img/ReXiaoPeiJian/pjLite11.png"
                                                width="120px" height="120px"/></div>
                                        <div class="xiaokuang2" align="center"><span class="xiaozi3">开启自拍新时代</span>
                                        </div>
                                    </div>
                                    <p class="xiaozi2" align="center">华为三角自拍杆</p>
                                    <p class="xiaozi4" align="center">¥119</p>
                                </div>
                            </a>
                        </td>
                        <td width="202px">
                            <a href="">
                                <div class="xiaokuang">
                                    <div class="xiaokuang1">
                                        <div class="xiaoziNO"></div>
                                        <div class="tu"><img
                                                src="${pageContext.request.contextPath}/Static/img/ReXiaoPeiJian/pjLite12.png"
                                                width="120px" height="120px"/></div>
                                        <div class="xiaokuang2" align="center"><span class="xiaozi3">高清画质</span></div>
                                    </div>
                                    <p class="xiaozi2" align="center">荣耀mini照片打印机</p>
                                    <p class="xiaozi4" align="center">¥119</p>
                                </div>
                            </a>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <!-- 轮播（Carousel）导航 -->
        <a class="left " href="#myCarousel4" role="button" data-slide="prev"
           style="margin-top: -190px;position: absolute;">
            <img src="${pageContext.request.contextPath}/Static/img/shangpingundongleft1.png"/>
        </a>
        <a class="right " href="#myCarousel4" role="button" data-slide="next"
           style="margin-top: -190px;margin-left:1153px;  position: absolute;">
            <img src="${pageContext.request.contextPath}/Static/img/shangpingundongright1.png"/>
        </a>
    </div>
</div>

<!--品牌配件-->
<div class="ChuanDai">
    <p style="font-size: 26px;float: left;" id="PinPaiPeiJian">品牌配件</p>
    <div class="xiaozi0">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href=""><span>保护壳</span></a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href=""><span>保护套</span></a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href=""><span>贴膜</span></a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href=""><span>移动电源</span></a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href=""><span>耳机</span></a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href=""><span>充电器/线材</span></a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href=""><span>自拍杆/支架</span></a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href=""><span>音箱</span></a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href=""><span>U盘/存储卡</span></a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href=""><span>摄像机/镜头</span></a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href=""><span>智能硬件</span></a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href=""><span>表带</span></a>
    </div>
    <table style="margin-top: 3px;">
        <tr height="308px">
            <td width="243px" colspan="2">
                <a href="">
                    <div class="RXDP2" style="width: 470px;">
                        <div><img src="${pageContext.request.contextPath}/Static/img/PinPaiPeiJian/pppj1.jpg"
                                  style="border-radius: 10px;"/></div>
                    </div>
                </a>
            </td>
            <td width="243px">
                <a href="">
                    <div class="RXDP2">
                        <div class="xiaoziNO"></div>
                        <div class="tu"><img src="${pageContext.request.contextPath}/Static/img/PinPaiPeiJian/pppj2.png"
                                             width="150px" height="150px"/></div>
                        <p class="xiaozi2" align="center">720全效空气净化器</p>
                        <p class="xiaozi3" align="center">灭菌</p>
                        <p class="xiaozi4" align="center">¥1199</p>
                    </div>
                </a>
            </td>
            <td width="243px">
                <a href="">
                    <div class="RXDP2">
                        <div class="xiaozi" style="background-color: deepskyblue;">
                            <p align="center" style="color: white;">热卖</p>
                        </div>
                        <div class="tu"><img src="${pageContext.request.contextPath}/Static/img/PinPaiPeiJian/pppj3.png"
                                             width="150px" height="150px"/></div>
                        <p class="xiaozi2" align="center">欧普读写台灯</p>
                        <p class="xiaozi3" align="center">用好光才爱眼</p>
                        <p class="xiaozi4" align="center">¥169</p>
                    </div>
                </a>
            </td>
            <td width="243px">
                <a href="">
                    <div class="RXDP2">
                        <div class="xiaozi" style="background-color: deepskyblue;">
                            <p align="center" style="color: white;">直降</p>
                        </div>
                        <div class="tu"><img src="${pageContext.request.contextPath}/Static/img/PinPaiPeiJian/pppj4.png"
                                             width="150px" height="150px"/></div>
                        <p class="xiaozi2" align="center">科沃斯 智能扫地机器人</p>
                        <p class="xiaozi3" align="center">净彩生活 不止优雅</p>
                        <p class="xiaozi4" align="center">¥899</p>
                    </div>
                </a>
            </td>
        </tr>
        <tr>
            <td width="243px">
                <a href="">
                    <div class="RXDP2">
                        <div class="xiaoziNO"></div>
                        <div class="tu"><img src="${pageContext.request.contextPath}/Static/img/PinPaiPeiJian/pppj5.png"
                                             width="150px" height="150px"/></div>
                        <p class="xiaozi2" align="center">M5 平板电脑皮套键盘</p>
                        <p class="xiaozi3" align="center">轻薄优雅 质感亲肤</p>
                        <p class="xiaozi4" align="center">¥459</p>
                    </div>
                </a>
            </td>
            <td width="243px">
                <a href="">
                    <div class="RXDP2">
                        <div class="xiaozi" style="background-color: deepskyblue;">
                            <p align="center" style="color: white;">新品</p>
                        </div>
                        <div class="tu"><img src="${pageContext.request.contextPath}/Static/img/PinPaiPeiJian/pppj6.png"
                                             width="150px" height="150px"/></div>
                        <p class="xiaozi2" align="center">NOLO VR 交互套件</p>
                        <p class="xiaozi3" align="center">让VR好看又好玩</p>
                        <p class="xiaozi4" align="center">¥1299</p>
                    </div>
                </a>
            </td>
            <td width="243px">
                <a href="">
                    <div class="RXDP2">
                        <div class="xiaoziNO"></div>
                        <div class="tu"><img src="${pageContext.request.contextPath}/Static/img/PinPaiPeiJian/pppj7.png"
                                             width="150px" height="150px"/></div>
                        <p class="xiaozi2" align="center">极米无屏电视Z6X</p>
                        <p class="xiaozi3" align="center">限时直降15元</p>
                        <p class="xiaozi4" align="center">¥2999</p>
                    </div>
                </a>
            </td>
            <td width="243px">
                <a href="">
                    <div class="RXDP2">
                        <div class="xiaoziNO"></div>
                        <div class="tu"><img src="${pageContext.request.contextPath}/Static/img/PinPaiPeiJian/pppj8.png"
                                             width="150px" height="150px"/></div>
                        <p class="xiaozi2" align="center">北通G1手游游戏手柄</p>
                        <p class="xiaozi3" align="center">专属游戏手柄</p>
                        <p class="xiaozi4" align="center">¥239</p>
                    </div>
                </a>
            </td>
            <td width="243px">
                <a href="">
                    <div class="RXDP2">
                        <div class="xiaozi" style="background-color: deepskyblue;">
                            <p align="center" style="color: white;">热卖</p>
                        </div>
                        <div class="tu"><img src="${pageContext.request.contextPath}/Static/img/PinPaiPeiJian/pppj9.png"
                                             width="150px" height="150px"/></div>
                        <p class="xiaozi2" align="center">720全智能净化器</p>
                        <p class="xiaozi3" align="center">强效除雾霾</p>
                        <p class="xiaozi4" align="center">¥2149</p>
                    </div>
                </a>
            </td>
        </tr>
    </table>
    <div id="myCarousel5" class="carousel slide">
        <!-- 轮播（Carousel）项目 -->
        <div class="carousel-inner" style="width: 1200px;height: 255px;">
            <div class="item active">
                <table>
                    <tr height="255px">
                        <td width="202px">
                            <a href="">
                                <div class="xiaokuang">
                                    <div class="xiaokuang1">
                                        <div class="xiaoziNO"></div>
                                        <div class="tu"><img
                                                src="${pageContext.request.contextPath}/Static/img/PinPaiPeiJian/pppjLite1.png"
                                                width="120px" height="120px"/></div>
                                        <div class="xiaokuang2" align="center"><span class="xiaozi3">指挥湿拖 高效覆盖</span>
                                        </div>
                                    </div>
                                    <p class="xiaozi2" align="center">科沃斯智能扫地机器人</p>
                                    <p class="xiaozi4" align="center">¥2999</p>
                                </div>
                            </a>
                        </td>
                        <td width="202px">
                            <a href="">
                                <div class="xiaokuang">
                                    <div class="xiaokuang1">
                                        <div class="xiaoziNO"></div>
                                        <div class="tu"><img
                                                src="${pageContext.request.contextPath}/Static/img/PinPaiPeiJian/pppjLite2.png"
                                                width="120px" height="120px"/></div>
                                        <div class="xiaokuang2" align="center"><span class="xiaozi3">异步快速开门智能锁</span>
                                        </div>
                                    </div>
                                    <p class="xiaozi2" align="center">品多智能指纹门锁</p>
                                    <p class="xiaozi4" align="center">¥2999</p>
                                </div>
                            </a>
                        </td>
                        <td width="202px">
                            <a href="">
                                <div class="xiaokuang">
                                    <div class="xiaokuang1">
                                        <div class="xiaoziNO"></div>
                                        <div class="tu"><img
                                                src="${pageContext.request.contextPath}/Static/img/PinPaiPeiJian/pppjLite3.png"
                                                width="120px" height="120px"/></div>
                                        <div class="xiaokuang2" align="center"><span class="xiaozi3">扫码投屏 4K高清</span>
                                        </div>
                                    </div>
                                    <p class="xiaozi2" align="center">海备思高清无线投屏器</p>
                                    <p class="xiaozi4" align="center">¥229</p>
                                </div>
                            </a>
                        </td>
                        <td width="202px">
                            <a href="">
                                <div class="xiaokuang">
                                    <div class="xiaokuang1">
                                        <div class="xiaoziNO"></div>
                                        <div class="tu"><img
                                                src="${pageContext.request.contextPath}/Static/img/PinPaiPeiJian/pppjLite4.png"
                                                width="120px" height="120px"/></div>
                                        <div class="xiaokuang2" align="center"><span class="xiaozi3">华为智选 生态产品</span>
                                        </div>
                                    </div>
                                    <p class="xiaozi2" align="center">三思全彩灯泡</p>
                                    <p class="xiaozi4" align="center">¥89</p>
                                </div>
                            </a>
                        </td>
                        <td width="202px">
                            <a href="">
                                <div class="xiaokuang">
                                    <div class="xiaokuang1">
                                        <div class="xiaozi">
                                            <p align="center" style="color: white;">买赠</p>
                                        </div>
                                        <div class="tu"><img
                                                src="${pageContext.request.contextPath}/Static/img/PinPaiPeiJian/pppjLite5.png"
                                                width="120px" height="120px"/></div>
                                        <div class="xiaokuang2" align="center"><span class="xiaozi3"></span></div>
                                    </div>
                                    <p class="xiaozi2" align="center">根元智能鞋柜护理机</p>
                                    <p class="xiaozi4" align="center">¥3180</p>
                                </div>
                            </a>
                        </td>
                        <td width="202px">
                            <a href="">
                                <div class="xiaokuang">
                                    <div class="xiaokuang1">
                                        <div class="xiaoziNO"></div>
                                        <div class="tu"><img
                                                src="${pageContext.request.contextPath}/Static/img/PinPaiPeiJian/pppjLite6.png"
                                                width="120px" height="120px"/></div>
                                        <div class="xiaokuang2" align="center"><span class="xiaozi3">5种安全保护 过硬品质</span>
                                        </div>
                                    </div>
                                    <p class="xiaozi2" align="center">Type-C 通用U盘</p>
                                    <p class="xiaozi4" align="center">¥129</p>
                                </div>
                            </a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="item">
                <table>
                    <tr height="255px">
                        <td width="202px">
                            <a href="">
                                <div class="xiaokuang">
                                    <div class="xiaokuang1">
                                        <div class="xiaozi">
                                            <p align="center" style="color: white;">热卖</p>
                                        </div>
                                        <div class="tu"><img
                                                src="${pageContext.request.contextPath}/Static/img/PinPaiPeiJian/pppjLite7.png"
                                                width="120px" height="120px"/></div>
                                        <div class="xiaokuang2" align="center"><span class="xiaozi3">强效除霾</span></div>
                                    </div>
                                    <p class="xiaozi2" align="center">720全只能净化器</p>
                                    <p class="xiaozi4" align="center">¥2149</p>
                                </div>
                            </a>
                        </td>
                        <td width="202px">
                            <a href="">
                                <div class="xiaokuang">
                                    <div class="xiaokuang1">
                                        <div class="xiaoziNO"></div>
                                        <div class="tu"><img
                                                src="${pageContext.request.contextPath}/Static/img/PinPaiPeiJian/pppjLite8.png"
                                                width="120px" height="120px"/></div>
                                        <div class="xiaokuang2" align="center"><span class="xiaozi3">海量存储 携带方便</span>
                                        </div>
                                    </div>
                                    <p class="xiaozi2" align="center">闪迪高速存储TF卡</p>
                                    <p class="xiaozi4" align="center">¥45.90</p>
                                </div>
                            </a>
                        </td>
                        <td width="202px">
                            <a href="">
                                <div class="xiaokuang">
                                    <div class="xiaokuang1">
                                        <div class="xiaoziNO"></div>
                                        <div class="tu"><img
                                                src="${pageContext.request.contextPath}/Static/img/PinPaiPeiJian/pppjLite9.png"
                                                width="120px" height="120px"/></div>
                                        <div class="xiaokuang2" align="center"><span class="xiaozi3">释放你的双手</span></div>
                                    </div>
                                    <p class="xiaozi2" align="center">商务蓝牙耳机</p>
                                    <p class="xiaozi4" align="center">¥368</p>
                                </div>
                            </a>
                        </td>
                        <td width="202px">
                            <a href="">
                                <div class="xiaokuang">
                                    <div class="xiaokuang1">
                                        <div class="xiaozi">
                                            <p align="center" style="color: white;">热卖</p>
                                        </div>
                                        <div class="tu"><img
                                                src="${pageContext.request.contextPath}/Static/img/PinPaiPeiJian/pppjLite10.png"
                                                width="120px" height="120px"/></div>
                                        <div class="xiaokuang2" align="center"><span class="xiaozi3">一款为花粉打造的智能灯泡</span>
                                        </div>
                                    </div>
                                    <p class="xiaozi2" align="center">Sengled生迪智能LED灯泡</p>
                                    <p class="xiaozi4" align="center">¥39</p>
                                </div>
                            </a>
                        </td>
                        <td width="202px">
                            <a href="">
                                <div class="xiaokuang">
                                    <div class="xiaokuang1">
                                        <div class="xiaoziNO"></div>
                                        <div class="tu"><img
                                                src="${pageContext.request.contextPath}/Static/img/PinPaiPeiJian/pppjLite11.png"
                                                width="120px" height="120px"/></div>
                                        <div class="xiaokuang2" align="center"><span class="xiaozi3">多设备通用办公键盘</span>
                                        </div>
                                    </div>
                                    <p class="xiaozi2" align="center">BOW 三折蓝牙背光键盘</p>
                                    <p class="xiaozi4" align="center">¥299</p>
                                </div>
                            </a>
                        </td>
                        <td width="202px">
                            <a href="">
                                <div class="xiaokuang">
                                    <div class="xiaokuang1">
                                        <div class="xiaoziNO"></div>
                                        <div class="tu"><img
                                                src="${pageContext.request.contextPath}/Static/img/PinPaiPeiJian/pppjLite12.png"
                                                width="120px" height="120px"/></div>
                                        <div class="xiaokuang2" align="center"><span class="xiaozi3">超便捷的果蔬料理机</span>
                                        </div>
                                    </div>
                                    <p class="xiaozi2" align="center">便携榨汁机</p>
                                    <p class="xiaozi4" align="center">¥328</p>
                                </div>
                            </a>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <!-- 轮播（Carousel）导航 -->
        <a class="left " href="#myCarousel5" role="button" data-slide="prev"
           style="margin-top: -190px;position: absolute;">
            <img src="${pageContext.request.contextPath}/Static/img/shangpingundongleft1.png"/>
        </a>
        <a class="right " href="#myCarousel5" role="button" data-slide="next"
           style="margin-top: -190px;margin-left:1153px;  position: absolute;">
            <img src="${pageContext.request.contextPath}/Static/img/shangpingundongright1.png"/>
        </a>
    </div>
</div>
<div id="adv2">
    <a href=""><img src="${pageContext.request.contextPath}/Static/img/adv/adv2.jpg" style="border-radius: 10px;"/></a>
</div>
<div id="zuixia">
    <div id="zx1">
        <ul>
            <li style="margin-left: -40px;margin-top: 20px;">
                <img src="${pageContext.request.contextPath}/Static/img/zuixia/1.png" width="40px" height="40px"
                     style="float:left;">
                <p style="margin-top:10px; margin-left: 10px;float: left;font-size: 18px;color: #3a3a3a;">百强企业 品质保证</p>
            </li>
            <li style="margin-left: 130px;margin-top: 20px;">
                <img src="${pageContext.request.contextPath}/Static/img/zuixia/2.png" width="40px" height="40px"
                     style="float:left;">
                <p style="margin-top:10px; margin-left: 10px;float: left;font-size: 18px;color: #3a3a3a;">7天退货 15天换货</p>
            </li>
            <li style="margin-left: 130px;margin-top: 20px;">
                <img src="${pageContext.request.contextPath}/Static/img/zuixia/3.png" width="40px" height="40px"
                     style="float:left;">
                <p style="margin-top:10px; margin-left: 10px;float: left;font-size: 18px;color: #3a3a3a;">48元起免运费</p>
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
                <img src="${pageContext.request.contextPath}/Static/img/zuixia/GuanZhuVmall/dherweima.jpg" width="108px"
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
        <p style="float: left;color: #a4a4a4;font-size: 12px;margin-left: 20px;">隐私声明 服务协议 COOKIES Copyright © 2012-2019
            华为软件技术有限公司 版权所有 保留一切权利 公安备案 苏公网安备32011402010009号</p>
        <p style="float: left;color: #a4a4a4;font-size: 12px;margin-left: 102px;">苏ICP备17040376号-6
            增值电信业务经营许可证：苏B2-20130048号| 网络文化经营许可证：苏网文[2015] 1599-026号| 备案主体编号：32201911426827</p>
        <img src="${pageContext.request.contextPath}/Static/img/zuixia/5.jpg" width="70px" height="24px"
             style="margin-left: 220px;margin-top: 20px;"/>
        <img src="${pageContext.request.contextPath}/Static/img/zuixia/6.png" width="70px" height="24px"
             style="margin-left: 15px;margin-top: 20px;"/>
    </div>
</div>
<div id="xuanfu">
    <div id="xuanfu1">
        <a href=""><img src="${pageContext.request.contextPath}/Static/img/xuanfu/1-1.png" width="38px" height="41px"
                        id="xft1"/></a>
        <div id="xfz1">
            <p style="line-height: 37px;color: #777;" align="center">购物车</p>
        </div>
    </div>
    <div id="xuanfu2">
        <a href=""><img src="${pageContext.request.contextPath}/Static/img/xuanfu/2-1.png" width="38px" height="41px"
                        id="xft2"/></a>
        <div id="xfz2">
            <p style="line-height: 37px;color: #777;" align="center">在线客服</p>
        </div>
    </div>
    <div id="xuanfu3">
        <a href=""><img src="${pageContext.request.contextPath}/Static/img/xuanfu/3-1.png" width="38px" height="41px"
                        id="xft3"/></a>
        <div id="xfz3">
            <p style="line-height: 37px;color: #777;" align="center">意见反馈</p>
        </div>
    </div>
    <div id="xuanfu4">
        <a href="#top"><img src="${pageContext.request.contextPath}/Static/img/xuanfu/4-1.png" width="38px"
                            height="41px"
                            id="xft4"/></a>
        <div id="xfz4">
            <p style="line-height: 37px;color: #777;" align="center">返回顶部</p>
        </div>
    </div>
</div>
<div id="celan">
    <ul>
        <li>
            <a href="javascript:CeLanTiaoZhuan('#ShouJi');" onmouseover="clzbsOn('clsj1')"
               onmouseout="clzbsOut('clsj1')" id="clsj1">手机</a>
            <div id="xiaohong1"></div>
        </li>
        <li>
            <a href="javascript:CeLanTiaoZhuan('#BiJiBen');" id="clbjb2" onmouseover="clzbsOn('clbjb2')"
               onmouseout="clzbsOut('clbjb2')">笔记本电脑</a>
            <div id="xiaohong2"></div>
        </li>
<%--        <li>--%>
<%--            <a href="javascript:CeLanTiaoZhuan('#PingBan');" id="clpb3" onmouseover="clzbsOn('clpb3')"--%>
<%--               onmouseout="clzbsOut('clpb3')">精品平板</a>--%>
<%--            <div id="xiaohong3"></div>--%>
<%--        </li>--%>
        <li>
            <a href="javascript:CeLanTiaoZhuan('#zhinengchuandai');" id="clcd4" onmouseover="clzbsOn('clcd4')"
               onmouseout="clzbsOut('clcd4')">智能穿戴</a>
            <div id="xiaohong4"></div>
        </li>
        <li>
            <a href="javascript:CeLanTiaoZhuan('#JiaJu');" id="cljj5" onmouseover="clzbsOn('cljj5')"
               onmouseout="clzbsOut('cljj5')">智能家居</a>
            <div id="xiaohong5"></div>
        </li>
        <li>
            <a href="javascript:CeLanTiaoZhuan('#ReXiaoPeiJian');" id="clrxpj6" onmouseover="clzbsOn('clrxpj6')"
               onmouseout="clzbsOut('clrxpj6')">热销配件</a>
            <div id="xiaohong6"></div>
        </li>
        <li>
            <a href="javascript:CeLanTiaoZhuan('#PinPaiPeiJian');" id="clpppj7" onmouseover="clzbsOn('clpppj7')"
               onmouseout="clzbsOut('clpppj7')">品牌配件</a>
            <div id="xiaohong7"></div>
        </li>
    </ul>
</div>

<script>
    //轮播图按钮
    $(document).ready(function () {
        $('#myCarousel > .left').hover(function () {
            $('#myCarousel > .left > img').attr("src", "${pageContext.request.contextPath}/Static/img/ZhuCaiDan/LunBo/lunboleft2.png");
        }, function () {
            $('#myCarousel > .left > img').attr("src", "${pageContext.request.contextPath}/Static/img/ZhuCaiDan/LunBo/lunboleft1.png");
        });
        $('#myCarousel > .right').hover(function () {
            $('#myCarousel > .right > img').attr("src", "${pageContext.request.contextPath}/Static/img/ZhuCaiDan/LunBo/lunboright2.png");
        }, function () {
            $('#myCarousel > .right > img').attr("src", "${pageContext.request.contextPath}/Static/img/ZhuCaiDan/LunBo/lunboright1.png");
        });
    });
    //智能穿戴小图滚动
    $(document).ready(function() {
        $("#myCarousel2").carousel('pause');
        $('#myCarousel2 > .left').hide();
        $('#myCarousel2 > .left').click( function () {
            $('#myCarousel2 > .right').show();
            $('#myCarousel2 > .left').hide();
        });
        $('#myCarousel2 > .left').hover(function() {
            $('#myCarousel2 > .left > img').attr("src", "${pageContext.request.contextPath}/Static/img/shangpingundongleft2.png");
        }, function() {
            $('#myCarousel2 > .left > img').attr("src", "${pageContext.request.contextPath}/Static/img/shangpingundongleft1.png");
        });
        $('#myCarousel2 > .right').click( function () {
            $('#myCarousel2 > .left').show();
            $('#myCarousel2 > .right').hide();
        });
        $('#myCarousel2 > .right').hover(function() {
            $('#myCarousel2 > .right > img').attr("src", "${pageContext.request.contextPath}/Static/img/shangpingundongright2.png");
        }, function() {
            $('#myCarousel2 > .right > img').attr("src", "${pageContext.request.contextPath}/Static/img/shangpingundongright1.png");
        });
    });
    //智能家居小图滚动
    $(document).ready(function() {
        $("#myCarousel3").carousel('pause');
        $('#myCarousel3 > .left').hide();
        $('#myCarousel3 > .left').click( function () {
            $('#myCarousel3 > .right').show();
            $('#myCarousel3 > .left').hide();
        });
        $('#myCarousel3 > .left').hover(function() {
            $('#myCarousel3 > .left > img').attr("src", "${pageContext.request.contextPath}/Static/img/shangpingundongleft2.png");
        }, function() {
            $('#myCarousel3 > .left > img').attr("src", "${pageContext.request.contextPath}/Static/img/shangpingundongleft1.png");
        });
        $('#myCarousel3 > .right').click( function () {
            $('#myCarousel3 > .left').show();
            $('#myCarousel3 > .right').hide();
        });
        $('#myCarousel3 > .right').hover(function() {
            $('#myCarousel3 > .right > img').attr("src", "${pageContext.request.contextPath}/Static/img/shangpingundongright2.png");
        }, function() {
            $('#myCarousel3 > .right > img').attr("src", "${pageContext.request.contextPath}/Static/img/shangpingundongright1.png");
        });
    });
    //热销配件小图滚动
    $(document).ready(function() {
        $("#myCarousel4").carousel('pause');
        $('#myCarousel4 > .left').hide();
        $('#myCarousel4 > .left').click( function () {
            $('#myCarousel4 > .right').show();
            $('#myCarousel4 > .left').hide();
        });
        $('#myCarousel4 > .left').hover(function() {
            $('#myCarousel4 > .left > img').attr("src", "${pageContext.request.contextPath}/Static/img/shangpingundongleft2.png");
        }, function() {
            $('#myCarousel4 > .left > img').attr("src", "${pageContext.request.contextPath}/Static/img/shangpingundongleft1.png");
        });
        $('#myCarousel4 > .right').click( function () {
            $('#myCarousel4 > .left').show();
            $('#myCarousel4 > .right').hide();
        });
        $('#myCarousel4 > .right').hover(function() {
            $('#myCarousel4 > .right > img').attr("src", "${pageContext.request.contextPath}/Static/img/shangpingundongright2.png");
        }, function() {
            $('#myCarousel4 > .right > img').attr("src", "${pageContext.request.contextPath}/Static/img/shangpingundongright1.png");
        });
    });

    $(document).ready(function() {
        $("#myCarousel5").carousel('pause');
        $('#myCarousel5 > .left').hide();
        $('#myCarousel5 > .left').click( function () {
            $('#myCarousel5 > .right').show();
            $('#myCarousel5 > .left').hide();
        });
        $('#myCarousel5 > .left').hover(function() {
            $('#myCarousel5 > .left > img').attr("src", "${pageContext.request.contextPath}/Static/img/shangpingundongleft2.png");
        }, function() {
            $('#myCarousel5 > .left > img').attr("src", "${pageContext.request.contextPath}/Static/img/shangpingundongleft1.png");
        });
        $('#myCarousel5 > .right').click( function () {
            $('#myCarousel5 > .left').show();
            $('#myCarousel5 > .right').hide();
        });
        $('#myCarousel5 > .right').hover(function() {
            $('#myCarousel5 > .right > img').attr("src", "${pageContext.request.contextPath}/Static/img/shangpingundongright2.png");
        }, function() {
            $('#myCarousel5 > .right > img').attr("src", "${pageContext.request.contextPath}/Static/img/shangpingundongright1.png");
        });
    });
</script>
</body>
</html>
