<%--
  Created by IntelliJ IDEA.
  User: Miaozhenkai
  Date: 2019/5/15
  Time: 10:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Admin/lib/layui/css/layui.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/Admin/js/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Admin/lib/layui/layui.all.js"></script>
    <script type="text/javascript">
            if ("${updatemsg}" != "") {
                layer.alert('${updatemsg}', {
                    closeBtn: 1    // 是否显示关闭按钮
                    ,btn: ['确定'] //按钮
                    ,icon: 6    // icon
                });
            }
    </script>
    <c:remove var="updatemsg"></c:remove>
<script>
    function close(status){
        parent.location.reload();
        // var index = parent.layer.getFrameIndex(window.name); //获取窗口索引
        // parent.layer.close(index);
    }
</script>

</head>
<body>
<%--<div>${product}</div>--%>
<%--<div>${ptlist}</div>--%>
<center>
<form action="${pageContext.request.contextPath}/back/BackServlet?flag=updateProductByP_id" method="post" enctype="multipart/form-data" id="myform">
    <table width="600px" style="height:500px" border="1">
        <tr>
            <td style="width:200px; text-align: right;">商品名称</td>
            <td><input name="p_name" value="${product.p_name}"></td>
        </tr>
        <tr>
            <td width="200px" align="right">商品类型</td>
            <td>

                <select name="type_id">
                    <c:forEach items="${ptlist}" var="pt">
                        <option value="${pt.type_id}"<c:if test="${product.p_type.type_id==pt.type_id}">
                            selected="selected"
                        </c:if>>${pt.type_name}</option>
                    </c:forEach>
                </select>
            </td>
        </tr>
        <tr>
            <td width="200px" align="right">商品价格</td>
            <td><input name="p_price" value="${product.p_price}"></td>
        </tr>
        <tr>
            <td width="200px" align="right">商品数量</td>
            <td><input name="p_stock" value="${product.p_stock}"></td>
        </tr>
        <tr>
            <td width="200px" align="right">商品图片</td>
            <td><img src="${pageContext.request.contextPath}/Static/img/product/${product.p_image}" width="150px"
                     height="150px"><input type="file" name="myfile"></td>
        </tr>
        <tr>
            <td width="200px" align="right">商品描述</td>
            <td>
                <textarea name="p_content" cols="50" rows="10">${product.p_content}</textarea>
            </td>
        </tr>
        <tr>
            <td>
                <input type="hidden" name="p_id" value="${product.p_id}">
                <input type="hidden" name="p_image" value="${product.p_image}">
            </td>
            <td><input type="submit" value="更新"></td>
        </tr>
    </table>
</form>
</center>
</body>
</html>
