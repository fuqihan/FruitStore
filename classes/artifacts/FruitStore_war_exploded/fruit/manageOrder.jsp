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



<div class="menu1">
            <ul>
                <li><a href="MainPage.MainPage.jsp" class="trackref cur">首 页</a></li>
                <li><a href="#" class="trackref ">进口水果</a></li>
                <li><a href="#" class="trackref ">国产水果</a></li>
                <li><a href="#" class="trackref ">鲜果礼品</a></li>
                <li><a href="#" class="trackref ">美味零食</a></li>
                <li><a href="#" class="trackref ">积分商城</a></li>
                <li><a href="#" class="trackref ">农特产品</a></li>
            </ul>

        </div>
        <


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
                                <span>订单中心</span>
                                <ul>
                                    <li><a href="#" class="selected">我的订单</a></li>
                                    <li><a href="#"> 我的收藏</a></li>
                                    <li><a href="#">我的评论</a></li>
                                    <li><a href="#">收货地址</a></li>

                                </ul>
                            </li>
                            <li class="v_biga">
                                <span>会员中心</span>
                                <ul>
                                    <li><a href="#"> 用户信息</a></li>
                                    <li><a href="#"> 成为商家</a></li>
                                    <li><a href="#"> 今日优惠</a></li>
                                    <li><a href="#">帮助中心</a></li>

                                </ul>
                            </li>
                            <li>
                                <span>账户中心</span>
                                <ul>
                                    <li><a href="#">我的红包</a></li>
                                    <li><a href="#">跟踪包裹</a></li>
                                    <li><a href="#">资金管理</a></li>

                                </ul>
                            </li>
                        </ul>
                    </div>




                    <div class="sf-admin-right" style=" width:835px; margin-left:0; float:right; display:inline; overflow:hidden">

                        <div class="new_right_margin"></div>
                        <div class="order_box">
                            <div class="sf-v0 sf-v0bg"><span class="v0-l" style="margin-top:2px">我的订单</span></div>
                            <div class="order_proBox">
                                <table class="yxk_news" width="100%" cellspacing="0" cellpadding="0" border="0" style="margin-top:0px;">
                                    <tr>
                                        <th class="center_td" width="36%" align="center">订单号</th>
                                        <th class="center_td" width="20%" align="center">下单时间</th>
                                        <th class="center_td" width="12%" align="center">订单总金额</th>
                                        <th class="center_td" width="16%" align="center">订单状态</th>
                                        <th class="center_td" width="16%" align="center">操作</th>
                                    </tr>

                                </table>
                                <div class="order_table_border m0">
                                    <table class="order_yxk_list" width="100%" cellspacing="0" cellpadding="0" border="0">
                                        <tr style=" line-height:35px">
                                            <td align="center" class="center_td" width="36%"><a href="user.php?act=order_detail&order_id=208" class="f6">2016100198169</a></td>
                                            <td align="center" class="center_td" width="20%">2016-10-1 18:00:30</td>
                                            <td align="center" class="center_td" width="12%">61.00</td>
                                            <td align="center" class="center_td" width="16%">未确认,未付款,未发货</td>
                                            <td align="center" class="center_td" width="16%"><font class="f6"><a href="#" onclick="if (!confirm('您确认要取消该订单吗？取消后此订单将视为无效订单')) return false;">取消订单</a></font></td>
                                        </tr>
                                        <tr style=" line-height:35px">
                                            <td align="center" class="center_td" width="36%"><a href="user.php?act=order_detail&order_id=208" class="f6">2016100198169</a></td>
                                            <td align="center" class="center_td" width="20%">2016-10-1 18:00:30</td>
                                            <td align="center" class="center_td" width="12%">61.00</td>
                                            <td align="center" class="center_td" width="16%">未确认,未付款,未发货</td>
                                            <td align="center" class="center_td" width="16%"><font class="f6"><a href="#" onclick="if (!confirm('您确认要取消该订单吗？取消后此订单将视为无效订单')) return false;">取消订单</a></font></td>
                                        </tr>
                                        <tr style=" line-height:35px">
                                            <td align="center" class="center_td" width="36%"><a href="user.php?act=order_detail&order_id=208" class="f6">2016100198169</a></td>
                                            <td align="center" class="center_td" width="20%">2016-10-1 18:00:30</td>
                                            <td align="center" class="center_td" width="12%">61.00</td>
                                            <td align="center" class="center_td" width="16%">未确认,未付款,未发货</td>
                                            <td align="center" class="center_td" width="16%"><font class="f6"><a href="#" onclick="if (!confirm('您确认要取消该订单吗？取消后此订单将视为无效订单')) return false;">取消订单</a></font></td>
                                        </tr>
                                        <tr style=" line-height:35px">
                                            <td align="center" class="center_td" width="36%"><a href="user.php?act=order_detail&order_id=208" class="f6">2016100198169</a></td>
                                            <td align="center" class="center_td" width="20%">2016-10-1 18:00:30</td>
                                            <td align="center" class="center_td" width="12%">61.00</td>
                                            <td align="center" class="center_td" width="16%">未确认,未付款,未发货</td>
                                            <td align="center" class="center_td" width="16%"><font class="f6"><a href="#" onclick="if (!confirm('您确认要取消该订单吗？取消后此订单将视为无效订单')) return false;">取消订单</a></font></td>
                                        <tr style=" line-height:35px">
                                            <td align="center" class="center_td" width="36%"><a href="user.php?act=order_detail&order_id=208" class="f6">2016100198169</a></td>
                                            <td align="center" class="center_td" width="20%">2016-10-1 18:00:30</td>
                                            <td align="center" class="center_td" width="12%">61.00</td>
                                            <td align="center" class="center_td" width="16%">未确认,未付款,未发货</td>
                                            <td align="center" class="center_td" width="16%"><font class="f6"><a href="#" onclick="if (!confirm('您确认要取消该订单吗？取消后此订单将视为无效订单')) return false;">取消订单</a></font></td>
                                        </tr>
                                        <tr style=" line-height:35px">
                                            <td align="center" class="center_td" width="36%"><a href="user.php?act=order_detail&order_id=208" class="f6">2016100198169</a></td>
                                            <td align="center" class="center_td" width="20%">2016-10-1 18:00:30</td>
                                            <td align="center" class="center_td" width="12%">61.00</td>
                                            <td align="center" class="center_td" width="16%">未确认,未付款,未发货</td>
                                            <td align="center" class="center_td" width="16%"><font class="f6"><a href="#" onclick="if (!confirm('您确认要取消该订单吗？取消后此订单将视为无效订单')) return false;">取消订单</a></font></td>
                                        </tr>
                                        <tr style=" line-height:35px">
                                            <td align="center" class="center_td" width="36%"><a href="user.php?act=order_detail&order_id=208" class="f6">2016100198169</a></td>
                                            <td align="center" class="center_td" width="20%">2016-10-1 18:00:30</td>
                                            <td align="center" class="center_td" width="12%">61.00</td>
                                            <td align="center" class="center_td" width="16%">未确认,未付款,未发货</td>
                                            <td align="center" class="center_td" width="16%"><font class="f6"><a href="#" onclick="if (!confirm('您确认要取消该订单吗？取消后此订单将视为无效订单')) return false;">取消订单</a></font></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>

                        </div>




                    </div>
                </div>
                <div class="clear"></div>
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
            <script src="../bootstrap/twitter-bootstrap-v2/docs/assets/js/jquery.js"></script>
            <script src="../bootstrap/twitter-bootstrap-v2/js/bootstrap-modal.js"></script>
</body>
</html>

