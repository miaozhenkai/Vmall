<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Admin/lib/layui/css/layui.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/Admin/js/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Admin/lib/layui/layui.all.js"></script>
    <script type="text/javascript">
        if ("${addmsg}" != "") {
            layer.alert('${addmsg}', {
                closeBtn: 1    // 是否显示关闭按钮
                ,btn: ['确定'] //按钮
                ,icon: 6    // icon
            });
        }
    </script>
    <c:remove var="addmsg"></c:remove>
    <script>
        function close(status){
            parent.location.reload();
            // var index = parent.layer.getFrameIndex(window.name); //获取窗口索引
            // parent.layer.close(index);
        }
    </script>
</head>
<body>
<%--<div>${ptlist}</div>--%>
<center>
    <form action="${pageContext.request.contextPath}/back/BackServlet?flag=addProduct" method="post" enctype="multipart/form-data" id="myform">
        <table width="600px" style="height:500px" border="1">
            <tr>
                <td style="width:200px; text-align: right;">商品名称</td>
                <td><input name="p_name"></td>
            </tr>
            <tr>
                <td width="200px" align="right">商品类型</td>
                <td>
                    <select name="type_id">
                        <c:forEach items="${ptlist}" var="pt">
                            <option value="${pt.type_id}">${pt.type_name}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <td width="200px" align="right">商品价格</td>
                <td><input name="p_price"></td>
            </tr>
            <tr>
                <td width="200px" align="right">商品库存</td>
                <td><input name="p_stock"></td>
            </tr>
            <tr>
                <td width="200px" align="right">商品图片</td>
                <td><input type="file" name="myfile"></td>
            </tr>
            <tr>
                <td width="200px" align="right">商品描述</td>
                <td>
                    <textarea name="p_content" cols="50" rows="10"></textarea>
                </td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="新增"></td>
            </tr>
        </table>
    </form>
</center>
</body>
</html>
