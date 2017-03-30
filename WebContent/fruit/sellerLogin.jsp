<%@page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="bon" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>用户中心_登录</title>
    <meta charset="utf-8" />
    <link rel="icon" href="Images/user.png" type="image/gif" />
    <link href="CSS/style.css" rel="stylesheet" type="text/css" />
    <link href="CSS/headerfooterindex.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="CSS/head.css" />
    <link rel="stylesheet" type="text/css" href="CSS/cart.css" />
    <link rel="stylesheet" type="text/css" href="CSS/order.css" />

</head>
<body>


   <jsp:include page="homeTop.jsp"></jsp:include>


    <link href="CSS/login.css" rel="stylesheet" type="text/css" />
    <div class="login_main clear">
        <div class="pic">
            <img src="Images/l1.jpg" border='0' width='520' height='340' />
        </div>
        <div class="login">
            <form name="formLogin" action="sellerLogin.html" method="post" onSubmit="return userLogin()">
                <a target="_self" class="reg_title" href="register.register.jsp">免费注册</a>
                <div class="login_box clear">
                    <ul>
                        <li>
                            <span class="title">商家账号</span>
                            <span class="border">
                                <input id="un" type="text" spellcheck="false" name="sellerName" class="loginText">
                            </span>
                            <span id="accountDesc" class=""></span>
                        </li>
                        <li class="m-t12">
                            <span class="title">登录密码</span>
                            <span class="border">
                                <input id="pwd" type="password" name="password" class="loginText">
                            </span>
                        </li>
                        <div class="clear"></div>
                        <li id="shosCode" class="scode"> </li>
                        <div class="clear"></div>
                        <li>
                            <div style="width:65px;margin-left:0px;">
                                <a class="forget-passWord" href="sellerRegisterView.html">注册商家？</a>
                            </div>
                        </li>
                        <li>
                            <div style="width:65px;margin-left:260px;margin-top:-25px">
                                <a class="forget-passWord" href="#">忘记密码?</a>
                            </div>
                        </li>
                        <li id="btn_sub" class="m-t5">
                            <input type="submit" value="登录" id="login_button" class="login_btn" style="background:#00ff90" />
                        </li>
                    </ul>
                </div>
            </form>
        </div>
    </div>


    <bon:homeBottom></bon:homeBottom>
</body>
</html>

