<%--<%@ page language="java" contentType="text/html; charset=UTF-8"--%>
<%--         pageEncoding="UTF-8"%>--%>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <title>Liste des joueurs</title>--%>
<%--    <!-- Ajouter le lien Bootstrap CSS -->--%>
<%--    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"--%>
<%--          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">--%>
<%--</head>--%>
<%--<body>--%>
<%--<div class="container mt-5">--%>
<%--    <h1>Liste des joueurs</h1>--%>

<%--    <form method="GET" action="epreuve">--%>
<%--        <div class="form-group">--%>
<%--            <label for="annee">Année :</label>--%>
<%--            <select name="annee" id="annee" class="form-control">--%>
<%--                <option value="2019">2019</option>--%>
<%--                <option value="2020">2020</option>--%>
<%--                <option value="2021">2021</option>--%>
<%--            </select>--%>
<%--        </div>--%>

<%--        <div class="form-group">--%>
<%--            <label for="type_epreuve">Type d'épreuve :</label>--%>
<%--            <select name="type_epreuve" id="type_epreuve" class="form-control">--%>
<%--                <option value="F">F</option>--%>
<%--                <option value="H">H</option>--%>
<%--            </select>--%>
<%--        </div>--%>

<%--        <button type="submit" class="btn btn-primary">Rechercher</button>--%>
<%--    </form>--%>

<%--    <hr>--%>

<%--    <table class="table">--%>
<%--        <thead>--%>
<%--        <tr>--%>
<%--            <th>Nom</th>--%>
<%--            <th>Prénom</th>--%>
<%--        </tr>--%>
<%--        </thead>--%>
<%--        <tbody>--%>
<%--        <c:forEach var="joueur" items="${joueurs}">--%>
<%--            <tr>--%>
<%--                <td>${joueur.nom}</td>--%>
<%--                <td>${joueur.prenom}</td>--%>
<%--            </tr>--%>
<%--        </c:forEach>--%>
<%--        </tbody>--%>
<%--    </table>--%>
<%--</div>--%>
<%--<!-- Ajouter les scripts Bootstrap -->--%>
<%--<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"--%>
<%--        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"--%>
<%--        crossorigin="anonymous"></script>--%>
<%--<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"--%>
<%--        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"--%>
<%--        crossorigin="anonymous"></script>--%>
<%--<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"--%>
<%--        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"--%>
<%--        crossorigin="anonymous"></script>--%>
<%--</body>--%>
<%--</html>--%>








<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Liste des joueurs</title>
    <!-- Ajouter le lien Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<div class="container mt-5">
    <h1>Liste des joueurs</h1>

    <form method="GET" action="epreuve">
<%--        <div class="form-group">--%>
<%--            <label for="annee">Année :</label>--%>
<%--            <select name="annee" id="annee" class="form-control">--%>
<%--                <option value="2019">2019</option>--%>
<%--                <option value="2020">2020</option>--%>
<%--                <option value="2021">2021</option>--%>
<%--            </select>--%>
<%--        </div>--%>


    <div class="form-group">
        <label for="annee">Année :</label>
        <select name="annee" id="annee" class="form-control">
            <c:forEach var="annee" begin="2010" end="2021">
                <option value="${annee}">${annee}</option>
            </c:forEach>
        </select>
    </div>



    <div class="form-group">
            <label for="type_epreuve">Type d'épreuve :</label>
            <select name="type_epreuve" id="type_epreuve" class="form-control">
                <option value="F">F</option>
                <option value="H">H</option>
            </select>
        </div>

        <button type="submit" class="btn btn-primary">Rechercher</button>
    </form>

    <hr>

    <table class="table">
        <thead>
        <tr>
            <th>Nom</th>
            <th>Prénom</th>
<%--            <th>Type d'épreuve</th>--%>
<%--            <th>Année</th>--%>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="joueur" items="${joueurs}">
            <tr>
                <td>${joueur.getNom()}</td>
                <td>${joueur.getPrenom()}</td>
<%--                <td>${joueur.getType_Epreuve()}</td>--%>
<%--                <td>${joueur.getAnnee()}</td>--%>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<!-- Ajouter les scripts Bootstrap -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>
</html>








<%--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>

