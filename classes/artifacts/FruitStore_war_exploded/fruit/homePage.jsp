<%@page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>大学生水果超市</title>
    <meta charset="utf-8" />
    <link rel="shortcut icon" href="favicon.ico" />
    <link rel="icon" href="Images/C.png" type="image/gif" />
    <link href="CSS/style.css" rel="stylesheet" type="text/css" />
    <link href="CSS/headerfooterindex.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="CSS/head.css" />
    <link rel="stylesheet" type="text/css" href="CSS/cart.css" />
    <link rel="stylesheet" type="text/css" href="CSS/order.css" />
    <link rel="stylesheet" type="text/css" href="CSS/index.css" />
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>


    <style>
        #subMenu {
            display: none;
            position: fixed;
            top: 50px;
            left: 10px;
        }
    </style>


</head>
<body>
<jsp:include page="homeTop.jsp"></jsp:include>
<nav class="navbar navbar-default" role="navigation">

    <div class="menu1" style="margin-top:20px;">
        <ul>
            <li><a href="MainPage.html" class="trackref cur">首 页</a></li>
            <li><a href="" class="trackref ">水果速递</a></li>
            <li><a href="#TJ" class="trackref ">今日推荐</a></li>
            <li><a href="#ZG" class="trackref ">学生专柜</a></li>
            <li><a href="#" class="trackref ">美味零食</a></li>
            <li><a href="#" class="trackref ">农特产品</a></li>
        </ul>
    </div>
</nav>


<div style="margin-top:40px;">
    <div style="margin-top:0px;margin-left:150px;margin-right:150px;" class="carousel slide" data-ride="carousel" data-interval="3000">

        <div id="myCarousel" class="carousel slide">
            <!-- 轮播（Carousel）指标 -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>
            <!-- 轮播（Carousel）项目 -->
            <div class="carousel-inner">
                <div class="item active">
                    <img src="Images/guanggao001.jpg"  alt="First slide">
                </div>
                <div class="item">
                    <img src="Images/guanggao002.jpg" alt="Second slide">
                </div>
                <div class="item">
                    <img src="Images/guanggao004.jpg" alt="Third slide">
                </div>
            </div>
            <!-- 轮播（Carousel）导航 -->
            <a class="carousel-control left" href="#myCarousel"
               data-slide="prev">&lsaquo;</a>
            <a class="carousel-control right" href="#myCarousel"
               data-slide="next">&rsaquo;</a>
        </div>
    </div>
</div>
<div class="indexW mt1">
    <div class="bestbuy">
        <p id="TJ"></p>
        <div class="b_left">
            <h2 style="font-weight:bold">
                大学生水果超市-今日推荐
            </h2>
        </div>

    </div>
    <div class="clr"></div>
</div>
<span class="clr"></span>
<div class="indexW mt2 floor-659" style="margin-left:185px;">
    <div class="sfRight">
        <div class="subCont">
            <ul id="floor-gap-fresh" class="pList">
                <c:forEach items="${fruit}" var="ff">
                    <li class="price_list1" >
                        <div class="pImg fly_img">
                            <a title="" target="_blank" href="goods.html?id=${ff.id}">
                                <img class="lazy" src="${ff.image}" alt="马牙枣 尖枣尜枣子弹头鲜枣3斤装" style="display: block;">
                            </a>

                            <div class="gBtn p-btn" style="top: 190px; width:180px; margin-left:20px; ">
                                <a href="addShopOrder.html?id=${ff.id}" style="align-content:center">购物车</a>
                            </div>
                        </div>
                        <div class="title-a">
                            <a title="" href="goods.html?id=${ff.id}" target="_blank">${ff.name}</a>
                        </div>
                        <div id="priceL_l_54949_8_161" class="price">
                            <b>￥${ff.price}</b>
                            <font>￥126.40</font>
                        </div>
                    </li>
                    <li style="width:10px">

                    </li>
                </c:forEach>

            </ul>
        </div>

        <h6 style="font-weight:normal">
            <a href="searchFruits.html">显示更多</a>
        </h6>
    </div>
</div>




<div class="indexW mt1">
    <div class="bestbuy">
        <p id="ZG"></p>
        <div class="b_left">
            <h2 style="font-weight:bold">
                大学生水果超市-学生专柜
            </h2>
        </div>

    </div>
    <div class="clr"></div>
</div>
<span class="clr"></span>
<div class="indexW mt2 floor-659" style="margin-left:185px;">
    <div class="sfRight">
        <div class="subCont">
            <ul id="floor-gap-fresh" class="pList">
                <c:forEach items="${fruit}" var="ff">
                    <li class="price_list1" >
                        <div class="pImg fly_img">
                            <a title="" target="_blank" href="goods.html?id=${ff.id}">
                                <img class="lazy" src="${ff.image}" alt="马牙枣 尖枣尜枣子弹头鲜枣3斤装" style="display: block;">
                            </a>

                            <div class="gBtn p-btn" style="top: 190px; width:180px; margin-left:20px; ">
                                <a href="addShopOrder.html?id=${ff.id}" style="align-content:center">购物车</a>
                            </div>
                        </div>
                        <div class="title-a">
                            <a title="" href="goods.html?id=${ff.id}" target="_blank">${ff.name}</a>
                        </div>
                        <div id="priceL_l_54949_8_161" class="price">
                            <b>￥${ff.price}</b>
                            <font>￥126.40</font>
                        </div>

                    </li>
                    <li style="width:10px">

                    </li>
                </c:forEach>

            </ul>

        </div>
        <h6 style="font-weight:normal">
            <a href="searchFruits.html">显示更多</a>
        </h6>
    </div>
</div>





<jsp:include page="homeBottom.jsp"></jsp:include>

</body>
</html>
