

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Déconnexion</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <style>
    body {
      background-color: #f8f9fa;
      font-family: Arial, Helvetica, sans-serif;
      font-size: 14px;
    }

    h1 {
      font-weight: bold;
      text-align: center;
      margin-top: 50px;
    }

    p {
      margin-top: 20px;
      text-align: center;
      font-size: 18px;
      color: #555;
    }
  </style>
</head>
<body>
<%
  if (session != null) {
    session.invalidate();
  }
%>
<h1>Déconnexion réussie</h1>
<p>Vous avez été déconnecté avec succès. <a href="login.jsp">Cliquez ici</a> pour retourner à la page de connexion.</p>
</body>
</html>
