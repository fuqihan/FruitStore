<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>大学生水果超市</title>
    <meta charset="utf-8"/>
    <link rel="shortcut icon" href="favicon.ico"/>
    <link rel="icon" href="Images/C.png" type="image/gif"/>
    <link href="CSS/style.css" rel="stylesheet" type="text/css"/>
    <link href="CSS/headerfooterindex.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" type="text/css" href="CSS/head.css"/>
    <link rel="stylesheet" type="text/css" href="CSS/cart.css"/>
    <link rel="stylesheet" type="text/css" href="CSS/order.css"/>
    <link rel="stylesheet" type="text/css" href="CSS/index.css"/>
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="topMenu">
    <div class="pW">
        <ul class="fr topTh">
            <li id="ECS_MEMBERZONE" class="login">
                欢迎来到大学生网上水果超市！当前在线人数为:${count}
            </li>
            <c:if test="${sessionScope.name!=null}">
                <li class="dropdown" id="accountmenu">
                    <a>${sessionScope.name}<b class="caret"></b></a>
                    <a href="removeUser.html">退出登录</a>
                </li>


            </c:if>
            <c:if test="${sessionScope.name==null}">
                <li class="myOrder">
                    <a href="Login.html" rel="nofollow">请登录</a>
                    <a href="register.html" rel="nofollow">免费注册</a>
                </li>
            </c:if>


            <li class="myOrder">
                <a href="MainPage.html" rel="nofollow" class="trackref">主页</a>
            </li>
            <li class="myOrder">
                <a href="manageOrder.html" rel="nofollow" class="trackref">个人中心</a>
            </li>
            <li class="menus">
                <a class="trackref t" href="sellerIndex.html" rel="nofollow">商家</a>

            </li>
            <li class="menus">
                <a class="trackref t" target="_self" href="shopAll.html" rel="nofollow">店铺</a>

            </li>


        </ul>
        <span class="clear"></span>
    </div>
</div>
<div id="header">
    <div class="header_inner">
        <div class="logo">
            <a href="MainPage.html"><img src="Images/logo.png.png"></a>
        </div>

    </div>

    <div class="header_inner">

        <div class="search">
            <form name="searchForm" method="get" action="searchFruits.html">
                <input type="text" style="color:#999999;" name="keywords" id="keyword" class="text keyword ac_input"
                       value="${param.keywords}">
                <input class="submit" type="submit" value="搜索" style="background-color:dodgerblue">
            </form>
            <div class="search_hot">
                <a href="#">平和蜜柚</a><a href="#">百香果</a><a href="#">猕猴桃</a><a href="#">奇异果</a><a href="#">苹果</a><a
                    href="#">蜂蜜</a><a href="#">山竹</a>
            </div>
        </div>
        <div id="ECS_CARTINFO" class="shopingcar">
            <s class="setCart"></s>
            <a class="t" href="ShopCartView.html" rel="nofollow">我的购物车</a>
            <c:if test="${sessionScope.ShopNumber==null}">
                <b id="in_cart_num">0</b>
            </c:if>
            <c:if test="${sessionScope.ShopNumber!=null}">
                <b id="in_cart_num">${sessionScope.ShopNumber}</b>

            </c:if>


        </div>
    </div>
</div>

</body>
</html>
