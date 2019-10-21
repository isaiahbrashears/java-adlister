<%--
  Created by IntelliJ IDEA.
  User: 13uttsoup
  Date: 2019-10-21
  Time: 10:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>


    <h1> Here's your username: <%= request.getParameter("username")%></h1>
    <%@include file="partials/footer.html"%>
</body>
</html>
