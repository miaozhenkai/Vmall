<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>华为商城</title>
    <link href="${pageContext.request.contextPath}/Static/Carshop_files/gouwuche_css.css" rel="stylesheet">
    <script type="text/javascript" src="${pageContext.request.contextPath}/Static/js_mzk/jquery-3.3.1.js"></script>
</head>

<body>
<div id="app">
    <div class="sc">
        <div class="shortcut">
            <div class="layout">
                <div class="s-sub">
                    <ul>
                        <li>
                            <a href="${pageContext.request.contextPath}/index.jsp">首页</a>
                        </li>
                        <li>
                            <a href="" target="_blank">华为官网</a>
                        </li>
                        <li>
                            <a href="" target="_blank">荣耀官网</a>
                        </li>
                        <li>
                            <a href="" target="_blank">花粉俱乐部</a>
                        </li>
                        <li>
                            <a href="" target="_blank">V码(优购码)</a>
                        </li>
                        <li>
                            <a href="" target="_blank">企业购</a>
                        </li>
                        <!---->
                        <li>
                            <a href="">Select Region</a>
                        </li>
                        <li>
                            <div class="h">
                                <a>更多精彩</a>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="s-main s-main-no-minicart">
                    <ul>
                        <li>
                            <div class="header-toolbar">
                                <div class="header-toolbar-item">
                                    <div class="i-login">
                                        <div class="h">
                                            <a href="" rel="nofollow">${user.u_name}</a>
                                            <a href="${pageContext.request.contextPath}/fore/UsersServlet?flag=Logout" rel="nofollow">&nbsp;&nbsp;注销</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="hide"></li>
                        <li>
                            <a href="${pageContext.request.contextPath}/fore/OrderServlet?flag=showOrder">我的订单</a>
                        </li>
                        <li>
                            <div class="h">
                                <a href="">客户服务</a>
                            </div>
                        </li>
                        <li>
                            <div class="h">
                                <a href="">网站导航</a>
                            </div>
                        </li>
                        <li>
                            <div class="h">
                                <a href="" class="icon-dropdown">手机版</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <!---->
        </div>
        <div class="header order-header">
            <div class="layout">
                <div class="left">
                    <div class="logo logo-word">
                        <a href="${pageContext.request.contextPath}/index.jsp" title="华为商城"><img
                                src="${pageContext.request.contextPath}/Static/Carshop_files/gouwuche_logo_1.png"
                                alt="华为商城"></a> <span>我的购物车</span></div>
                </div>
                <div class="right">
                    <div class="progress-area progress-area-3">
                        <div id="progress-cart" class="progress-sc-area">我的购物车</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="layout ">
            <%--            <div class="login-prompt">--%>
            <%--                您还没有登录！登录后可查看之前加入的商品--%>
            <%--                <a href="javascript:;" rel="nofollow">登录</a>--%>
            <%--            </div>--%>
            <div id="showl">
                <div class="hr-20"></div>
                <c:if test="${not empty CSList}">
                    <div class="sc-list">
                        <div class="sc-pro-title clearfix">
                            <label class="checkbox">&nbsp;
