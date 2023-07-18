


<%--***********************************************************************--%>
<%--la version qui marche bien et validé --%>


<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--  <meta charset="UTF-8">--%>
<%--  <title>Page de connexion</title>--%>
<%--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">--%>
<%--  <style>--%>
<%--    body {--%>
<%--      background-color: #f8f9fa;--%>
<%--      font-family: Arial, Helvetica, sans-serif;--%>
<%--      font-size: 14px;--%>
<%--    }--%>
<%--    h1 {--%>
<%--      margin-top: 50px;--%>
<%--      margin-bottom: 30px;--%>
<%--      font-weight: bold;--%>
<%--      text-align: center;--%>
<%--    }--%>
<%--    form {--%>
<%--      margin-top: 30px;--%>
<%--      max-width: 500px;--%>
<%--      margin-left: auto;--%>
<%--      margin-right: auto;--%>
<%--      padding: 20px;--%>
<%--      background-color: #ffffff;--%>
<%--      border: 1px solid #dee2e6;--%>
<%--      border-radius: 5px;--%>
<%--      box-shadow: 0px 0px 5px #ccc;--%>
<%--    }--%>
<%--    input[type="text"], input[type="password"] {--%>
<%--      width: 100%;--%>
<%--      padding: 8px;--%>
<%--      margin-top: 10px;--%>
<%--      margin-bottom: 10px;--%>
<%--      border: 1px solid #ccc;--%>
<%--      border-radius: 4px;--%>
<%--      box-sizing: border-box;--%>
<%--    }--%>
<%--    input[type="submit"] {--%>
<%--      background-color: #007bff;--%>
<%--      color: #fff;--%>
<%--      border: none;--%>
<%--      border-radius: 4px;--%>
<%--      cursor: pointer;--%>
<%--      font-size: 16px;--%>
<%--      padding: 10px 20px;--%>
<%--      margin-top: 10px;--%>
<%--    }--%>
<%--    input[type="submit"]:hover {--%>
<%--      background-color: #0069d9;--%>
<%--    }--%>
<%--    p {--%>
<%--      margin-top: 20px;--%>
<%--      text-align: center;--%>
<%--      color: #dc3545;--%>
<%--      font-weight: bold;--%>
<%--    }--%>
<%--    .logo-container {--%>
<%--      text-align: center;--%>
<%--      margin-bottom: 50px;--%>
<%--    }--%>
<%--    .logo {--%>
<%--      max-width: 300px;--%>
<%--    }--%>
<%--  </style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<div class="container">--%>
<%--  <div class="row">--%>
<%--    <div class="col-sm-12 logo-container">--%>
<%--      <img src="logo.png" alt="Logo" class="logo"/>--%>
<%--    </div>--%>
<%--  </div>--%>
<%--  <div class="row justify-content-center">--%>
<%--    <div class="col-sm-6">--%>
<%--      <h1 class="text-center">Connexion</h1>--%>
<%--      <form method="post" action="UserServlet">--%>
<%--        <div class="form-group">--%>
<%--          <label for="login">Nom d'utilisateur :</label>--%>
<%--          <input type="text" name="login" id="login" class="form-control" required>--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--          <label for="password">Mot de passe :</label>--%>
<%--          <input type="password" name="password" id="password" class="form-control" required>--%>
<%--        </div>--%>
<%--        <button type="submit" class="btn btn-primary btn-block">Se connecter</button>--%>
<%--      </form>--%>
<%--      <p class="text-center">${errorMessage}</p>--%>
<%--    </div>--%>
<%--  </div>--%>
<%--</div>--%>
<%--</body>--%>
<%--</html>--%>










<%--****************************************************************************************--%>
<%--partie de connexion avec optim administrator--%>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Page de connexion</title>
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

    form {
      margin-top: 30px;
      max-width: 500px;
      margin-left: auto;
      margin-right: auto;
      padding: 20px;
      background-color: #ffffff;
      border: 1px solid #dee2e6;
      border-radius: 5px;
      box-shadow: 0px 0px 5px #ccc;
    }

    input[type="text"],
    input[type="password"] {
      width: 100%;
      padding: 8px;
      margin-top: 10px;
      margin-bottom: 10px;
      border: 1px solid #ccc;
      border-radius: 4px;
      box-sizing: border-box;
    }

    input[type="submit"] {
      background-color: #007bff;
      color: #fff;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      font-size: 16px;
      padding: 10px 20px;
      margin-top: 10px;
    }

    input[type="submit"]:hover {
      background-color: #0069d9;
    }

    p {
      margin-top: 20px;
      text-align: center;
      color: #dc3545;
      font-weight: bold;
    }

    .logo-container {
      text-align: center;
      margin-bottom: 50px;
    }

    .logo {
      max-width: 300px;
    }
  </style>

