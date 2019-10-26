<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <title>Suivi du colis</title>
    <script src="https://cdn.jsdelivr.net/npm/places.js@1.11.0"></script>
    <%@include file="header.jsp" %>
</head>
<body>

<%@include file="nav_bar.jsp" %>

<div class="container mt-3 mb-3">

    <h1 class="mt-3 mb-3">Affichage du colis</h1>

    <h2 class="mt-3 mb-3">Informations colis :</h2>

    <p>Identifiant : ${ colis.identifiant }</p>
    <p>Poids : ${ colis.poids }</p>
    <p>Origine : ${ colis.origin }</p>
    <p>Destination : ${ colis.destination }</p>
    <p>État : ${ colis.state }</p>
    <p>Latitude : ${ colis.latitude }</p>
    <p>Longitude : ${ colis.longitude }</p>
    <p>Emplacement : ${ colis.emplacement }</p>

    <p>
        <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#form-editer"
                aria-expanded="false" aria-controls="collapseExample">
            Éditer
        </button>
    </p>
    <div class="collapse" id="form-editer">
        <h1 class="mt-3">Éditer un nouveau colis :</h1>

        <form action="EditColisServlet" method="post">

            <input type="hidden" class="form-control" name="identifiant" placeholder="Identifiant"
                   value=${ colis.identifiant }>

            <div class="form-row">
                <label class="col-md-12">Emplacement précédent</label>
                <div class="form-group col-md-4">
                    <input type="text" class="form-control" value=${ colis.emplacement } readonly>
                </div>
                <div class="form-group col-md-4">
                    <input type="text" class="form-control" value=${ colis.latitude } readonly>
                </div>
                <div class="form-group col-md-4">
                    <input type="text" class="form-control" value=${ colis.longitude } readonly>
                </div>
            </div>

            <div class="form-row">
                <label class="col-md-12">Emplacement actuel</label>
                <div class="form-group">
                    <input type="text" class="form-control" name="emplacement" placeholder="Emplacement" required>
                </div>
                <div class="form-group col-md-4">
                    <input type="text" class="form-control" name="lat" placeholder="Latitude" required>
                </div>
                <div class="form-group col-md-4">
                    <input type="text" class="form-control" name="lng" placeholder="Longitude" required>
                </div>
            </div>

            <div class="input-group">
                <div class="input-group-append">
                    <label class="input-group-text">État</label>
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

</div>


</body>

</html>
