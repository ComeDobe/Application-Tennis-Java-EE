<%--<%@ page language="java" contentType="text/html; charset=UTF-8"--%>
<%--         pageEncoding="UTF-8"%>--%>
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
<%--  </style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<h1>Connexion</h1>--%>
<%--<form method="post" action="UserServlet">--%>
<%--  <div class="form-group">--%>
<%--    <label for="login">Nom d'utilisateur :</label>--%>
<%--    <input type="text" name="login" id="login" class="form-control" required>--%>
<%--  </div>--%>
<%--  <div class="form-group">--%>
<%--    <label for="password">Mot de passe :</label>--%>
<%--    <input type="password" name="password" id="password" class="form-control" required>--%>
<%--  </div>--%>
<%--  <button type="submit" class="btn btn-primary">Se connecter</button>--%>
<%--</form>--%>
<%--<p>${errorMessage}</p>--%>
<%--</body>--%>
<%--</html>--%>


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
    input[type="text"], input[type="password"] {
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
</body>
</html>
