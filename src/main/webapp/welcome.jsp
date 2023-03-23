<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Bienvenue</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <style>
    body {
      background-color: #f8f9fa;
      font-family: Arial, Helvetica, sans-serif;
      font-size: 14px;
    }
    h1 {
      margin-top: 50px;
      margin-bottom: 30px;
      font-weight: bold;
      text-align: center;
    }
    p {
      margin-top: 20px;
      text-align: center;
      font-size: 18px;
    }
    .container {
      margin-top: 50px;
    }
    .btn-primary, .btn-danger {
      width: 100%;
      height: 150px;
      font-size: 24px;
      font-weight: bold;
      text-align: center;
      padding-top: 60px;
      margin-bottom: 20px;
    }
  </style>
</head>
<body>
<h1>Bienvenue</h1>

<p> Selectionnez votre Onglet et Bonne Navigation sur notre Site ! </p>
<%--<p>Vous êtes connecté en tant que ${user.login}</p>--%>

<div class="container">
  <div class="row">
    <div class="col-md-4">
      <a href="index.jsp" class="btn btn-primary">Liste des joueurs</a>
    </div>
    <div class="col-md-4">
      <a href="Tournois.jsp" class="btn btn-primary">Liste des tournois</a>
    </div>
    <div class="col-md-4">
      <a href="Matchs.jsp" class="btn btn-primary">Liste des matchs</a>
    </div>
  </div>
  <div class="row">
    <div class="col-md-6">
      <a href="Epreuves.jsp" class="btn btn-primary">Liste des épreuves</a>
    </div>
    <div class="col-md-6">
      <a href="index.jsp" class="btn btn-danger">Déconnexion</a>
    </div>
  </div>
</div>
</body>
</html>
