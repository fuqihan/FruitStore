<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="bon" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <title>商品信息</title>
    <link rel="shortcut icon" href="favicon.ico"/>
    <link rel="icon" href="Images/manageOrder.png" type="image/gif"/>
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


<div class="box2 yx_bg" style=" background:#ffffff">
    <div id="main" style=" background:#ffffff">
        <div class="pbox">
            <div class="sidebarA">
                <ul>
                    <li class="v_li">
                        <span class="myyx">
                            <a href="MainPage.html">我的首页</a>
                        </span>
                    </li>
                </ul>
                <ul id="menu">
                    <li class="v_biga">
                        <span>个人中心</span>
                        <ul>
                            <li><a href="#" class="selected">我的订单</a></li>
                            <li><a href="#">我的店铺</a></li>
                            <li><a href="#">我的信息</a></li>
                        </ul>
                    </li>
                    <li class="v_biga">
                        <span>店铺管理</span>
                        <ul>
                            <li><a href="#"> 店铺查看</a></li>
                            <li><a href="StorePutView.html"> 店铺修改</a></li>
                            <%--<li><a href="/ueditor/index.jsp"> 店铺修改</a></li>--%>
                            <li><a href="#"> 店铺评论</a></li>
                        </ul>
                    </li>
                    <li>
                        <span>商品管理</span>
                        <ul>
                            <li><a href="sellerGoodsInfo.html">商品信息</a></li>
                            <li><a href="#">商品修改</a></li>
                            <li><a href="#">资金管理</a></li>
                        </ul>
                    </li>
                </ul>
            </div>

            <div style="margin-left: 180px; width: 950px;" >
                <table class="table table-striped table-hover" style="font-size: 15px">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th style="width:90px">商品名称</th>
                        <th>价格</th>
                        <th>图片</th>
                        <th>特点</th>
                        <th>创建时间</th>
                        <th>操作</th>
                        <th style="width:50px"; height="50px">
                            <a  class="btn btn-sm btn-success" data-toggle="tooltip"
                                title="添加商品"
                                href="addFruits.html"
                                role="button">
                            <span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a>
                        </th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${myFruitsList}" var="sFruits">
                        <tr>
                            <th>${sFruits.id}</th>
                            <th>${sFruits.name}</th>
                            <th>${sFruits.price}</th>
                            <th><img src="./${sFruits.image}" width="60"/></th>
                            <th style="width: 400px">${sFruits.feature}</th>
                            <th style="width: 120px">${sFruits.createDate}</th>
                            <th style="width: 100px">
                                <a class="btn btn-xs btn-warning" data-toggle="tooltip"
                                   title="编辑商品"
                                   href="editFruits.html?id=${sFruits.id}"
                                   role="button">
                                    <span class="glyphicon glyphicon-edit" aria-hidden="true"></span>
                                </a>
                                <a role="button" class="btn btn-xs btn-danger"
                                   data-toggle="tooltip" title="删除商品"
                                   href="deleteFruits.html?id=${sFruits.id}"
                                >
                                    <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
                                </a>
                            </th>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
        </div>
    </div>
    <div class="clear"></div>
</div>
<bon:homeBottom></bon:homeBottom>
</body>
</html>
