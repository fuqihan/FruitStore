<%@page pageEncoding="UTF-8" %>
<%@ taglib prefix="bon" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>个人中心</title>
    <meta charset="utf-8"/>
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


<div class="menu1">
    <ul>
        <li><a href="MainPage.html" class="trackref cur">首 页</a></li>
        <li><a href="#" class="trackref ">进口水果</a></li>
        <li><a href="#" class="trackref ">国产水果</a></li>
        <li><a href="#" class="trackref ">鲜果礼品</a></li>
        <li><a href="#" class="trackref ">美味零食</a></li>
        <li><a href="#" class="trackref ">积分商城</a></li>
        <li><a href="#" class="trackref ">农特产品</a></li>
    </ul>
</div>

<div class="box2 yx_bg" style=" background:#ffffff">
    <div id="main" style=" background:#ffffff">
        <div class="pbox" style="height: 350px">
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
                        <span>订单中心</span>
                        <ul>
                            <li><a href="#" class="selected">我的订单</a></li>
                            <li><a href="#">我的收藏</a></li>
                            <li><a href="#">我的评论</a></li>
                            <li><a href="#">收货地址</a></li>
                        </ul>
                    </li>
                </ul>
            </div>

            <div class="sf-admin-right"
                 style=" width:835px; margin-left:0; float:right; display:inline; overflow:hidden">

                <div class="new_right_margin"></div>
                <div class="order_box">
                    <div class="sf-v0 sf-v0bg"><span class="v0-l" style="margin-top:2px">我的订单</span></div>
                    <div class="order_proBox">
                        <table class="table table-striped table-hover ">
                            <thead>
                            <tr>
                                <th>订单号</th>
                                <th>购买水果</th>
                                <th>下单时间</th>
                                <th>购买数量</th>
                                <th>订单状态</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${ordersId}" var="myorders">
                                <tr>
                                    <td>${myorders.id}</td>
                                    <td>${myorders.fruits.name}</td>
                                    <td>${myorders.createDate}</td>
                                    <td>${myorders.number}</td>
                                    <td>${myorders.state}</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>

                    </div>
                </div>

            </div>

        </div>
    </div>
    <div class="clear"></div>
</div>
<bon:homeBottom></bon:homeBottom>




</div>
<script src="../bootstrap/twitter-bootstrap-v2/docs/assets/js/jquery.js"></script>
<script src="../bootstrap/twitter-bootstrap-v2/js/bootstrap-modal.js"></script>
</body>
</html>

