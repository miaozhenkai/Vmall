<%--
  Created by IntelliJ IDEA.
  User: Miaozhenkai
  Date: 2019/5/16
  Time: 20:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <a href="" class="abiance">我的订单</a>
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
<div class="logotiao" style="box-shadow: 0 3px 6px rgba(0,0,0,0.04);width: 1899px;">
    <div class="logo" style="margin-left: 350px">
        <a href="${pageContext.request.contextPath}/index.jsp"><img src="${pageContext.request.contextPath}/Static/img/logo.png" height="36px"/></a>
    </div>
    <div class="zhuanqu">
        <ul>
            <li>
                <a href=""><img src="${pageContext.request.contextPath}/Static/img/huaweizhuanqu.png" height="24px"></a>
            </li>
            <li>
                <a href=""><img src="${pageContext.request.contextPath}/Static/img/rongyaozhuanqu.png" height="24px"></a>
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
<div class="main_position w_1100" style="width: 1200px">
    您现在的位置：<a href="./">首页</a> > <a href="goodslist.php">全部产品</a> > ${product.p_name}
</div>
<!--list_show_sec start-->
<div class="list_show_sec w_1100 clear" style="width: 1200px">
    <!----list_show_sec_img start-->
    <div class="list_show_sec_img fl">
        <div id="showbox">
            <img src="${pageContext.request.contextPath}/Static/img/product/${product.p_image}" width="400" height="400"/>
        </div><!--展示图片盒子-->
    </div>
    <!--list_show_sec_img end-->
    <!--list_show_sec_txt start-->
    <div class="list_show_sec_txt fr">
        <div class="show_tips">
            <img src="${pageContext.request.contextPath}/Static/picture/tip1.jpg"></div>
        <div class="name">${product.p_name}</div>
        <div class="price">
            <div class="li clear">
                <div class="name" style="color: #c01b21;">${product.p_content}</div>
                <div class="li_l">价格：</div>
                <div class="li_r" style="margin-left:80px;">
                    <span class="red">￥${product.p_price}</span>
                    <span><img src="${pageContext.request.contextPath}/Static/picture/tip4.jpg"></span><span class="time">2019-04-30 09:45:44结束</span>
                </div>
            </div>
        </div>
        <div class="li clear">
            <div class="li_l text-indent-10">销量：</div>
            <div class="li_r">0</div>
        </div>
        <div class="li clear">
            <div class="li_l text-indent-10">颜色：</div>
            <div class="li_r">
                <div class="xuan_ze" id="xz1">
                    <span class="ze  k" data="0">Black黑色</span>
                    <span class="ze  k" data="1">Brown黄棕色</span>
                    <span class="ze  k" data="2">Navy蓝色</span>
                </div>
            </div>
        </div>
        <input type="hidden" name="gg1" id="gg1" value="">
        <input type="hidden" name="gg2" id="gg2" value="">
        <div class="li clear">
            <div class="li_l">购买数量：</div>
            <div class="li_r">
                <div class="num fl">
                    <input type="button" class="but min" value="-">
                    <input type="text" class="text" id="num" value="1">
                    <input type="button" class="but add" value="+">
                    <input type="hidden" id="kc" value="${product.p_stock}">
                </div>
                <span>商品库存<span id="xkc">${product.p_stock}</span></span>
            </div>
        </div>
        <div class="button clear">
            <a class="but_gray a" href="javascript:addcar();" id="addcar">加入购物车</a>
            <a class="but_red a" href="javascript:;" id="buy">立即购买</a>
            <!-- 模态框（Modal） -->
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="margin-top: 200px">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal"
                                    aria-hidden="true">×
                            </button>
                            <h4 class="modal-title" id="myModalLabel">
                                模态框（Modal）标题
                            </h4>
                        </div>
                        <div class="modal-body">
                            是否继续购物？
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default"
                                    data-dismiss="modal">继续购物
                            </button>
                            <button type="button" class="btn btn-primary" onclick="javascript:window.location.href='${pageContext.request.contextPath}/fore/MainServlet?flag=showCarShop'">
                                去结算
                            </button>
                        </div>
                    </div><!-- /.modal-content -->
                </div><!-- /.modal-dialog -->
            </div><!-- /.modal -->

        </div>
        <div class="li">注：商品价格/库存请以美国网站为准，购买前请咨询客服。</div>
    </div>
</div>



<script type="text/javascript">
    function addcar() {
        if(${empty user}){
            alert("请先登录");
            window.location.href="${pageContext.request.contextPath}/Login.jsp";
        }else if(${not empty user}){
            var c_number=$('#num').val();
            var p_id=${product.p_id};
            $.ajax({
                url: "${pageContext.request.contextPath}/fore/MainServlet?flag=addCarShop",
                type:"post",
                data: {c_number:c_number,p_id:p_id}  ,
                success:  function(objstr) {
                    $('#myModal').modal('show');
                    $('#myModalLabel').html(objstr);
                },
                error : function() {
                    alert("alax失败了");
                }
            });
        }
    }


</script>


<script type="text/javascript">
    $(document).ready(function () {
        $(".min").click(function () {
            var num = parseInt($('#num').val());
            var n = num - 1;
            if (n < 1) n = 1;
            $('#num').val(n);
        });
        $(".add").click(function () {
            var num = parseInt($('#num').val());
            var n = num + 1;
            var kc = parseInt($('#kc').val());
            if (n > kc) n = kc
            $('#num').val(n);
        });
        var gg_sl = 1;
        $(document).on('click', '.k', function () {
            $('#gg1').val($(this).attr('data'));
            var gg2 = $('#gg2').val();
            $.get('base.php', {act: 'attrkc', id: 1658, gg: $(this).attr('data'), cx: '1'}, function (d) {
                $('#xkc').html(d);
                $('#kc').val(d);
            });
            $(this).addClass("on").siblings('.k').removeClass("on");
        });
    });
</script>




<!--list_other start-->
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
                <div id="zaixiankefu"><img src="${pageContext.request.contextPath}/Static/img/zuixia/kefu.png" height="17px"
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
<!--list_other end-->
<!--list_show_content start-->


<!--js end-->
</body>
</html>
