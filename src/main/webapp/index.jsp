<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%@include file="partials/head.jsp"%>
<head>
    <title><%= "some title" %></title>
</head>
<body>

    <%@include file="partials/navbar.jsp"%>
    <h1>HOME</h1>
    <p>Welcome!</p>


    <c:if test="true">
        <h5>Variable names should be very descriptive</h5>
    </c:if>
    <c:if test="false">
        <h5>single letter variable names are good</h5>
    </c:if>

    <h1>your name is ${user}</h1>


    <%@include file="partials/footer.html"%>
</body>
</html>
