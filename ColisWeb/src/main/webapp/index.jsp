<%--
  Created by IntelliJ IDEA.
  User: shuyuan
  Date: 2019-10-17
  Time: 11:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                    <input type="text" class="form-control" required name="identifiant" placeholder="Identifiant" value="Bob">
                </div>
                <div class="form-group col-md-4">
                    <label>Poids</label>
                    <input type="number" class="form-control" required name="poid" placeholder="Poids" value="123">
                </div>
                <div class="form-group col-md-4">
                    <label>Valeur</label>
                    <input type="text" class="form-control" name="name" placeholder="Name"  value="BobNameO.O">
                </div>
            </div>

            <div class="form-row">
                <label class="col-md-12">Lieu de départ</label>
                <div class="form-group col-md-3">
                    <input type="text" class="form-control" required name="origin" placeholder="origin" value="Chambery">
                </div>
                <div class="form-group col-md-3">
                    <input type="text" class="form-control" required id="lat" name="lat" placeholder="lat" value="100">
                </div>
                <div class="form-group col-md-3">
                    <input type="text" class="form-control" required id="lng" name="lng" placeholder="lng" value="200">
                </div>
            </div>

            <div class="form-row">
                <label class="col-md-12">Lieu d'arrivé</label>
                <!--<div class="form-group col-md-6">
                    <input type="text" class="form-control" id="cityStop" placeholder="Ville">
                </div>-->
                <div class="form-group">
                    <input type="text" class="form-control" id="stop" required name="destination" placeholder="destination" value="Paris">
                </div>
            </div>

            <button type="submit" class="btn btn-primary">Envoyer</button>
        </form>

        <h2 class="mt-3">Editer un nouveau colis :</h2>

        <form action="EditColisServlet">

            <div class="form-group">
                <label>Identifiant</label>
                <input type="text" class="form-control" required name="identifiant" placeholder="Identifiant">
            </div>

            <div class="form-row">
                <label class="col-md-12">Localisation</label>
                <div class="form-group col-md-4">
                    <input type="text" class="form-control" required id="cityPosition" name="localisation" placeholder="Ville">
                </div>
                <div class="form-group col-md-4">
                    <input type="text" class="form-control" required id="latPos" name="lat" placeholder="lat">
                </div>
                <div class="form-group col-md-4">
                    <input type="text" class="form-control" required id="lngPos" name="lng" placeholder="lng">
                </div>
            </div>

            <div class="form-group">
                <label>Emplacement</label>
                <input type="text" class="form-control" required name="emplacement">
            </div>

            <div class="input-group">
                <div class="input-group-append">
                    <label class="input-group-text" >Etat</label>
                </div>
                <select class="custom-select" name="etat">
                    <option value="REGISTERED">REGISTERED</option>
                    <option value="ONGOING">ONGOING</option>
                    <option value="PENDING">PENDING</option>
                    <option value="DELIVERED">DELIVERED</option>
                    <option value="BLOCKED">BLOCKED</option>
                </select>
            </div>

            <button type="submit" class="btn btn-primary mt-3">Envoyer</button>

        </form>

    </div>

</body>
</html>
