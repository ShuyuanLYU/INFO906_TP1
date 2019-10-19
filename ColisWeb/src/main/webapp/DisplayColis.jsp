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
            <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#form-editer" aria-expanded="false" aria-controls="collapseExample">
                Éditer
            </button>
        </p>
        <div class="collapse" id="form-editer">
            <h1 class="mt-3">Éditer un nouveau colis :</h1>

            <form action="EditColisServlet" method="post">

                <div class="form-row">

                    <input type="hidden" class="form-control" name="identifiant" placeholder="Identifiant" value=${ colis.identifiant }>

                    <label class="col-md-12">Localisation</label>
                    <div class="form-group col-md-4">
                        <input type="text" class="form-control" id="cityPosition" name="localisation" placeholder="Ville" value=${ colis.origin }>
                    </div>
                    <div class="form-group col-md-4">
                        <input type="text" class="form-control" id="latPos" name="lat" placeholder="lat" value=${ colis.latitude }>
                    </div>
                    <div class="form-group col-md-4">
                        <input type="text" class="form-control" id="lngPos" name="lng" placeholder="lng" value=${ colis.longitude }>
                    </div>
                </div>

                <div class="form-group">
                    <label>Emplacement</label>
                    <input type="text" class="form-control" name="emplacement">
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

    </div>





</body>

</html>
