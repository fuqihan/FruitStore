<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="bon" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
	<meta charset="utf-8" />

</head>
<body>

<jsp:include page="homeTop.jsp"></jsp:include>
<form action="searchFruits.html"  name="form">
    <input type="hidden" name="keywords" value="${param.keywords}">
    <div id="search_page">
        <div id="search_menu"  style="float:left;width:auto;border:1px solid;height: 600px">
           <table cellpadding="10">
               <tr>
                   <td  style="background-color:lightgray; width:auto;"><h3>在结果中筛选</h3></td>
               </tr>
               <tr>
                   <td style="font-weight:bolder"><img src="Images/add.png" width="15"; height="15"/>进口水果</td>
               </tr>
               <tr>
                   <td style="font-weight:bolder"><img src="Images/add.png"  width="15"; height="15"/>国产水果</td>
               </tr>
               <tr>
                   <td style="font-weight:bolder"><img src="Images/add.png"  width="15"; height="15"/>美味零食</td>
               </tr>
               <tr>
                   <td style="font-weight:bolder"><img src="Images/add.png"  width="15"; height="15"/>鲜果乐园</td>
               </tr>
               <tr>
                   <td style="font-weight:bolder"><img src="Images/add.png"  width="15"; height="15"/>农特产品</td>
               </tr>
               
               
           </table>
        </div>
        <div id="search_conditions" style="background-color:lightgray; height:28px;  width:1000px; float:left;margin-left:15px;">
            搜索结果：<select id="rank_conditions" name="conditions">
                <option value="1">按上架时间排序</option>
                <option value="2">按价格排序</option>
                <option value="3">按点击次数排序</option>
            </select>
            <select id="rank" name="rank">
                <option value="0">倒序</option>
                <option value="1">正序</option>
            </select>
            <button type="submit" id="submit" style="background-color:forestgreen; color:white;">提交</button>
        </div>
        <div id="search_result">
            <table cellspacing="18">

                <c:forEach items="${fru}" var="ff">

                <thead style="float:left;width: 250px;margin-left: 20px">
                    <tr>
                        <td><a href="goods.html?id=${ff.id}" ><img width="200" height="200" src="${ff.image}" id="Fruit_image"/></a></td>
                    </tr>
                    <tr>
                        <td style="color:red;"><span style="font-size:6px;">¥</span><span style="font-size:16px;" id="Fruit_price">${ff.price}</span></td>
                    </tr>
                    <tr>
                        <td style="color:darkgrey; font-size:18px;">${ff.name}</td>
                    </tr>
                    <tr>
                        <td>
                           <a style="color: red" href="addShopOrder.html?id=${ff.id}"><img src="Images/shopcar.png"/>加入购物车</a></td>
                    </tr>
                </thead>
                </c:forEach>
            </table>
        </div>

    </div>
</form>
<bon:homeBottom></bon:homeBottom>
</body>
</html>
