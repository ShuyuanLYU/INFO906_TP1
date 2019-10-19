<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <title>Error</title>
    <%@include file="header.jsp" %>
</head>
<body>

    <%@include file="nav_bar.jsp" %>

    <div class="container mt-3 mb-3">
        <div class="alert alert-danger" role="alert">
            ${ error }
        </div>
        <a type="button" class="btn btn-primary" href="DisplayAllColisServlet">Visualiser les colis</a>
    </div>




</body>
</html>
