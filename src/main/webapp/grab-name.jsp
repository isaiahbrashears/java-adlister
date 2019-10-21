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


    <form action="display-name.jsp">

        <label for="username">Enter username here: </label>
        <input id="username" type="text" name="username">
        <button>Submit</button>
    </form>

    <%@include file="partials/footer.html"%>

</body>
</html>
