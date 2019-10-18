<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        <%--<div>
            <h2>Affichage des colis</h2>

            <c:forEach var="colis"  items="${listColis}" >
                <div>
                    <p>identifiant : ${colis.identifiant }</p>
                    <p>name : ${colis.name }</p>
                    <a type="button" class="btn btn-primary" href="/ColisWeb/DisplayColisServlet?identifiant=${colis.identifiant}">Visualiser</a>
                </div>

            </c:forEach>
        </div>--%>
        <table class="table">
            <thead>
            <tr>
                <th scope="col">identifiant</th>
                <th scope="col">name</th>
                <th scope="col">origine</th>
                <th scope="col">destination</th>
                <th scope="col">state</th>
                <th scope="col">action</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="colis"  items="${listColis}" >
            <tr>
                <td>${colis.identifiant }</td>
                <td>${colis.name }</td>
                <td>${colis.origin }</td>
                <td>${colis.destination }</td>
                <td>${colis.state }</td>
                <td><a href="/ColisWeb/DisplayColisServlet?identifiant=${colis.identifiant}">Visualiser</a></td>
            </tr>
            </c:forEach>

            </tbody>
        </table>
    </div>
</body>
</html>