<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <title>Liste des épreuves</title>--%>
<%--    <!-- Lien vers les fichiers CSS de Bootstrap -->--%>
<%--    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"--%>
<%--          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">--%>
<%--</head>--%>
<%--<body>--%>
<%--<div class="container">--%>
<%--    <h1>Liste des épreuves pour l'année <%= request.getParameter("annee") %> et le type d'épreuve <%= request.getParameter("type_epreuve") %></h1>--%>
<%--    <form method="GET">--%>
<%--        <div class="form-group">--%>
<%--            <label for="annee">Année</label>--%>
<%--            <select class="form-control" id="annee" name="annee">--%>
<%--                <option value="2019">2019</option>--%>
<%--                <option value="2020">2020</option>--%>
<%--                <option value="2021">2021</option>--%>
<%--            </select>--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <label for="type_epreuve">Type d'épreuve</label>--%>
<%--            <select class="form-control" id="type_epreuve" name="type_epreuve">--%>
<%--                <option value="F">F</option>--%>
<%--                <option value="H">H</option>--%>
<%--            </select>--%>
<%--        </div>--%>
<%--        <button type="submit" class="btn btn-primary">Rechercher</button>--%>
<%--    </form>--%>
<%--    <table class="table table-striped">--%>
<%--        <thead>--%>
<%--        <tr>--%>
<%--            <th>Nom</th>--%>
<%--            <th>Prénom</th>--%>
<%--        </tr>--%>
<%--        </thead>--%>
<%--        <tbody>--%>
<%--        <c:forEach var="epreuve" items="${epreuves}">--%>
<%--            <tr>--%>
<%--                <td>${epreuve.getNom()}</td>--%>
<%--                <td>${epreuve.getPrenom()}</td>--%>
<%--            </tr>--%>
<%--        </c:forEach>--%>
<%--        </tbody>--%>
<%--    </table>--%>
<%--</div>--%>
<%--<!-- Lien vers les fichiers JavaScript de Bootstrap -->--%>
<%--<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"--%>
<%--        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"--%>
<%--        crossorigin="anonymous"></script>--%>
<%--<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"--%>
<%--        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNVQ8o7"--%>
<%--        crossorigin="anonymous"></script>--%>
<%--&lt;%&ndash;<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"&ndash;%&gt;--%>
<%--&lt;%&ndash;        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy&ndash;%&gt;--%>
<%--<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"--%>
<%--        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"--%>
<%--        crossorigin="anonymous"></script>--%>
<%--</body>--%>
<%--</html>--%>









<%--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>

<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <title>Liste des épreuves</title>--%>
<%--    <!-- Lien vers les fichiers CSS de Bootstrap -->--%>
<%--    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"--%>
<%--          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">--%>
<%--</head>--%>
<%--<body>--%>
<%--<div class="container">--%>
<%--    <h1>Liste des épreuves pour l'année <%= request.getParameter("annee") %> et le type d'épreuve <%= request.getParameter("type_epreuve") %></h1>--%>
<%--    <form method="GET">--%>
<%--        <div class="form-group">--%>
<%--            <label for="annee">Année</label>--%>
<%--            <select class="form-control" id="annee" name="annee">--%>
<%--                <option value="2019" <% if ("2019".equals(request.getParameter("annee"))) { %>selected<% } %>>2019</option>--%>
<%--                <option value="2020" <% if ("2020".equals(request.getParameter("annee"))) { %>selected<% } %>>2020</option>--%>
<%--                <option value="2021" <% if ("2021".equals(request.getParameter("annee"))) { %>selected<% } %>>2021</option>--%>
<%--            </select>--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <label for="type_epreuve">Type d'épreuve</label>--%>
<%--            <select class="form-control" id="type_epreuve" name="type_epreuve">--%>
<%--                <option value="F" <% if ("F".equals(request.getParameter("type_epreuve"))) { %>selected<% } %>>F</option>--%>
<%--                <option value="H" <% if ("H".equals(request.getParameter("type_epreuve"))) { %>selected<% } %>>H</option>--%>
<%--            </select>--%>
<%--        </div>--%>
<%--        <button type="submit" class="btn btn-primary">Rechercher</button>--%>
<%--    </form>--%>
<%--    <table class="table table-striped">--%>
<%--        <thead>--%>
<%--        <tr>--%>
<%--            <th>Nom</th>--%>
<%--            <th>Prénom</th>--%>
<%--        </tr>--%>
<%--        </thead>--%>
<%--        <tbody>--%>
<%--        <c:forEach var="epreuve" items="${epreuves}">--%>
<%--            <tr>--%>
<%--                <td>${epreuve.getNom()}</td>--%>
<%--                <td>${epreuve.getPrenom()}</td>--%>
<%--            </tr>--%>
<%--        </c:forEach>--%>
<%--        </tbody>--%>
<%--    </table>--%>
<%--</div>--%>
<%--<!-- Lien vers les fichiers JavaScript de Bootstrap -->--%>
<%--<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"--%>
<%--        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"--%>
<%--        crossorigin="anonymous"></script>--%>
<%--<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"--%>
<%--        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNVQ8o7"--%>
<%--        crossorigin="anonymous"></script>--%>
<%--<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"--%>
<%--        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"--%>
<%--        crossorigin="anonymous"></script>--%>
<%--</body>--%>
<%--</html>--%>

