<%--
  Created by IntelliJ IDEA.
  User: Miaozhenkai
  Date: 2019/5/20
  Time: 12:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title></title>
    <!-- ICON -->
    <link href="${pageContext.request.contextPath}/Static/register/huawei_ico.ico" type="image/x-icon"
          rel="shortcut icon">
    <!-- CSS -->
    <link href="${pageContext.request.contextPath}/Static/register/dialog.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/Static/register/common.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/Static/register/zh-cn_css.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/Static/js_mzk/jquery-3.3.1.js"></script>
<body class="reg themeName-red" id="loginform">
<!-- 头部  -->
<div class="head-background">
    <div class="head_center">
        <div class="main-logo adHeadPicContainer" style="width:143px">
            <a href="${pageContext.request.contextPath}/index.jsp"><img src="${pageContext.request.contextPath}/Static/register/head-top.png" class="wihteBgPic"></a></div>
        <div class="website-name"><b style="font-size: 18px;margin-top: -5px;float: left;color:#cccccc;">|</b> <b
                style="font-size: 18px;margin-top: -3px;float: left; margin-left:18px;">华为商城</b></div>
    </div>
</div>
<div class="wp1 relative">
    <div class="register-content" id="registerForm">
        <div class="reg-tab clearFix" style="visibility: visible;">
            <a href="" class="mail-wrap l sel">
                <span id="tabMail" class="tab-email" style="width: 66px;margin-left: 30px;">注册</span>
            </a>
        </div>
        <div class="login r">
            已有华为帐号
            <a href="${pageContext.request.contextPath}/Login.jsp" class="login-a" title="登录">登录</a><span class="ar-eg-opposite">&gt;</span>
        </div>
        <div class="reg-detail">
            <div class="input-container">
                <div class="l input-left">
                    用户名
                </div>
                <div class="input-content">
                    <input type="text" class="text" id="username" placeholder="请输入用户名" onblur="checkUsername()">
                </div>
            </div>
            <div id="msg_checkUsername" class="error-tips-EMUI5">&nbsp;</div>

            <div class="input-container">
                <div class="l input-left">
                    密码
                </div>
                <div class="input-content">
                    <input type="password" class="text" id="pwd1" placeholder="请输入密码" onblur="checkPasswordLength()">
                </div>
            </div>
            <div id="msg_checkPassword1" class="error-tips-EMUI5">&nbsp;</div>
            <div class="input-container input-error-EMUI5" id="confirmpwdDiv">
                <div class="l input-left">
                    确认密码
                </div>
                <div class="input-content">
                    <input id="pwd2" type="password" class="text vam cas_error" placeholder="请再次输入密码"
                           onblur="checkPassword()">
                </div>
            </div>
            <div id="msg_checkPassword2" class="error-tips-EMUI5">&nbsp;</div>

            <!--邮件地址 -->
            <div class="input-container">
                <div class="l input-left">
                    邮件地址
                </div>
                <div class="input-content">
                    <input type="email" class="text" id="email" placeholder="请输入邮箱" onblur="checkEmail()"
                           value="">
                </div>
            </div>
            <div id="msg_email" class="error-tips-EMUI5">&nbsp;</div>
            <!-- 输入邮件验证码 -->
            <div class="input-container" id="errRandomCode-box">
                <div class="l input-left">
                    邮件验证码
                </div>
                <div class="r input-right">
                    <input type="button" class="get-code dbtn2" id="getValiCode" onclick="sendPin();" value="获取验证码">
                </div>
                <div class="input-content">
                    <input type="number" class="verify vam ime-disabled text" id="emailPin"
                           style="vertical-align: middle;" placeholder="请输入邮箱验证码" onblur="checkEmailPin()">
                </div>
            </div>
            <div id="msg_emailPin" class="error-tips-EMUI5">&nbsp;</div>
            <div class="input-container" id="errormsgemail-box">
                <div class="l input-left">
                    手机号码
                </div>
                <div class="input-content">
                    <input type="number" class="text" id="phone" placeholder="请输入手机号码" onblur="checkPhone()">
                </div>
            </div>
            <div id="msg_phone" class="error-tips-EMUI5">&nbsp;</div>
            <!-- 安全手机号的短信验证码 -->
