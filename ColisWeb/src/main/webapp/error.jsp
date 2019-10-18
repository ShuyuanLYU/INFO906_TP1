<%--
  Created by IntelliJ IDEA.
  User: shuyuan
  Date: 2019-10-17
  Time: 14:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Error</title>
    <%@include file="header.jsp" %>
</head>
<body>

    <%@include file="nav_bar.jsp" %>

    <div class="container mt-3 mb-3">
        <div class="alert alert-danger" role="alert">
            ${error }
        </div>
        <a type="button" class="btn btn-primary" href="/ColisWeb/DisplayAllColisServlet">Visualiser les colis</a>
    </div>




</body>
</html>
