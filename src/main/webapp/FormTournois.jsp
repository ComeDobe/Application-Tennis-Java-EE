<%--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>--%>

<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <title>Formulaire Tournois</title>--%>
<%--    <!-- Ajout de Bootstrap CSS -->--%>
<%--    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/css/bootstrap.min.css" rel="stylesheet">--%>
<%--    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">--%>
<%--    <style>--%>
<%--        body {--%>
<%--            background-color: #f8f9fa;--%>
<%--        }--%>

<%--        .container {--%>
<%--            margin-top: 30px;--%>
<%--        }--%>

<%--        h1 {--%>
<%--            text-align: center;--%>
<%--            font-weight: bold;--%>
<%--        }--%>

<%--        form {--%>
<%--            margin-top: 30px;--%>
<%--        }--%>

<%--        .form-group label {--%>
<%--            font-weight: bold;--%>
<%--        }--%>

<%--        .form-group.required label:after {--%>
<%--            content: "*";--%>
<%--            color: red;--%>
<%--            margin-left: 5px;--%>
<%--        }--%>

<%--        .form-group.required .form-control:invalid {--%>
<%--            border-color: red;--%>
<%--        }--%>

<%--        .form-group.required .invalid-feedback {--%>
<%--            display: block;--%>
<%--        }--%>

<%--        .form-group.required .valid-feedback {--%>
<%--            display: none;--%>
<%--        }--%>

<%--        .form-group.required .form-control:valid {--%>
<%--            border-color: green;--%>
<%--        }--%>

<%--        .form-group.required .form-control:valid + .valid-feedback {--%>
<%--            display: block;--%>
<%--        }--%>

<%--        .form-group.required .form-control:valid + .invalid-feedback {--%>
<%--            display: none;--%>
<%--        }--%>

<%--        .btn-primary {--%>
<%--            margin-top: 20px;--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<div class="container">--%>
<%--    <h1 class="my-3">${action == "ajouter" ? "Ajouter" : "Modifier"} un tournois</h1>--%>

<%--    <form action="TournoisServlet" method="post">--%>
<%--        <input type="hidden" name="action" value="${action == "ajouter" ? "ajouter" : "editer"}">--%>
<%--        <input type="hidden" name="id" value="${tournoi.id}">--%>
<%--        <div class="form-group required">--%>
<%--            <label for="nom">Nom :</label>--%>
<%--            <input type="text" name="nom" id="nom" class="form-control ${tournoi.nom != null && !tournois.nom.isEmpty() ? "is-valid" : ""}" required value="${tournoi.nom}">--%>
<%--            <div class="valid-feedback">--%>
<%--                Valide !--%>
<%--            </div>--%>
<%--            <div class="invalid-feedback">--%>
<%--                Veuillez renseigner ce champ.--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="form-group required">--%>
<%--            <label for="code">Code :</label>--%>
<%--            <input type="text" name="code" id="code" class="form-control ${tournoi.code != null && !tournois.code.isEmpty() ? "is-valid" : ""}" required value="${tournoi.code}">--%>
<%--            <div class="valid-feedback">--%>
<%--                Valide !--%>
<%--            </div>--%>
<%--            <div class="invalid-feedback">--%>
<%--                Veuillez renseigner ce champ.--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <button type="submit" class="btn btn-primary"><i class="fas fa-save"></i> Enregistrer</button>--%>
<%--    </form>--%>
<%--</div>--%>
<%--</body>--%>
<%--</html>--%>
