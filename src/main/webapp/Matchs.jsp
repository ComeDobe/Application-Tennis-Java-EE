


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
<%--<div class="text-center">--%>
<%--    <h1>Liste des matchs</h1>--%>

<%--&lt;%&ndash;    <!-- Liens vers les autres pages -->&ndash;%&gt;--%>
<%--&lt;%&ndash;    <div style="display: flex; justify-content: flex-end; margin-bottom: 20px;">&ndash;%&gt;--%>

<%--&lt;%&ndash;        <a href="index.jsp" style="margin-left: 10px; color: #007bff; text-decoration: none; font-weight: bold;">Joueurs</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;        <a href="Matchs.jsp" style="margin-left: 10px; color: #007bff; text-decoration: none; font-weight: bold;">Matchs</a>&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;        <a href="Tournois.jsp" style="margin-left: 10px; color: #007bff; text-decoration: none; font-weight: bold;">Tournois</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <a href="Epreuves.jsp" style="margin-left: 10px; color: #007bff; text-decoration: none; font-weight: bold;">Epreuves</a>&ndash;%&gt;--%>

<%--&lt;%&ndash;    </div>&ndash;%&gt;--%>

<%--    <form action="matchs" method="get" class="form-inline d-flex justify-content-center">--%>
<%--        <input type="hidden" name="action" value="rechercher">--%>
<%--        <input type="text" name="recherche" placeholder="Recherche..." class="form-control mr-sm-2">--%>
<%--        <input type="submit" value="Rechercher" class="btn btn-primary">--%>
<%--    </form>--%>
<%--</div>--%>

<%--<table class="table table-bordered table-striped">--%>
<%--    <thead>--%>
<%--    <tr>--%>
<%--        <th>Vainqueur - Nom</th>--%>
<%--        <th>Vainqueur - Prénom</th>--%>
<%--        <th>Finaliste - Nom</th>--%>
<%--        <th>Finaliste - Prénom</th>--%>
<%--    </tr>--%>
<%--    </thead>--%>
<%--    <tbody>--%>
<%--    <c:forEach var="match" items="${matchs}">--%>
<%--        <tr>--%>
<%--            <td>${joueurs[match.id_vainqueur].nom}</td>--%>
<%--            <td>${joueurs[match.id_vainqueur].prenom}</td>--%>
<%--            <td>${joueurs[match.id_finaliste].nom}</td>--%>
<%--            <td>${joueurs[match.id_finaliste].prenom}</td>--%>
<%--        </tr>--%>
<%--    </c:forEach>--%>
<%--    </tbody>--%>
<%--</table>--%>




<%--<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">--%>
<%--    <div class="container">--%>
<%--        &lt;%&ndash;        <a class="navbar-brand" href="#">Mon entreprise</a>&ndash;%&gt;--%>
<%--        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"--%>
<%--                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">--%>
<%--            <span class="navbar-toggler-icon"></span>--%>
<%--        </button>--%>
<%--        <div class="collapse navbar-collapse" id="navbarNav">--%>
<%--            <ul class="navbar-nav ml-auto">--%>

<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link" href="index.jsp">Joueurs</a>--%>
<%--                </li>--%>
<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link" href="Tournois.jsp">Tournois</a>--%>
<%--                </li>--%>
<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link" href="Epreuves.jsp">Epreuves</a>--%>
<%--                </li>--%>
<%--            </ul>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</nav>--%>

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

        .search-bar {
            width: 80%;
            margin: 20px auto;
        }

        h1 {
            margin-top: 50px;
            font-size: 36px;
        }
    </style>
</head>
<body>
<div class="text-center">
    <h1>Liste des matchs</h1>


    <form action="matchs" method="get" class="form-inline d-flex justify-content-center search-bar">
        <input type="hidden" name="action" value="rechercher">
        <input type="text" name="recherche" placeholder="Recherche..." class="form-control mr-sm-2" style="width: 70%;">
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




<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
    <div class="container">
        <%--        <a class="navbar-brand" href="#">Mon entreprise</a>--%>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">

                <li class="nav-item">
                    <a class="nav-link" href="index.jsp">Joueurs</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="Tournois.jsp">Tournois</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Epreuves.jsp">Epreuves</a>
                </li><br><br><br><br><br><br>
                <li>  <a href="LogoutServlet" class="btn btn-danger"><i class="fas fa-sign-out-alt"></i> Déconnexion</a></li>
            </ul>
        </div>
    </div>
</nav>
</body>
</html>
















