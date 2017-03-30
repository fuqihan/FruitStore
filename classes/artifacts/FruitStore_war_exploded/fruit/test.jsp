<%--
  Created by IntelliJ IDEA.
  User: 符启晗
  Date: 2016/11/29
  Time: 21:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach items="${ord}" var="aa">
    ${aa.id}
    <br>
    ${aa.fruits.id}
    <br>
    ${aa.createDate}
    <br>
    ${aa.fruits.price}
    <br>
    ${aa.user.name}
    <br>
</c:forEach>
</body>
</html>
