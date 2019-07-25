<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="renderer" content="webkit">
    <title>登录</title>
    <link href="./Static/Login_files/favicon.ico" type="image/x-icon" rel="shortcut icon">
    <link href="./Static/Login_files/common.css" rel="stylesheet" type="text/css">
    <link href="./Static/Login_files/common(1).css" rel="stylesheet" type="text/css">
    <link href="./Static/Login_files/zh-cn.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="./Static/Login_files/drag.css">
    <script src="./Static/Login_files/jquery-1.12.3.js"></script>
    <script src="./Static/Login_files/drag.js"></script>
    <style type="text/css">
        .slidetounlock {
            font-size: 12px;
            background: -webkit-gradient( linear, left top, right top, color-stop(0, #4d4d4d), color-stop(.4, #4d4d4d), color-stop(.5, #fff), color-stop(.6, #4d4d4d), color-stop(1, #4d4d4d));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            -webkit-animation: slidetounlock 3s infinite;
            -webkit-text-size-adjust: none
        }
        @-webkit-keyframes slidetounlock {
            0% {
                background-position: -200px 0
            }
            100% {
                background-position: 200px 0
            }
        }
    </style>
</head>
<body class="login themeName-red" style="zoom:1.25">
<div>
    <!-- 头部  -->
    <div class="customer-header">
        <div class="head_center">
            <div class="main-logo adHeadPicContainer"><a href="${pageContext.request.contextPath}/index.jsp"><img src="./Static/Login_files/HUAWEI.png" class="adHeadPic"></a></div>
            <div class="website-name"><b style="font-size: 18px;margin-top: -5px;float: left;color:#cccccc;">|</b> <b
                    class="adHeadTitle">华为商城</b></div>
        </div>
    </div>
    <!--登录 -->
    <div class="login_bg" id="loginform">
        <div style="background-image: url(Static/Login_files/login_default_bg.png);" class="g login_adBg">
            <div class="login-area login-right login-area-box">
                <div class="userAccountLogin">
                    <div class="h">
                        <span class="loginTitle loginTitle-left actived" data-type="account">帐号登录</span><span
                            class="loginTitle splitLine loginTitle-right" data-type="qrCode">扫码登录</span>
                    </div>
                    <div class="b-account" style="display: block;">
                        <div class="login-form-marginTop">
                            <div class="form-edit-area loginEventForm" style="margin-top: 20px;">
                                <form action="Login" method="post">
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tbody>
                                        <tr>
                                            <td class="user-input-tr">
                                                <input type="text" placeholder="请输入用户名" class="text" name="username" maxlength="50" value="">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="user-input-tr">
                                                <input type="password" placeholder="请输入密码" class="text" name="password" maxlength="50" value="">
                                            </td>
                                        </tr>
                                        <tr id="pinn">
                                            <td>
                                                <br/>
                                                <div id="wrapper">
                                                    <div id="drag">
                                                        <div class="drag_bg"></div>
                                                        <div class="drag_text slidetounlock" onselectstart="return false;" unselectable="on">
                                                            <span style="float: left;margin-top: 10px;margin-left: 80px;">请按住滑块，拖动到最右边</span>
                                                        </div>
                                                        <!--  默认值0 没有验证通过  -->
                                                        <input type="hidden" name="name" value="0">
                                                        <div class="handler handler_bg"></div>
                                                    </div>
                                                </div>
                                                <br/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div style="margin-top: 5px;"><span class="vam error" id="login_msg" style="display:block"></span></div>
                                                <input type="button" class="button-login" id="btnLogin" value="登录" onclick="tijiao()">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="mt-links p0">
                                                <div class="mt-links-float vam clearWidth" style="margin-top: 10px;">
                                                    <br/><br/>
                                                    <span class="regist"><a class="btn-primary clearWidth" href="${pageContext.request.contextPath}/Register.jsp">注册帐号</a></span>
                                                    <span class="forgot"><a class="btn-primary clearWidth"
                                                                            href="${pageContext.request.contextPath}/RetrievePassword.jsp">忘记密码？</a></span>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><input type="hidden" value="0" class="pin">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <center><br><p class="errmsg" style="color: red;"></p></center>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div>
        <!-- 底部  -->
        <div class="customer-footer">
            <div class="ft">
                <!--授权  -->
                <div class="warrant-area">
                    <p style="text-align: center;line-height:20px;height:20px;">
                        <a href="" class="rule" target="_blank">华为帐号用户协议</a>
                        <em class="foot_em">|</em>
                        <a href="" class="rule" target="_blank">关于华为帐号与隐私的声明</a>
                        <span class="foot_em"><em style="font-style: normal">|</em> <a style="padding:0 10px;" target="blank" href="">常见问题</a></span>
                    </p>
                    <p style="text-align: center;line-height: 12px;height:12px;margin-top: 10px ">
                        Copyright&nbsp;©&nbsp;2011-2019&nbsp;&nbsp;华为软件技术有限公司&nbsp;&nbsp;版权所有&nbsp;&nbsp;保留一切权利&nbsp;&nbsp;苏B2-20070200号&nbsp;|&nbsp;苏ICP备09062682号-9
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    $('#drag').drag();
    function tijiao() {
        var pin=$('.pin').val();
        if (pin=="0") {
            $('.errmsg').text("验证失败");
        }else if(pin=="1"){
            var username=$("input[name='username']").val();
            var password=$("input[name='password']").val();
            if (username=="") {
                $('.errmsg').text("用户名不能为空");
            }if (password=="") {
                $('.errmsg').text("密码不能为空");
            }if (username==""&&password=="") {
                $('.errmsg').text("用户名和密码不能为空");
            }else {
                $.ajax({
                    url: "${pageContext.request.contextPath}/fore/UsersServlet?flag=Login",
                    type:"post",
                    data: {username:username,password:password},
                    dataType: "json",
                    success:  function(datas) {
                        if ("ok"==datas.s) {
                            alert("登录成功");
                            window.location.href="${pageContext.request.contextPath}/fore/MainServlet?flag=showMain";
                        }else {
                            $('.errmsg').text(datas.s);
                            $("input[name='username']").val("");
                            $("input[name='password']").val("");
                        }
                    },
                    error : function() {
                        alert("ajax错误");
                    }
                });
            }
        }
    }
</script>
</body>
</html>