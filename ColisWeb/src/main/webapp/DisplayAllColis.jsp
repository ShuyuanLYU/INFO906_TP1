<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
    <link rel="stylesheet" type="text/css" href="asset/css/base.css" >
    <title>Title</title>
</head>
<body>
    <%@include file="nav_bar.jsp" %>

    <div class="container">
        <h1>Gestion des colis</h1>
        <div>
            <h2>Affichage des colis</h2>

            <c:forEach var="colis"  items="${listColis}" >
                <div>
                    <p>${colis.name}</p>
                    <a href="/ColisWeb/DisplayColisServlet?identifiant=${colis.identifiant}">
                        <button>Visualiser</button>
                    </a>
                </div>

            </c:forEach>
        </div>
    </div>
</body>
</html>
