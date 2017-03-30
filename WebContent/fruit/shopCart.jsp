<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="bon" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>购物车</title>
    <meta charset="utf-8"/>
    <link rel="shortcut icon" href="favicon.ico"/>
    <link rel="icon" href="Images/animated_favicon.png" type="image/gif"/>
    <link href="CSS/style.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" type="text/css" href="CSS/head.css"/>
    <link rel="stylesheet" href="CSS/Shop.css"/>
    <script type="text/javascript" src="scripts/demo.js"></script>
    <script type="text/javascript">
        function deleteOrders() {
            document.form.action = "deleteOrders.html";
            document.form.submit();
        }
        function deleteAll() {
            document.form.action = "deleteAll.html";
            document.form.submit();
        }


    </script>
</head>
<body>


<jsp:include page="homeTop.jsp"></jsp:include>
<div style="height:20px">

</div>

<form action="updateOrders.html" name="form" method="post">
    <div class="catbox">

        <table id="cartTable">
            <thead>
            <tr>
                <th style="text-align:center;"><label><input class="check-all check" type="checkbox"/>&nbsp;全选</label>
                </th>
                <th style="text-align:center;"><b>商品</b></th>
                <th style="text-align:center;"><b>单价</b></th>
                <th style="text-align:center;"><b>数量</b></th>
                <th style="text-align:center;"><b>小计</b></th>
                <th style="text-align:center;"><b>操作</b></th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${order}" var="ord" varStatus="loop">
                <tr>
                    <td class="checkbox"><input class="check-one check" type="checkbox" style="margin:30px 10px;;"
                                                id="shifoBei"/></td>
                    <td class="goods"><img src="${ord.fruits.image}" alt=""/><span>${ord.fruits.name}</span></td>
                    <td class="price">${ord.fruits.price}</td>
                    <td class="count"><span class="reduce">-</span><input class="count-input"
                                                                          style="width:30px; height:25px;" name="number"
                                                                          id="number${loop.index}" type="text"
                                                                          value="1"/><span class="add">+</span></td>
                    <td class="subtotal">${ord.fruits.price}</td>
                    <td class="operation"><input type="button" value="删除" oncli ck="deleteOrders()"
                                                 style="width:50px; height:25px; border:none; background-color:green; color:white;"/>
                        <input type="hidden" name="choose" value="${ord.id}" id="choose${loop.index}">
                        <input type="hidden" name="id" value="${ord.id}"></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>

        <div class="foot" id="foot">
            <label class="fl select-all"><input type="checkbox" class="check-all check"/>&nbsp;全选</label>
            <a class="fl delete" id="deleteAll" href="javascript:;"><input type="button" value="删除"
                                                                           onclick="deleteAll()"
                                                                           style="border:none; color:black;background-color:#EBEBEB; margin-top:-5px; "/></a>
            <div class="fr closing">
                <%--<input type="button" value="结 算" onclick="Shanchu()" class="button" />--%>
                <input type="submit" value="结 算" style="width:100px; border:none; ">
            </div>
            <div class="fr total">合计：￥<span id="priceTotal">0.00</span>
                <input type="hidden" id="priceAAAA" name="andPrice" value="0"/></div>
            <div class="fr selected" id="selected" style="background-color:#EBEBEB;">已选商品<span
                    id="selectedTotal">0</span>件
            </div>
            <div class="selected-view">
                <div id="selectedViewList" class="clearfix">
                    <div><img src="images/1.jpg"><span>取消选择</span></div>
                </div>
                <span class="arrow">◆<span>◆</span></span>
            </div>
        </div>

    </div>
</form>

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
                    <li class="title">新手上路</li>
                    <li><a href="#" rel="nofollow" title="购物流程">购物流程</a></li>
                    <li><a href="#" rel="nofollow" title="订购方式">订购方式</a></li>
                    <li><a href="#" rel="nofollow" title="常见问题">常见问题</a></li>
                </ul>

                <ul>
                    <li class="title">支付方式</li>
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
    <img id="flyBuy"/>


</div>
<bon:homeBottom></bon:homeBottom>
</body>
</html>
