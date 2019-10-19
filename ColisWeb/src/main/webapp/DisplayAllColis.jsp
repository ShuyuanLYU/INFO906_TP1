<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
    <link rel="stylesheet" type="text/css" href="asset/css/base.css" >
    <title>Display all colis</title>
    <%@include file="header.jsp" %>
</head>
<body>
    <%@include file="nav_bar.jsp" %>

    <div class="container">
        <h1>Gestion des colis</h1>

        <table class="table">
            <thead>
            <tr>
                <th scope="col">Identifiant</th>
                <th scope="col">Origine</th>
                <th scope="col">Destination</th>
                <th scope="col">État</th>
                <th scope="col">Action</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="colis"  items="${ listColis }" >
                <tr>
                    <td>${ colis.identifiant }</td>
                    <td>${ colis.origin }</td>
                    <td>${ colis.destination }</td>
                    <td>${ colis.state }</td>
                    <td><a href="DisplayColisServlet?identifiant=${ colis.identifiant }">Visualiser</a></td>
                </tr>
            </c:forEach>

            </tbody>
        </table>
    </div>
</body>
</html>
