<%@page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>用户中心_登录</title>
    <meta charset="utf-8" />
    <link rel="shortcut icon" href="favicon.ico" />
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




    <div class="clear1"></div>
    <div id="footer">
        <div class="footer_zd">
            <ul>
                <li class="quanqiu">
                    <a target="_self" href="#"></a>
                </li>
                <li class="chandi">
                    <a target="_self" href="#"></a>
                </li>
                <li class="qcll">
                    <a target="_self" href="#"></a>
                </li>
                <li class="sfzd">
                    <a target="_self" href="#"></a>
                </li>
            </ul>
        </div>
        <div class="foot">
            <div class="pageFooter">
                <div class="middle" style="background:url(Images/logo.png.png) no-repeat left top #FFFFFF;">
                    <ul>
                        <li class="kefu">15382290493</li>
                        <li>周一至周日8:30-22:00</li>
                    </ul>
                </div>
                <div class="right">

                    <ul>
                        <li class="title">新手上路 </li>
                        <li><a href="#" rel="nofollow" title="购物流程">购物流程</a></li>
                        <li><a href="#" rel="nofollow" title="订购方式">订购方式</a></li>
                        <li><a href="#" rel="nofollow" title="常见问题">常见问题</a></li>
                    </ul>

                    <ul>
                        <li class="title">支付方式 </li>
                        <li><a href="#" rel="nofollow" title="货到付款区域">货到付款区域</a></li>
                        <li><a href="#" rel="nofollow" title="配送支付智能查询 ">配送支付智能查询</a></li>
                        <li><a href="#" rel="nofollow" title="支付方式说明">支付方式说明</a></li>
                        <li><a href="#" rel="nofollow" title="礼品卡">礼品卡</a></li>
                    </ul>

                    <ul>
                        <li class="title">合作专区</li>
                        <li><a href="#" rel="nofollow" title="供应商申请">供应商申请</a></li>
                        <li><a href="#" rel="nofollow" title="商务合作">商务合作</a></li>
                        <li><a href="#" rel="nofollow" title="商品资质审核标准">商品资质审核标准</a></li>
                        <li><a href="#" rel="nofollow" title="供应商保证金协议">供应商保证金协议</a></li>
                    </ul>

                    <ul>
                        <li class="title">售后服务</li>
                        <li><a href="#" rel="nofollow" title="售后服务保证 ">售后服务保证</a></li>
                        <li><a href="#" rel="nofollow" title="产品质量保证 ">产品质量保证</a></li>
                        <li><a href="#" rel="nofollow" title="退换货流程">退换货流程</a></li>
                    </ul>
                </div>

            </div>
            <div class="clear"></div>
            <div class="bottom">
                <div class="bottom_kx">
                    <a id="cnnic" target="_blank" href="#">
                        <img border="0" src="Images/kxicon.jpg">
                    </a>
                </div>
                <div class="clear1"></div>
                <div class="siteinfo">
                    <p>
                        <span><a href="#" rel="nofollow" target="_blank">免责条款</a></span>
                        <span><a href="#" rel="nofollow" target="_blank">隐私保护</a></span>
                        <span><a href="#" rel="nofollow" target="_blank">咨询热点</a></span>
                        <span><a href="#" rel="nofollow" target="_blank">联系我们</a></span>
                        <span><a href="#" rel="nofollow" target="_blank">商务合作</a></span>
                        <span><a href="#" rel="nofollow" target="_blank">配送方式</a></span>
                    </p>
                    <p>
                        制作成员：张怀斌 李忠糠 董宇 符启晗 孔正权
                    </p>
                </div>
            </div>
        </div>
        <div align="center">

        </div>
        <img id="flyBuy" />




    </div>

</body>
</html>

