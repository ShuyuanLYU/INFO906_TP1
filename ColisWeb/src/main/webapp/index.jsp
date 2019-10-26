<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="ISO-8859-1">
    <title>Application de gestion de colis</title>
    <link rel="stylesheet" type="text/css" href="asset/css/base.css" >
    <script src="https://cdn.jsdelivr.net/npm/places.js@1.11.0"></script>
    <%@include file="header.jsp" %>
</head>
<body>

    <%@include file="nav_bar.jsp" %>

    <h1 class="mt-3 mb-3">Gestion des colis</h1>

    <!--form-->
    <div class="container mt-3 mb-3">
        <form action="RegisterColisServlet" method="POST">

            <h2 class="mt-3">Enregistrer un nouveau colis :</h2>
            <div class="form-row">
                <div class="form-group col-md-4">
                    <label>Identifiant</label>
                    <input type="text" class="form-control" required name="identifiant" placeholder="Identifiant">
                </div>
                <div class="form-group col-md-4">
                    <label>Poids</label>
                    <input type="number" class="form-control" required name="poids" placeholder="Poids">
                </div>
            </div>

            <div class="form-row">
                <label class="col-md-12">Lieu de départ</label>
                <div class="form-group col-md-3">
                    <input type="text" class="form-control" required name="origin" placeholder="Origine">
                </div>
                <div class="form-group col-md-3">
                    <input type="text" class="form-control" required name="lat" placeholder="Latitude">
                </div>
                <div class="form-group col-md-3">
                    <input type="text" class="form-control" required name="lng" placeholder="Longitude">
                </div>
            </div>

            <div class="form-row">
                <label class="col-md-12">Lieu d'arrivée</label>

                <div class="form-group">
                    <input type="text" class="form-control" id="stop" required name="destination"
                           placeholder="Destination">
                </div>
            </div>

            <button type="submit" class="btn btn-primary">Envoyer</button>
        </form>
    </div>

</body>
</html>