<%--            <div id="secPhoneRandomCodeParent">--%>
<%--                <div class="input-container" id="secPhoneRandomCode-box">--%>
<%--                    <div class="l input-left">--%>
<%--                        短信验证码--%>
<%--                    </div>--%>
<%--                    <div class="r input-right">--%>
<%--                        <input type="button" class="get-code dbtn2" id="getSecValiCode" onclick="" value="获取验证码">--%>
<%--                    </div>--%>
<%--                    <div class="input-content">--%>
<%--                        <input type="text" class="verify vam ime-disabled text" id="secAuthCode"--%>
<%--                               style="vertical-align: middle;" placeholder="请输入短信验证码">--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
            <div id="msg_secphoneRandomCode"></div>
            <div class="reg-btn" align="center">
                <input type="button" class="btn btn-reg sel" id="btnSubmit" value="注册" onclick="tijiao()">
                <input type="hidden" id="emailYanZheng" value="">
            </div>
        </div>
        <script>
            function checkUsername() {
                var username = $('#username').val();
                if (username == "") {
                    $('#msg_checkUsername').html("用户名不能为空");
                } else if (username.length < 6) {
                    $('#msg_checkUsername').html("用户名太短");
                } else {
                    $.ajax({
                        url: "${pageContext.request.contextPath}/fore/RegisterServlet?flag=checkUsername",
                        type: "post",
                        data: {username: username},
                        success: function (data) {
                            if (data == 1) {
                                $('#msg_checkUsername').html("用户名已存在！");
                            } else {
                                $('#msg_checkUsername').html("&nbsp;");
                            }
                        },
                        error: function () {
                            alert("ajax失败了");
                        }
                    });
                }
            }

            function checkPasswordLength() {
                var pwd1 = $('#pwd1').val();
                if (pwd1 == "") {
                    $('#msg_checkPassword1').html("密码不能为空");
                } else {
                    if (pwd1.length < 6) {
                        $('#msg_checkPassword1').html("密码不能小于6位");
                    } else {
                        $('#msg_checkPassword1').html("&nbsp;");
                    }
                }
            }

            function checkPassword() {
                var pwd1 = $('#pwd1').val();
                var pwd2 = $('#pwd2').val();
                if (pwd2 == "") {
                    $('#msg_checkPassword2').html("请再次输入密码");
                } else {
                    if (pwd1 == pwd2) {
                        $('#msg_checkPassword2').html("&nbsp;");
                    } else {
                        $('#msg_checkPassword2').html("密码与确认密码不一致");
                    }
                }
            }

            function checkEmail() {
                var email = $('#email').val();
                if (email == "") {
                    $('#msg_email').html("邮箱不能为空");
                } else {
                    $('#msg_email').html("&nbsp:");
                }
            }

            function sendPin() {
                var email = $('#email').val();
                if (email != "") {
                    alert("邮箱验证码已发送");
                    $.ajax({
                        url: "${pageContext.request.contextPath}/fore/EmailServlet?flag=sendPin",
                        type: "post",
                        data: {email: email},
                        success: function (data) {
                            $('#emailYanZheng').val(data);
                        },
                        error: function () {
                            alert("ajax失败了");
                        }
                    });
                }
            }

            function checkEmailPin() {
                var emailPin = $('#emailPin').val();
                if (emailPin == "") {
                    $('#msg_emailPin').html("邮箱验证码不能为空");
                } else {
                    $('#msg_emailPin').html("&nbsp:");
                }
            }

            function checkPhone() {
                var phone = $('#phone').val();
                if (phone == "") {
                    $('#msg_phone').html("手机不能为空");
                } else {
                    $('#msg_phone').html("&nbsp:");
                }
            }

            function tijiao() {
                var username = $('#username').val();
                var pwd2 = $('#pwd2').val();
                var email = $('#email').val().toString();
                var emailPin = $('#emailPin').val().toString();
                var emailYanZheng = $('#emailYanZheng').val();
                var phone = $('#phone').val();
                if (emailYanZheng.trim() == emailPin.trim()) {
                    if (username != "" && pwd2 != "" && email != "" && phone != "") {
                        $.ajax({
                            url: "${pageContext.request.contextPath}/fore/RegisterServlet?flag=addUser",
                            type: "post",
                            data: {username: username, password: pwd2, email: email, phone: phone},
                            success: function (data) {
                                alert(data);
                                window.location.href = "${pageContext.request.contextPath}/Login.jsp";
                            },
                            error: function () {
                                alert("ajax失败了");
                            }
                        });
                    }else {
                        alert("请填写完整！");
                    }
                } else {
                    alert("邮箱验证码错误！");
                }
            }
        </script>
        <div class="box-shadow"></div>
        <div class="wp1 ft">
            <div class="reg-content">
                <p class="footer">
                    <a id="foot_EULA" href="" class="rule" target="_blank">华为帐号用户协议</a>
                    <em class="foot_em">|</em>
                    <a id="foot_privacy" href="" class="rule" target="_blank">关于华为帐号与隐私的声明</a>
                    <span id="faqPart" class="foot_em"><em>|</em> <a style="padding:0" 10px;="" href="">常见问题</a></span>
                </p>
                <p id="copyrightPart" class="footer">Copyright&nbsp;©&nbsp;2011-2019&nbsp;&nbsp;华为软件技术有限公司&nbsp;&nbsp;版权所有&nbsp;&nbsp;保留一切权利&nbsp;&nbsp;苏B2-20070200号&nbsp;|&nbsp;苏ICP备09062682号-9</p>
            </div>
        </div>
    </div>
</div>
</body>
</html>