<%--                            <input type="checkbox" class=""  onclick="">全选--%>
                            </label>
                            <ul class="clearfix">
                                <li>商品</li>
                                <li>单价</li>
                                <li>数量</li>
                                <li>小计</li>
                                <li>操作</li>
                            </ul>
                        </div>
                        <form id="cart-form"
                              action="${pageContext.request.contextPath}/fore/OrderServlet?flag=createOrder"
                              method="post">
                            <div class="sc-pro">
                                <c:set var="total" value="0"></c:set>
                                <c:forEach var="CS" items="${CSList}">
                                    <div>
                                        <div class="sc-pro-list clearfix">
                                            <label class="checkbox">
                                                <input type="checkbox" checked="checked" name="p_id"
                                                       value="${CS.product.p_id}" onclick="jisuanTotal()"/>
                                            </label>
                                            <div class="sc-pro-area">
                                                <div class="sc-pro-main clearfix">
                                                    <a href="" class="p-img"><img
                                                            src="${pageContext.request.contextPath}/Static/img/product/${CS.product.p_image}"
                                                            width="100px" height="100px"></a>
                                                    <ul>
                                                        <li>
                                                            <a href="" class="p-name">${CS.product.p_name}</a>
                                                        </li>
                                                        <li>
                                                            <div class="p-price">
                                                                <span>¥&nbsp;${CS.product.p_price}</span>
                                                                <!---->
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="p-stock">
                                                                <div class="p-stock-area"><input type="text"
                                                                                                 class="p-stock-text"
                                                                                                 id="c_number"
                                                                                                 value="${CS.c_number}">
                                                                    <p class="p-stock-btn">
                                                                        <c:if test="${CS.c_number>1}">
                                                                            <c:if test="${CS.product.p_stock>CS.c_number}">
                                                                                <a href="javascript:jia('${CS.c_id}','${CS.c_number+1}');"
                                                                                   class="">+</a>
                                                                                <a href="javascript:jia('${CS.c_id}','${CS.c_number-1}');"
                                                                                   class="">−</a>
                                                                            </c:if>
                                                                        </c:if>
                                                                        <c:if test="${CS.c_number==1 }">
                                                                            <a href="javascript:jia('${CS.c_id}','${CS.c_number+1}');"
                                                                               class="">+</a>
                                                                            <a class="disabled">−</a>
                                                                        </c:if>
                                                                        <c:if test="${CS.c_number==CS.product.p_stock }">
                                                                            <a class="disabled">+</a>
                                                                            <a href="javascript:jia('${CS.c_id}','${CS.c_number-1}');"
                                                                               class="">−</a>
                                                                        </c:if>
                                                                    </p>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="p-price-total">¥&nbsp;<span
                                                                id="td_${CS.product.p_id }">${CS.product.p_price*CS.c_number}</span>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:delCS('${CS.c_id}');"
                                                               seed="cart-item-del" class="p-del">删除</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <!---->
                                    </div>
                                    <c:set var="total" value="${total+CS.product.p_price*CS.c_number}"></c:set>
                                </c:forEach>

                            </div>
                        </form>
                    </div>
                    <div class="sc-total-tool layout clearfix ">
