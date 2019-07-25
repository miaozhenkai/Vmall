<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- 资源引用-CSS-JS-->
    <link href="${pageContext.request.contextPath}/Static/register/common.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/Static/register/dialog.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/Static/register/common(1).css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/Static/register/zh-cn_css.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/Static/js_mzk/jquery-3.3.1.js"></script>
    <title>找回密码</title>
    <style>
        .geetest_radar_btn,
        #picAuthCode,
        .geetest_success_btn {
            border-radius: 20px !important;
        }
        .captchaLoading {
            text-align: center
        }

        .loadImg {
            background-repeat: no-repeat;
            background-size: contain;
            width: 28px;
            height: 28px;
            display: inline-block;
            margin-top: 7px;
        }
    </style>
<body class="forget">
<!-- 头部  -->
<div class="head-background">
    <div class="head_center">
        <div class="main-logo adHeadPicContainer" style="width:143px"> <img src="${pageContext.request.contextPath}/Static/register/head-top.png" class="wihteBgPic"> </div>
        <div class="website-name"> <b style="font-size: 18px;margin-top: -5px;float: left;color:#cccccc;">|</b> <b style="font-size: 18px;margin-top: -3px;float: left; margin-left:18px;">华为商城</b> </div>
    </div>
</div>
<div class="g">
    <!--找回密码 -->
    <div id="mod-forget-area" class="resetpwd-container">
        <div class="h">
            <h3><span>找回密码</span></h3>
        </div>
        <div class="b">
            <div id="forgetByIdV3Form">
                <!--表单 -->
                <div class="form-edit-area" id="form1">
                    <div class="head_text" style="padding:20px 16px">
                        <em>请输入华为帐号</em>
                    </div>
                    <div id="username-input" class="input-area marginBottom0">
                        <input style="padding: 6px 14px;height: 42px;" type="text" class="text vam" id="formBean_username" value="">
                    </div>
                    <div class="head_text" style="padding:20px 16px">
                        <em>请输入邮箱</em>
                    </div>
                    <div id="username-input2" class="input-area marginBottom0">
                        <input style="padding: 6px 14px;height: 42px;" type="text" class="text vam" id="formBean_email" value="">
                        <input type="hidden"id="Pin1">
                        <input type="hidden"id="password">
                    </div>
                </div>
                <div class="input-area step-area" id="button1">
                    <input type="button" id="btnSubmit" class="button" value="下一步" style="width:210px;" onclick="xiayibu1()">
                </div>
<%--                第二步--%>
                <div class="form-edit-area" id="form2" style="display: none;">
                    <div class="head_text" style="padding:20px 16px">
                        <em>请输入验证码</em>
                    </div>
                    <div id="pin-input" class="input-area marginBottom0">
                        <input style="padding: 6px 14px;height: 42px;" type="text" class="text vam" id="formBean_pin">
                    </div>
                    <div class="input-area step-area" id="button2" style="display: none;">
                        <input type="button" id="btnSubmit2" class="button" value="下一步" style="width:210px;" onclick="xiayibu2()">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    function xiayibu1(){
        var  username=$('#formBean_username').val();
        var  email=$('#formBean_email').val();
        if (username != "" && email!="") {
            $.ajax({
                url: "${pageContext.request.contextPath}/fore/UsersServlet?flag=retrievePassword",
                type: "post",
                dataType: "json",
                data: {username: username,email:email},
                success: function (data) {
                    if (data==0) {
                        alert("无此用户名");
                    }else if (data==1) {
                        alert("用户名和邮箱不匹配");
                    }else {
                        alert("验证码已发送到您的邮箱");
                        var Pin1=$('#Pin1').val(data.Pin);
                        var password=$('#password').val(data.password);
                        $('#form1').css("display","none");
                        $('#button1').css("display","none");
                        $('#form2').css("display","block");
                        $('#button2').css("display","block");
                    }
                }
            });
        }else {
            alert("不能为空")
        }
    }
    function xiayibu2(){
        var pin1=$('#Pin1').val();
        var pin2=$('#formBean_pin').val();
        var password=$('#password').val();
        if (pin1.trim()==pin2.trim()){
            alert("您的密码："+password);
            window.location.href="${pageContext.request.contextPath}/Login.jsp";
        }else {
            alert("验证码错误");
        }
    }


</script>
<!-- 底部  -->
<div class="customer-footer">
    <div class="ft">
        <div class="warrant-area">
            <p style="text-align: center;line-height:20px;height:20px;">
                <a href="" class="rule" >华为帐号用户协议</a>
                <em class="foot_em">|</em>
                <a href="" class="rule">关于华为帐号与隐私的声明</a>
                <span class="foot_em"><em style="font-style: normal">|</em> <a style="padding:0 10px;" href="">常见问题</a></span>
            </p>
            <p style="text-align: center;line-height: 12px;height:12px;margin-top: 10px ">
                Copyright&nbsp;©&nbsp;2011-2019&nbsp;&nbsp;华为软件技术有限公司&nbsp;&nbsp;版权所有&nbsp;&nbsp;保留一切权利&nbsp;&nbsp;苏B2-20070200号&nbsp;|&nbsp;苏ICP备09062682号-9
            </p>
        </div>
    </div>
</div>
</body>
</html>
