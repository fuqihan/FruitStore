<%@page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>个人中心</title>
    <meta charset="utf-8" />
    <link rel="shortcut icon" href="favicon.ico" />
    <link rel="icon" href="Images/manageOrder.png" type="image/gif" />
    <link href="CSS/style.css" rel="stylesheet" type="text/css" />
    <link href="CSS/headerfooterindex.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="CSS/head.css" />
    <link rel="stylesheet" type="text/css" href="CSS/cart.css" />
    <link rel="stylesheet" type="text/css" href="CSS/order.css" />
    <link rel="stylesheet" type="text/css" href="CSS/index.css" />
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
                                    <a href="MainPage.MainPage.jsp">我的首页</a>
                                </span>
                    </li>
                </ul>
                <ul id="menu">
                    <li class="v_biga">
                        <span>个人中心</span>
                        <ul>
                            <li><a href="#" class="selected">我的订单</a></li>
                            <li><a href="#"> 我的店铺</a></li>
                            <li><a href="#">我的信息</a></li>


                        </ul>
                    </li>
                    <li class="v_biga">
                        <span>店铺管理</span>
                        <ul>
                            <li><a href="#"> 店铺查看</a></li>
                            <li><a href="#"> 店铺修改</a></li>
                            <li><a href="#"> 店铺评论</a></li>


                        </ul>
                    </li>
                    <li>
                        <span>商品管理</span>
                        <ul>
                            <li><a href="#">商品信息</a></li>
                            <li><a href="#">商品修改</a></li>
                            <li><a href="#">资金管理</a></li>

                        </ul>
                    </li>
                </ul>
            </div>




            <div class="sf-admin-right" style=" width:835px; margin-left:0; float:right; display:inline; overflow:hidden">


                </div>




            </div>
        </div>
        <div class="clear"></div>
    </div>



<jsp:include page="homeBottom.jsp"></jsp:include>




    </div>
   </div>
</body>
</html>

