



<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">--%>
<%--    <title>Matchs</title>--%>
<%--    <!-- Ajout de Bootstrap CSS -->--%>
<%--    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">--%>
<%--    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>--%>
<%--    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>--%>
<%--    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>--%>
<%--    <!-- Style personnalisé -->--%>
<%--    <style>--%>
<%--        body {--%>
<%--            margin: 20px;--%>
<%--        }--%>

<%--        table {--%>
<%--            width: 100%;--%>
<%--            margin-top: 20px;--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<h1>Liste des matchs</h1>--%>

<%--<form action="matchs" method="get" class="form-inline">--%>
<%--    <input type="hidden" name="action" value="rechercher">--%>
<%--    <input type="text" name="recherche" placeholder="Recherche..." class="form-control mr-sm-2">--%>
<%--    <input type="submit" value="Rechercher" class="btn btn-primary">--%>
<%--</form>--%>

<%--<table class="table table-bordered table-striped">--%>
<%--    <thead>--%>
<%--    <tr>--%>
<%--        <th>Vainqueur</th>--%>
<%--        <th>Finaliste</th>--%>
<%--    </tr>--%>
<%--    </thead>--%>
<%--    <tbody>--%>
<%--    <c:forEach var="match" items="${matchs}">--%>
<%--        <tr>--%>
<%--            <td>${joueurs[match.id_vainqueur].nom} ${joueurs[match.id_vainqueur].prenom}${joueurs[match.id_vainqueur].sexe} </td>--%>
<%--            <td>${joueurs[match.id_finaliste].nom} ${joueurs[match.id_finaliste].prenom} ${joueurs[match.id_finaliste].sexe}</td>--%>
<%--        </tr>--%>
<%--    </c:forEach>--%>
<%--    </tbody>--%>
<%--</table>--%>
<%--</body>--%>
<%--</html>--%>




<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">--%>
<%--    <title>Matchs</title>--%>
<%--    <!-- Ajout de Bootstrap CSS -->--%>
<%--    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">--%>
<%--    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>--%>
<%--    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>--%>
<%--    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>--%>
<%--    <!-- Style personnalisé -->--%>
<%--    <style>--%>
<%--        body {--%>
<%--            margin: 20px;--%>
<%--        }--%>

<%--        table {--%>
<%--            width: 100%;--%>
<%--            margin-top: 20px;--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<h1>Liste des matchs</h1>--%>

<%--<form action="matchs" method="get" class="form-inline">--%>
<%--    <input type="hidden" name="action" value="rechercher">--%>
<%--    <input type="text" name="recherche" placeholder="Recherche..." class="form-control mr-sm-2">--%>
<%--    <input type="submit" value="Rechercher" class="btn btn-primary">--%>
<%--</form>--%>

<%--<table class="table table-bordered table-striped">--%>
<%--    <thead>--%>
<%--    <tr>--%>
<%--        <th>Vainqueur - Nom</th>--%>
<%--        <th>Vainqueur - Prénom</th>--%>
<%--&lt;%&ndash;        <th>Vainqueur - Sexe</th>&ndash;%&gt;--%>
<%--        <th>Finaliste - Nom</th>--%>
<%--        <th>Finaliste - Prénom</th>--%>
<%--&lt;%&ndash;        <th>Finaliste - Sexe</th>&ndash;%&gt;--%>
<%--    </tr>--%>
<%--    </thead>--%>
<%--    <tbody>--%>
<%--    <c:forEach var="match" items="${matchs}">--%>
<%--        <tr>--%>
<%--            <td>${joueurs[match.id_vainqueur].nom}</td>--%>
<%--            <td>${joueurs[match.id_vainqueur].prenom}</td>--%>
<%--&lt;%&ndash;            <td>${joueurs[match.id_vainqueur].sexe}</td>&ndash;%&gt;--%>
<%--            <td>${joueurs[match.id_finaliste].nom}</td>--%>
<%--            <td>${joueurs[match.id_finaliste].prenom}</td>--%>
<%--&lt;%&ndash;            <td>${joueurs[match.id_finaliste].sexe}</td>&ndash;%&gt;--%>
<%--        </tr>--%>
<%--    </c:forEach>--%>
<%--    </tbody>--%>
<%--</table>--%>
<%--</body>--%>
<%--</html>--%>



<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Matchs</title>
    <!-- Ajout de Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <!-- Style personnalisé -->
    <style>
        body {
            margin: 20px;
        }

        table {
            width: 100%;
            margin-top: 20px;
        }
    </style>
</head>
<body>
<div class="text-center">
    <h1>Liste des matchs</h1>

    <form action="matchs" method="get" class="form-inline d-flex justify-content-center">
        <input type="hidden" name="action" value="rechercher">
        <input type="text" name="recherche" placeholder="Recherche..." class="form-control mr-sm-2">
        <input type="submit" value="Rechercher" class="btn btn-primary">
    </form>
</div>

<table class="table table-bordered table-striped">
    <thead>
    <tr>
        <th>Vainqueur - Nom</th>
        <th>Vainqueur - Prénom</th>
        <th>Finaliste - Nom</th>
        <th>Finaliste - Prénom</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="match" items="${matchs}">
        <tr>
            <td>${joueurs[match.id_vainqueur].nom}</td>
            <td>${joueurs[match.id_vainqueur].prenom}</td>
            <td>${joueurs[match.id_finaliste].nom}</td>
            <td>${joueurs[match.id_finaliste].prenom}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
