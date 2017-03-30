<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%--
  Created by IntelliJ IDEA.
  User: 符启晗
  Date: 2016/12/12
  Time: 13:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="xx" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    List<String> c=new ArrayList<String>();
    c.add("java");
    c.add("cpp");
    c.add("php");
    c.add("c#");
    c.add("objective-c");
    request.setAttribute("c",c);

%>


<c:forEach items="${c}" var="aa">
    ${aa}
</c:forEach>

</body>
</html>
