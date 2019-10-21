<%--
  Created by IntelliJ IDEA.
  User: 13uttsoup
  Date: 2019-10-21
  Time: 12:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<%@include file="partials/head.jsp"%>
<head>
    <title>Login</title>
</head>
<body>
    <%@include file="partials/navbar.jsp"%>
    <h1>LOGIN</h1>
    <form action="login.jsp" method="post">
        <label for="username">Username:</label><br>
        <input id="username" type="text" name="username"><br>
        <label for="password">Password: </label><br>
        <input id="password" type="password" name="password"><br>
        <button>Submit</button>
    </form>

    <c:if test="${ param.username.equalsIgnoreCase('admin') && param.password.equalsIgnoreCase('password')}">

        <% response.sendRedirect("profile.jsp"); %>

    </c:if>

    <%@include file="partials/footer.html"%>
</body>
</html>
