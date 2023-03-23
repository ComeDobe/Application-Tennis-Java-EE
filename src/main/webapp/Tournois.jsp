



<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Liste des tournois</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<%--    <style>--%>
<%--        th {--%>
<%--            text-align: center;--%>
<%--            background-color: #007bff;--%>
<%--            color: white;--%>
<%--        }--%>

<%--        tr:nth-child(even) {--%>
<%--            background-color: #f2f2f2--%>
<%--        }--%>

<%--        .action-btns {--%>
<%--            display: flex;--%>
<%--            justify-content: space-between;--%>
<%--        }--%>

<%--        .action-btns a {--%>
<%--            margin: 0 5px;--%>
<%--        }--%>
<%--    </style>--%>



    <style>
        th {
            text-align: center;
            background-color: black;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2
        }

        .action-btns {
            display: flex;
            justify-content: space-between;
        }

        .action-btns a {
            margin: 0 5px;
        }
    </style>
</head>
<body>
<div class="container">
    <h1 class="text-center mb-5">Liste des tournois</h1>

     <!-- Ajout du lien vers les autres pages -->
<%--        <a href="Joueurs.jsp">Joueurs</a>--%>
<%--        <a href="Matchs.jsp">Matchs</a>--%>
<%--        <a href="Epreuves.jsp">Epreuves</a>--%>

    <form method="get" action="tournois" class="form-inline mb-3">
        <div class="form-group mr-2">
            <label for="recherche">Rechercher :</label>
            <input type="text" class="form-control ml-2" id="recherche" name="recherche" value="${param.recherche}">
        </div>
        <button type="submit" class="btn btn-primary">Rechercher</button>
    </form>

    <hr>

    <table class="table table-striped table-bordered">
        <thead>
        <tr>
            <th>Id</th>
            <th>Nom</th>
            <th>Code</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="tournoi" items="${tournois}">
            <tr>
                <td>${tournoi.id}</td>
                <td>${tournoi.nom}</td>
                <td>${tournoi.code}</td>
                <td class="action-btns">
                    <a href="tournois?action=editer&id=${tournoi.id}" class="btn btn-sm btn-primary">Editer</a>
                    <a href="tournois?action=supprimer&id=${tournoi.id}" class="btn btn-sm btn-danger">Supprimer</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <hr>

    <a href="tournois?action=ajouter" class="btn btn-success">Ajouter un tournoi</a>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W        1/14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>
</html>