<%--                        <div class="sc-total-control"><label class="checkbox"><input type="checkbox"> 全选</label>--%>
<%--                            <a href="javascript:;">删除</a>--%>
<%--                        </div>--%>
                        <div class="sc-total-btn ">
                            <a href="javascript:tijiao();">立即结算</a>
                        </div>
                        <div class="sc-total-price">
                            <p><label>总计：</label> <span>¥&nbsp; <span id="totaltext">${total}</span></span>
                                <em><b>不含运费</b></em></p>
                            <div class="total-choose">已选择
                                <em id="yixuan">${fn:length(CSList)} </em>件商品
                            </div>
                        </div>
                    </div>
                </c:if>
                <c:if test="${empty CSList}">
                    <div class="sc-empty">
                        <p>您的购物车里什么也没有哦~</p>
                        <a href="${pageContext.request.contextPath}/index.jsp">去逛逛</a>
                    </div>
                </c:if>
                <div class="hr-60"></div>
            </div>
            <!---->
        </div>

        <script>
        function tijiao() {
                $('form').submit();
            }

            function jia(c_id, c_number) {
                $.ajax({
                    url: "${pageContext.request.contextPath}/fore/MainServlet?flag=changeCarShopNumber",
                    type: "post",
                    data: {c_number: c_number, c_id: c_id},
                    success: function (objstr) {
                        $("#showl").load(location.href + " #showl");
                    },
                    error: function () {
                        alert("ajax失败了");
                    }
                });
            }

            //复选按钮计算总金额
            function jisuanTotal() {
                //获取所有的复选按钮
                var chks = document.getElementsByName("p_id");
                var total = 0;
                var yixuan = 0;
                for (var i = 0; i < chks.length; i++) {
                    //判断复选按钮是否被选中
                    if (chks[i].checked == true) {
                        var pid = chks[i].value;
                        var xiaoji = document.getElementById("td_" + pid).innerHTML;
                        total += parseInt(xiaoji);
                        yixuan = yixuan + 1;
                    }
                }
                //为合计赋值
                $('#yixuan').html(yixuan);
                $('#totaltext').html(total);
            }

            function delCS(c_id) {
                var r = confirm("确定要删除吗!？")
                if (r == true) {
                    $.ajax({
                        url: "${pageContext.request.contextPath}/fore/MainServlet?flag=deleteCarShop",
                        type: "post",
                        data: {c_id: c_id},
                        success: function (objstr) {
                            alert(objstr);
                            $("#showl").load(location.href + " #showl")
                        },
                        error: function () {
                            alert("ajax失败了");
                        }
                    });
                }
            }
        </script>


        <div>
            <div class="slogan-container">
                <div class="slogan">
                    <ul>
                        <li class="s1">
                            <a target="_blank" href="https://www.vmall.com/help/faq-934.html" rel="nofollow"><i></i>百强企业&nbsp;品质保证</a>
                        </li>
                        <li class="s2">
                            <a target="_blank" href="https://www.vmall.com/help/faq-834.html" rel="nofollow"><i></i>7天退货&nbsp;15天换货</a>
                        </li>
                        <li class="s3">
                            <a target="_blank" href="https://www.vmall.com/help/faq-4367.html" rel="nofollow"><i></i>
                                <span>48元起免运费</span></a>
                        </li>
                        <li class="s4">
                            <a target="_blank" href="http://consumer.huawei.com/cn/support/service-center/index.htm"
                               rel="nofollow"><i></i>1000家维修网点&nbsp;全国联保</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="service-container">
                <div class="service">
                    <div class="service-l fl">
                        <dl class="s1">
                            <dt><p class="title">购物相关</p></dt>
                            <dd>
                                <ol>
                                    <li>
                                        <a target="_blank" href="https://www.vmall.com/help/faq-4355.html"
                                           rel="nofollow">购物指南</a>
                                    </li>
                                    <li>
                                        <a target="_blank" href="https://www.vmall.com/help/faq-4367.html"
                                           rel="nofollow">配送方式</a>
                                    </li>
                                    <li>
                                        <a target="_blank" href="https://www.vmall.com/help/faq-4357.html"
                                           rel="nofollow">支付方式</a>
                                    </li>
                                    <li>
                                        <a target="_blank" href="https://www.vmall.com/help/category-16.html"
                                           rel="nofollow">常见问题</a>
                                    </li>
                                </ol>
                            </dd>
                        </dl>
                        <dl class="s2">
                            <dt><p class="title">保修与退换货</p></dt>
                            <dd>
                                <ol>
                                    <li>
                                        <a target="_blank" href="https://www.vmall.com/help/faq-833.html"
                                           rel="nofollow">保修政策</a>
                                    </li>
                                    <li>
                                        <a target="_blank" href="https://www.vmall.com/help/faq-834.html"
                                           rel="nofollow">退换货政策</a>
                                    </li>
                                    <li>
                                        <a target="_blank" href="https://www.vmall.com/help/faq-5259.html"
                                           rel="nofollow">退换货流程</a>
                                    </li>
                                    <li>
                                        <a target="_blank"
                                           href="http://consumer.huawei.com/cn/support/warranty-query/index.htm"
                                           rel="nofollow">保修状态查询</a>
                                    </li>
                                    <li>
                                        <a target="_blank" href="http://c-ver.huawei.com/web/" rel="nofollow">配件防伪查询</a>
                                    </li>
                                </ol>
                            </dd>
                        </dl>
                        <dl class="s3">
                            <dt><p class="title">维修与技术支持</p></dt>
                            <dd>
                                <ol>
                                    <li>
                                        <a target="_blank" href="" rel="nofollow">售后网点</a>
                                    </li>
                                    <li>
                                        <a target="_blank"
                                           href="http://consumer.huawei.com/cn/support/reservation/index.htm"
                                           rel="nofollow">预约维修</a>
                                    </li>
                                    <li>
                                        <a target="_blank"
                                           href="http://consumer.huawei.com/cn/support/express-repair/index.htm"
                                           rel="nofollow">手机寄修</a>
                                    </li>
                                    <li>
                                        <a target="_blank"
                                           href="http://consumer.huawei.com/cn/support/sparepart-price/index.htm"
                                           rel="nofollow">备件价格查询</a>
                                    </li>
                                    <li>
                                        <a target="_blank"
                                           href="http://consumer.huawei.com/cn/support/door-to-door-service/"
                                           rel="nofollow">上门服务</a>
                                    </li>
                                </ol>
                            </dd>
                        </dl>
                        <dl class="s4">
                            <dt><p class="title">特色服务</p></dt>
                            <dd>
                                <ol>
                                    <li>
                                        <a target="_blank" href="" rel="nofollow">防伪查询</a>
                                    </li>
                                    <li>
                                        <a target="_blank" href="" rel="nofollow">补购保障</a>
                                    </li>
                                    <li>
                                        <a target="_blank" href="" rel="nofollow">以旧换新</a>
                                    </li>
                                    <li>
                                        <a target="_blank" href="" rel="nofollow">礼品包装</a>
                                    </li>
                                </ol>
                            </dd>
                        </dl>
                        <dl class="s5">
                            <dt><p class="title">关于我们</p></dt>
                            <dd>
                                <ol>
                                    <li>
                                        <a target="_blank" href="" rel="nofollow">公司介绍</a>
                                    </li>
                                    <li>
                                        <a target="_blank" href="" rel="nofollow">华为商城简介</a>
                                    </li>
                                    <li>
                                        <a target="_blank" href="" rel="nofollow">华为线下门店</a>
                                    </li>
                                    <li>
                                        <a target="_blank" href="" rel="nofollow">荣耀线下门店</a>
                                    </li>
                                    <li>
                                        <a target="_blank" href="" rel="nofollow">诚征英才</a>
                                    </li>
                                    <li>
                                        <a href="javascript:;" title="意见反馈">意见反馈</a>
                                    </li>
                                </ol>
                            </dd>
                        </dl>
                        <dl id="footerS6Swiper" class="s6 swiper-container">
                            <dt class="relative">
                                <p class="title">友情链接</p>

                            </dt>
                            <dd class="swiper-wrapper service-list clearfix" style="height: 110px; width: 1379.95px;">
                                <ol class="swiper-slide swiper-slide-visible swiper-slide-active"
                                    style="width: 153.328px; height: 110px;">
                                    <li>
                                        <a>华为集团</a>
                                    </li>
                                    <li>
                                        <a href="" textvalue="华为CBG官网">华为CBG官网</a>
                                    </li>
                                    <li>
                                        <a>荣耀官网</a>
                                    </li>
                                    <li>
                                        <a textvalue="花粉俱乐部">花粉俱乐部</a>
                                    </li>
                                    <li>
                                        <a href="">网站地图</a><br></li>
                                </ol>
                                <ol class="swiper-slide" style="width: 153.328px; height: 110px;">
                                    <li>
                                        <a>爱旅官网</a>
                                    </li>
                                    <li>
                                        <a>万表网</a>
                                    </li>
                                    <li>
                                        <a>中商情报网</a>
                                    </li>
                                    <li>
                                        <a>刷机精灵</a>
                                    </li>
                                </ol>
                                <ol class="swiper-slide" style="width: 153.328px; height: 110px;">
                                    <li>
                                        <a textvalue="华为手机">华为手机</a>
                                    </li>
                                    <li>
                                        <a>智能电视</a>
                                    </li>
                                    <li>
                                        <a>UC浏览器</a>
                                    </li>
                                    <li>
                                        <a>中关村商城</a>
                                    </li>
                                </ol>
                                <ol class="swiper-slide" style="width: 153.328px; height: 110px;">
                                    <li>
                                        <a>酷狗音乐</a>
                                    </li>
                                    <li>
                                        <a>百信手机网</a>
                                    </li>
                                    <li>
                                        <a>卡宝宝网</a>
                                    </li>
                                    <li>
                                        <a textvalue="多特软件下载">多特软件下载</a>
                                    </li>
                                </ol>
                                <ol class="swiper-slide" style="width: 153.328px; height: 110px;">
                                    <li>
                                        <a>同步助手</a>
                                    </li>
                                    <li>
                                        <a>蜂鸟摄影网</a>
                                    </li>
                                    <li>
                                        <a>奇珀论坛</a>
                                    </li>
                                    <li>
                                        <a>家具商城</a>
                                    </li>
                                </ol>
                                <ol class="swiper-slide" style="width: 153.328px; height: 110px;">
                                    <li>
                                        <a>欧宝丽珠宝</a>
                                    </li>
                                    <li>
                                        <a>亿智蘑菇</a>
                                    </li>
                                    <li>
                                        <a>安卓市场</a>
                                    </li>
                                    <li>
                                        <a>阿里巴巴生意经</a>
                                    </li>
                                </ol>
                                <ol class="swiper-slide" style="width: 153.328px; height: 110px;">
                                    <li>
                                        <a>手机大全</a>
                                    </li>
                                    <li>
                                        <a>安卓软件园</a>
                                    </li>
                                    <li>
                                        <a>智机论坛</a>
                                    </li>
                                    <li>
                                        <a>电子产品世界</a>
                                    </li>
                                </ol>
                                <ol class="swiper-slide" style="width: 153.328px; height: 110px;">
                                    <li>
                                        <a>历趣网</a>
                                    </li>
                                    <li>
                                        <a>网购返利</a>
                                    </li>
                                    <li>
                                        <a title="Apple110">Apple110</a>
                                    </li>
                                    <li>
                                        <a textvalue="91手机门户网">91手机门户网</a>
                                    </li>
                                    <li>
                                        <a>移动叔叔</a>
                                    </li>
                                </ol>
                                <ol class="swiper-slide" style="width: 153.328px; height: 110px;">
                                    <li>
                                        <a>荣耀Magic</a>
                                    </li>
                                    <li>
                                        <a>携程租车</a>
                                    </li>
                                </ol>
                            </dd>
                        </dl>
                    </div>
                    <div class="service-r fl">
                        <dl class="s7">
                            <dt><p class="title">400-088-6888</p></dt>
                            <dd>
                                <ol>
                                    <li>
                                        <a>7x24小时客服热线（仅收市话费）</a>
                                    </li>
                                </ol>
                            </dd>
                            <dd>
                                <a rel="nofollow" href="" class="service-btn btn-line-primary"> 在线客服</a>
                            </dd>
                        </dl>
                        <div class="service-code clearfix">
                            <h2>关注Vmall：</h2>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer-container">
                <div class="footer">
                    <div class="footer-warrant-area clearfix">
                        <p class="footer-warrant-logo fl">
                            <a href=""><img
                                    src="${pageContext.request.contextPath}/Static/Carshop_files/gouwuche_logo_2.png"></a>
                        </p>
                        <div class="fl">
                            <ul class="footer-warrant-link">
                                <li>
                                    <a href="">华为集团</a>
                                </li>
                                <li>
                                    <a href="https://consumer.huawei.com/cn/">华为CBG官网</a>
                                </li>
                                <li>
                                    <a href="http://www.honor.cn/">荣耀官网</a>
                                </li>
                                <li>
                                    <a href="https://club.huawei.com/">花粉俱乐部</a>
                                </li>
                                <li>
                                    <a href="http://appstore.huawei.com/">华为应用市场</a>
                                </li>
                                <li>
                                    <a href="https://emui.huawei.com/cn/">EMUI</a>
                                </li>
                                <li>
                                    <a href="https://cloud.huawei.com/">华为终端云空间</a>
                                </li>
                                <li>
                                    <a href="https://developer.huawei.com/cn/">开发者联盟</a>
                                </li>
                                <li>
                                    <a href="https://m.vmall.com/">华为商城手机版</a>
                                </li>
                                <li>
                                    <a href="https://www.vmall.com/shopdc/sitemap.html">网站地图</a>
                                </li>
                            </ul>
                            <a href="https://www.vmall.com/help/faq-2635.html" target="_blank" title="隐私声明"
                               rel="nofollow">隐私声明</a>
                            <a href="https://www.vmall.com/help/faq-778.html" target="_blank" title="服务协议"
                               rel="nofollow"> 服务协议</a>
                            <a href="https://www.vmall.com/help/faq-11810.html" target="_blank" title="COOKIES"
                               rel="nofollow"> COOKIES</a> Copyright © 2012-2019 华为软件技术有限公司 版权所有 保留一切权利 公安备案
                            <a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=32011402010009"
                               target="_blank" rel="nofollow">苏公网安备32011402010009号</a><br>
                            <a target="_blank" href="http://www.miitbeian.gov.cn/" rel="nofollow">苏ICP备17040376号-6</a>
                            增值电信业务经营许可证：苏B2-20130048号<em>| </em>网络文化经营许可证：
                            <a href="" target="_blank" rel="nofollow">苏网文[2015] 1599-026号</a>
                        </div>
                        <p class="fr footer-warrant-img">
                            <a rel="nofollow" class="fl"><img
                                    src="${pageContext.request.contextPath}/Static/Carshop_files/gouwuche_tu_3.jpg"
                                    alt="TRUSTe隐私认证" title="TRUSTe隐私认证"></a>
                            <a rel="nofollow" class="fl"><img
                                    src="${pageContext.request.contextPath}/Static/Carshop_files/gouwuche_tu_4.png"
                                    alt="电子营业执照" title="电子营业执照"></a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>

</html>