</head>
<body>
<div class="container">
  <div class="row">
    <div class="col-sm-12 logo-container">
      <img src="logo.png" alt="Logo" class="logo"/>
    </div>
  </div>
  <div class="row justify-content-center">
    <div class="col-sm-6">
      <h1 class="text-center">Connexion</h1>
      <form method="post" action="UserServlet">
        <div class="form-group">
          <label for="role">Role :  </label>
          <select name="role" id="role" class="form-control">
            <option value="user">Utilisateur</option>
            <option value="admin">Administrateur</option>
          </select>
        </div>
        <div class="form-group">
          <label for="login">Nom d'utilisateur :</label>
          <input type="text" name="login" id="login" class="form-control" required>
        </div>
        <div class="form-group">
          <label for="password">Mot de passe :</label>
          <input type="password" name="password" id="password" class="form-control" required>
        </div>
        <button type="submit" class="btn btn-primary btn-block">Se connecter</button>
      </form>
      <p class="text-center">${errorMessage}</p>
    </div>
  </div>
</div>






<%--***************************************************************************************************--%>




<%--tesssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssst--%>



<%--<%@ page contentType="text/html; charset=UTF-8" language="java" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--  <meta charset="UTF-8">--%>
<%--  <title>Page de connexion</title>--%>
<%--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">--%>
<%--  <style>--%>
<%--    body {--%>
<%--      background-color: #f8f9fa;--%>
<%--      font-family: Arial, Helvetica, sans-serif;--%>
<%--      font-size: 14px;--%>
<%--    }--%>

<%--    .header {--%>
<%--      background-color: #007bff;--%>
<%--      color: #fff;--%>
<%--      padding: 10px;--%>
<%--    }--%>

<%--    .logo {--%>
<%--      max-width: 200px;--%>
<%--    }--%>

<%--    .content {--%>
<%--      margin-top: 30px;--%>
<%--    }--%>

<%--    h1 {--%>
<%--      font-weight: bold;--%>
<%--      text-align: center;--%>
<%--      margin-top: 0;--%>
<%--    }--%>

<%--    form {--%>
<%--      max-width: 400px;--%>
<%--      margin: 0 auto;--%>
<%--      padding: 20px;--%>
<%--      background-color: #fff;--%>
<%--      border-radius: 5px;--%>
<%--      box-shadow: 0 0 10px #dee2e6;--%>
<%--    }--%>

<%--    .form-group {--%>
<%--      margin-bottom: 20px;--%>
<%--    }--%>

<%--    label {--%>
<%--      display: block;--%>
<%--      margin-bottom: 5px;--%>
<%--      font-weight: bold;--%>
<%--    }--%>

<%--    input[type="text"],--%>
<%--    input[type="password"],--%>
<%--    select {--%>
<%--      width: 100%;--%>
<%--      padding: 8px 16px;--%>
<%--      border-radius: 4px;--%>
<%--      border: 1px solid #dee2e6;--%>
<%--      font-size: 14px;--%>
<%--    }--%>

<%--    .btn-login {--%>
<%--      width: 100%;--%>
<%--      padding: 10px;--%>
<%--      border-radius: 4px;--%>
<%--      border: none;--%>
<%--      background-color: #007bff;--%>
<%--      color: #fff;--%>
<%--      cursor: pointer;--%>
<%--      font-size: 14px;--%>
<%--    }--%>

<%--    .btn-login:hover {--%>
<%--      opacity: 0.8;--%>
<%--    }--%>
<%--  </style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<div class="header">--%>
<%--  <div class="container">--%>
<%--    <div class="row justify-content-center align-items-center">--%>
<%--      <div class="col-auto">--%>
<%--        <img src="logo.png" alt="Logo" class="logo"/>--%>
<%--      </div>--%>
<%--    </div>--%>
<%--  </div>--%>
<%--</div>--%>
<%--<div class="container content">--%>
<%--  <div class="row">--%>
<%--    <div class="col-sm-12">--%>
<%--      <h1>Connexion</h1>--%>
<%--      <form method="post" action="LoginServlet">--%>
<%--        <div class="form-group">--%>
<%--          <label for="login">Login</label>--%>
<%--          <input type="text" name="login" id="login" required>--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--          <label for="password">Password</label>--%>
<%--          <input type="password" name="password" id="password" required>--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--          <label for="profil">Profil</label>--%>
<%--          <select name="profil" id="profil" required>--%>
<%--            <option value="">Choisissez un profil</option>--%>
<%--            <option value="1">Administrateur</option>--%>
<%--            <option value="2">Utilisateur</option>--%>
<%--          </select>--%>
<%--        </div>--%>
<%--        <button type="submit" class="btn-login">Se connecter</button>--%>
<%--      </form>--%>
<%--    </div>--%>
<%--  </div>--%>
<%--</div>--%>
<%--</body>--%>
<%--</html>--%>

