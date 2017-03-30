<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="bon" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="homeTop.jsp"></jsp:include>
<table>
    <tr>

            <c:forEach items="${see}" var="aaa">
        <td width="100" style="font-size: 20px">
                <a href="shopView.html?name=${aaa.sellerName}">${aaa.name}</a>
        </td>
            </c:forEach>

    </tr>
</table>
<bon:homeBottom></bon:homeBottom>

</body>
</html>
