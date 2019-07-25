<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
</head>
<body>
<center>
<%--<div>${order}</div>--%>
<h2>订单详情</h2>
<table border="1">
    <tr>
        <td>订单号</td>
        <td>下单时间</td>
        <td>备注</td>
        <td>订单状态</td>
        <td>收货人</td>
        <td>收货电话</td>
        <td>收货地址</td>
    </tr>
    <tr>
        <td>${order.o_id}</td>
        <td>${fn:substring(order.o_date, 0,19)}</td>
        <td>${order.remarks}</td>
        <td>${order.o_status}</td>
        <td>${order.address.contact}</td>
        <td>${order.address.phone}</td>
        <td>${order.address.address}</td>
    </tr>
</table>
<h2>商品</h2>
<table border="1">
    <tr>
        <td>商品图片</td>
        <td>商品名称</td>
        <td>购买数量</td>
        <td>小计</td>
    </tr>
    <c:forEach var="OD" items="${order.ODList}">
    <tr>
        <td><img src="${pageContext.request.contextPath}/Static/img/product/${OD.product.p_image}" width="100px" height="100px"></td>
        <td>${OD.product.p_name}</td>
        <td>${OD.od_number}</td>
        <td>${OD.od_total}</td>
    </tr>
    </c:forEach>
</table>
<h3>总计:${order.totalPrice}</h3>
</center>
</body>
</html>
