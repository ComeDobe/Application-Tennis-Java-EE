<%--&lt;%&ndash;<%@ page language="java" contentType="text/html; charset=UTF-8"&ndash;%&gt;--%>
<%--&lt;%&ndash;         pageEncoding="UTF-8"%>&ndash;%&gt;--%>
<%--&lt;%&ndash;<!DOCTYPE html>&ndash;%&gt;--%>
<%--&lt;%&ndash;<html>&ndash;%&gt;--%>
<%--&lt;%&ndash;<head>&ndash;%&gt;--%>
<%--&lt;%&ndash;  <meta charset="UTF-8">&ndash;%&gt;--%>
<%--&lt;%&ndash;  <title>Page de connexion</title>&ndash;%&gt;--%>
<%--&lt;%&ndash;  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">&ndash;%&gt;--%>
<%--&lt;%&ndash;  <style>&ndash;%&gt;--%>
<%--&lt;%&ndash;    body {&ndash;%&gt;--%>
<%--&lt;%&ndash;      background-color: #f8f9fa;&ndash;%&gt;--%>
<%--&lt;%&ndash;      font-family: Arial, Helvetica, sans-serif;&ndash;%&gt;--%>
<%--&lt;%&ndash;      font-size: 14px;&ndash;%&gt;--%>
<%--&lt;%&ndash;    }&ndash;%&gt;--%>
<%--&lt;%&ndash;    h1 {&ndash;%&gt;--%>
<%--&lt;%&ndash;      margin-top: 50px;&ndash;%&gt;--%>
<%--&lt;%&ndash;      margin-bottom: 30px;&ndash;%&gt;--%>
<%--&lt;%&ndash;      font-weight: bold;&ndash;%&gt;--%>
<%--&lt;%&ndash;      text-align: center;&ndash;%&gt;--%>
<%--&lt;%&ndash;    }&ndash;%&gt;--%>
<%--&lt;%&ndash;    form {&ndash;%&gt;--%>
<%--&lt;%&ndash;      margin-top: 30px;&ndash;%&gt;--%>
<%--&lt;%&ndash;      max-width: 500px;&ndash;%&gt;--%>
<%--&lt;%&ndash;      margin-left: auto;&ndash;%&gt;--%>
<%--&lt;%&ndash;      margin-right: auto;&ndash;%&gt;--%>
<%--&lt;%&ndash;      padding: 20px;&ndash;%&gt;--%>
<%--&lt;%&ndash;      background-color: #ffffff;&ndash;%&gt;--%>
<%--&lt;%&ndash;      border: 1px solid #dee2e6;&ndash;%&gt;--%>
<%--&lt;%&ndash;      border-radius: 5px;&ndash;%&gt;--%>
<%--&lt;%&ndash;      box-shadow: 0px 0px 5px #ccc;&ndash;%&gt;--%>
<%--&lt;%&ndash;    }&ndash;%&gt;--%>
<%--&lt;%&ndash;    input[type="text"], input[type="password"] {&ndash;%&gt;--%>
<%--&lt;%&ndash;      width: 100%;&ndash;%&gt;--%>
<%--&lt;%&ndash;      padding: 8px;&ndash;%&gt;--%>
<%--&lt;%&ndash;      margin-top: 10px;&ndash;%&gt;--%>
<%--&lt;%&ndash;      margin-bottom: 10px;&ndash;%&gt;--%>
<%--&lt;%&ndash;      border: 1px solid #ccc;&ndash;%&gt;--%>
<%--&lt;%&ndash;      border-radius: 4px;&ndash;%&gt;--%>
<%--&lt;%&ndash;      box-sizing: border-box;&ndash;%&gt;--%>
<%--&lt;%&ndash;    }&ndash;%&gt;--%>
<%--&lt;%&ndash;    input[type="submit"] {&ndash;%&gt;--%>
<%--&lt;%&ndash;      background-color: #007bff;&ndash;%&gt;--%>
<%--&lt;%&ndash;      color: #fff;&ndash;%&gt;--%>
<%--&lt;%&ndash;      border: none;&ndash;%&gt;--%>
<%--&lt;%&ndash;      border-radius: 4px;&ndash;%&gt;--%>
<%--&lt;%&ndash;      cursor: pointer;&ndash;%&gt;--%>
<%--&lt;%&ndash;      font-size: 16px;&ndash;%&gt;--%>
<%--&lt;%&ndash;      padding: 10px 20px;&ndash;%&gt;--%>
<%--&lt;%&ndash;      margin-top: 10px;&ndash;%&gt;--%>
<%--&lt;%&ndash;    }&ndash;%&gt;--%>
<%--&lt;%&ndash;    input[type="submit"]:hover {&ndash;%&gt;--%>
<%--&lt;%&ndash;      background-color: #0069d9;&ndash;%&gt;--%>
<%--&lt;%&ndash;    }&ndash;%&gt;--%>
<%--&lt;%&ndash;    p {&ndash;%&gt;--%>
<%--&lt;%&ndash;      margin-top: 20px;&ndash;%&gt;--%>
<%--&lt;%&ndash;      text-align: center;&ndash;%&gt;--%>
<%--&lt;%&ndash;      color: #dc3545;&ndash;%&gt;--%>
<%--&lt;%&ndash;      font-weight: bold;&ndash;%&gt;--%>
<%--&lt;%&ndash;    }&ndash;%&gt;--%>
<%--&lt;%&ndash;  </style>&ndash;%&gt;--%>
<%--&lt;%&ndash;</head>&ndash;%&gt;--%>
<%--&lt;%&ndash;<body>&ndash;%&gt;--%>
<%--&lt;%&ndash;<h1>Connexion</h1>&ndash;%&gt;--%>
<%--&lt;%&ndash;<form method="post" action="UserServlet">&ndash;%&gt;--%>
<%--&lt;%&ndash;  <div class="form-group">&ndash;%&gt;--%>
<%--&lt;%&ndash;    <label for="login">Nom d'utilisateur :</label>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <input type="text" name="login" id="login" class="form-control" required>&ndash;%&gt;--%>
<%--&lt;%&ndash;  </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;  <div class="form-group">&ndash;%&gt;--%>
<%--&lt;%&ndash;    <label for="password">Mot de passe :</label>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <input type="password" name="password" id="password" class="form-control" required>&ndash;%&gt;--%>
<%--&lt;%&ndash;  </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;  <button type="submit" class="btn btn-primary">Se connecter</button>&ndash;%&gt;--%>
<%--&lt;%&ndash;</form>&ndash;%&gt;--%>
<%--&lt;%&ndash;<p>${errorMessage}</p>&ndash;%&gt;--%>
<%--&lt;%&ndash;</body>&ndash;%&gt;--%>
<%--&lt;%&ndash;</html>&ndash;%&gt;--%>







<%--&lt;%&ndash;***********************************************************************&ndash;%&gt;--%>
<%--&lt;%&ndash;la version qui marche bien et validé &ndash;%&gt;--%>


<%--&lt;%&ndash;<!DOCTYPE html>&ndash;%&gt;--%>
<%--&lt;%&ndash;<html>&ndash;%&gt;--%>
<%--&lt;%&ndash;<head>&ndash;%&gt;--%>
<%--&lt;%&ndash;  <meta charset="UTF-8">&ndash;%&gt;--%>
<%--&lt;%&ndash;  <title>Page de connexion</title>&ndash;%&gt;--%>
<%--&lt;%&ndash;  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">&ndash;%&gt;--%>
<%--&lt;%&ndash;  <style>&ndash;%&gt;--%>
<%--&lt;%&ndash;    body {&ndash;%&gt;--%>
<%--&lt;%&ndash;      background-color: #f8f9fa;&ndash;%&gt;--%>
<%--&lt;%&ndash;      font-family: Arial, Helvetica, sans-serif;&ndash;%&gt;--%>
<%--&lt;%&ndash;      font-size: 14px;&ndash;%&gt;--%>
<%--&lt;%&ndash;    }&ndash;%&gt;--%>
<%--&lt;%&ndash;    h1 {&ndash;%&gt;--%>
<%--&lt;%&ndash;      margin-top: 50px;&ndash;%&gt;--%>
<%--&lt;%&ndash;      margin-bottom: 30px;&ndash;%&gt;--%>
<%--&lt;%&ndash;      font-weight: bold;&ndash;%&gt;--%>
<%--&lt;%&ndash;      text-align: center;&ndash;%&gt;--%>
<%--&lt;%&ndash;    }&ndash;%&gt;--%>
<%--&lt;%&ndash;    form {&ndash;%&gt;--%>
<%--&lt;%&ndash;      margin-top: 30px;&ndash;%&gt;--%>
<%--&lt;%&ndash;      max-width: 500px;&ndash;%&gt;--%>
<%--&lt;%&ndash;      margin-left: auto;&ndash;%&gt;--%>
<%--&lt;%&ndash;      margin-right: auto;&ndash;%&gt;--%>
<%--&lt;%&ndash;      padding: 20px;&ndash;%&gt;--%>
<%--&lt;%&ndash;      background-color: #ffffff;&ndash;%&gt;--%>
<%--&lt;%&ndash;      border: 1px solid #dee2e6;&ndash;%&gt;--%>
<%--&lt;%&ndash;      border-radius: 5px;&ndash;%&gt;--%>
<%--&lt;%&ndash;      box-shadow: 0px 0px 5px #ccc;&ndash;%&gt;--%>
<%--&lt;%&ndash;    }&ndash;%&gt;--%>
<%--&lt;%&ndash;    input[type="text"], input[type="password"] {&ndash;%&gt;--%>
<%--&lt;%&ndash;      width: 100%;&ndash;%&gt;--%>
<%--&lt;%&ndash;      padding: 8px;&ndash;%&gt;--%>
<%--&lt;%&ndash;      margin-top: 10px;&ndash;%&gt;--%>
<%--&lt;%&ndash;      margin-bottom: 10px;&ndash;%&gt;--%>
<%--&lt;%&ndash;      border: 1px solid #ccc;&ndash;%&gt;--%>
<%--&lt;%&ndash;      border-radius: 4px;&ndash;%&gt;--%>
<%--&lt;%&ndash;      box-sizing: border-box;&ndash;%&gt;--%>
<%--&lt;%&ndash;    }&ndash;%&gt;--%>
<%--&lt;%&ndash;    input[type="submit"] {&ndash;%&gt;--%>
<%--&lt;%&ndash;      background-color: #007bff;&ndash;%&gt;--%>
<%--&lt;%&ndash;      color: #fff;&ndash;%&gt;--%>
<%--&lt;%&ndash;      border: none;&ndash;%&gt;--%>
<%--&lt;%&ndash;      border-radius: 4px;&ndash;%&gt;--%>
<%--&lt;%&ndash;      cursor: pointer;&ndash;%&gt;--%>
<%--&lt;%&ndash;      font-size: 16px;&ndash;%&gt;--%>
<%--&lt;%&ndash;      padding: 10px 20px;&ndash;%&gt;--%>
<%--&lt;%&ndash;      margin-top: 10px;&ndash;%&gt;--%>
<%--&lt;%&ndash;    }&ndash;%&gt;--%>
<%--&lt;%&ndash;    input[type="submit"]:hover {&ndash;%&gt;--%>
<%--&lt;%&ndash;      background-color: #0069d9;&ndash;%&gt;--%>
<%--&lt;%&ndash;    }&ndash;%&gt;--%>
<%--&lt;%&ndash;    p {&ndash;%&gt;--%>
<%--&lt;%&ndash;      margin-top: 20px;&ndash;%&gt;--%>
<%--&lt;%&ndash;      text-align: center;&ndash;%&gt;--%>
<%--&lt;%&ndash;      color: #dc3545;&ndash;%&gt;--%>
<%--&lt;%&ndash;      font-weight: bold;&ndash;%&gt;--%>
<%--&lt;%&ndash;    }&ndash;%&gt;--%>
<%--&lt;%&ndash;    .logo-container {&ndash;%&gt;--%>
<%--&lt;%&ndash;      text-align: center;&ndash;%&gt;--%>
<%--&lt;%&ndash;      margin-bottom: 50px;&ndash;%&gt;--%>
<%--&lt;%&ndash;    }&ndash;%&gt;--%>
<%--&lt;%&ndash;    .logo {&ndash;%&gt;--%>
<%--&lt;%&ndash;      max-width: 300px;&ndash;%&gt;--%>
<%--&lt;%&ndash;    }&ndash;%&gt;--%>
<%--&lt;%&ndash;  </style>&ndash;%&gt;--%>
<%--&lt;%&ndash;</head>&ndash;%&gt;--%>
<%--&lt;%&ndash;<body>&ndash;%&gt;--%>
<%--&lt;%&ndash;<div class="container">&ndash;%&gt;--%>
<%--&lt;%&ndash;  <div class="row">&ndash;%&gt;--%>
<%--&lt;%&ndash;    <div class="col-sm-12 logo-container">&ndash;%&gt;--%>
<%--&lt;%&ndash;      <img src="logo.png" alt="Logo" class="logo"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;    </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;  </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;  <div class="row justify-content-center">&ndash;%&gt;--%>
<%--&lt;%&ndash;    <div class="col-sm-6">&ndash;%&gt;--%>
<%--&lt;%&ndash;      <h1 class="text-center">Connexion</h1>&ndash;%&gt;--%>
<%--&lt;%&ndash;      <form method="post" action="UserServlet">&ndash;%&gt;--%>
<%--&lt;%&ndash;        <div class="form-group">&ndash;%&gt;--%>
<%--&lt;%&ndash;          <label for="login">Nom d'utilisateur :</label>&ndash;%&gt;--%>
<%--&lt;%&ndash;          <input type="text" name="login" id="login" class="form-control" required>&ndash;%&gt;--%>
<%--&lt;%&ndash;        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <div class="form-group">&ndash;%&gt;--%>
<%--&lt;%&ndash;          <label for="password">Mot de passe :</label>&ndash;%&gt;--%>
<%--&lt;%&ndash;          <input type="password" name="password" id="password" class="form-control" required>&ndash;%&gt;--%>
<%--&lt;%&ndash;        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <button type="submit" class="btn btn-primary btn-block">Se connecter</button>&ndash;%&gt;--%>
<%--&lt;%&ndash;      </form>&ndash;%&gt;--%>
<%--&lt;%&ndash;      <p class="text-center">${errorMessage}</p>&ndash;%&gt;--%>
<%--&lt;%&ndash;    </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;  </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
<%--&lt;%&ndash;</body>&ndash;%&gt;--%>
<%--&lt;%&ndash;</html>&ndash;%&gt;--%>










<%--&lt;%&ndash;****************************************************************************************&ndash;%&gt;--%>
<%--&lt;%&ndash;partie de connexion avec optim administrator&ndash;%&gt;--%>


<%--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>

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

<%--    input[type="text"],--%>
<%--    input[type="password"] {--%>
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
<%--          <label for="role">Rôle :</label>--%>
<%--          <select name="role" id="role" class="form-control">--%>
<%--            <option value="user">Utilisateur</option>--%>
<%--            <option value="admin">Administrateur</option>--%>
<%--          </select>--%>
<%--        </div>--%>
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






<%--&lt;%&ndash;***************************************************************************************************&ndash;%&gt;--%>

<%--&lt;%&ndash;<!DOCTYPE html>&ndash;%&gt;--%>
<%--&lt;%&ndash;<html>&ndash;%&gt;--%>
<%--&lt;%&ndash;<head>&ndash;%&gt;--%>
<%--&lt;%&ndash;  <meta charset="UTF-8">&ndash;%&gt;--%>
<%--&lt;%&ndash;  <title>Page de connexion</title>&ndash;%&gt;--%>
<%--&lt;%&ndash;  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">&ndash;%&gt;--%>
<%--&lt;%&ndash;  <style>&ndash;%&gt;--%>
<%--&lt;%&ndash;    body {&ndash;%&gt;--%>
<%--&lt;%&ndash;      background-color: #f8f9fa;&ndash;%&gt;--%>
<%--&lt;%&ndash;      font-family: Arial, Helvetica, sans-serif;&ndash;%&gt;--%>
<%--&lt;%&ndash;      font-size: 14px;&ndash;%&gt;--%>
<%--&lt;%&ndash;    }&ndash;%&gt;--%>
<%--&lt;%&ndash;    h1 {&ndash;%&gt;--%>
<%--&lt;%&ndash;      margin-top: 50px;&ndash;%&gt;--%>
<%--&lt;%&ndash;      margin-bottom: 30px;&ndash;%&gt;--%>
<%--&lt;%&ndash;      font-weight: bold;&ndash;%&gt;--%>
<%--&lt;%&ndash;      text-align: center;&ndash;%&gt;--%>
<%--&lt;%&ndash;    }&ndash;%&gt;--%>
<%--&lt;%&ndash;    form {&ndash;%&gt;--%>
<%--&lt;%&ndash;      margin-top: 30px;&ndash;%&gt;--%>
<%--&lt;%&ndash;      max-width: 500px;&ndash;%&gt;--%>
<%--&lt;%&ndash;      margin-left: auto;&ndash;%&gt;--%>
<%--&lt;%&ndash;      margin-right: auto;&ndash;%&gt;--%>
<%--&lt;%&ndash;      padding: 20px;&ndash;%&gt;--%>
<%--&lt;%&ndash;      background-color: #ffffff;&ndash;%&gt;--%>
<%--&lt;%&ndash;      border: 1px solid #dee2e6;&ndash;%&gt;--%>
<%--&lt;%&ndash;      border-radius: 5px;&ndash;%&gt;--%>
<%--&lt;%&ndash;      box-shadow: 0px 0px 5px #ccc;&ndash;%&gt;--%>
<%--&lt;%&ndash;    }&ndash;%&gt;--%>
<%--&lt;%&ndash;    input[type="text"], input[type="password"] {&ndash;%&gt;--%>
<%--&lt;%&ndash;      width: 100%;&ndash;%&gt;--%>
<%--&lt;%&ndash;      padding: 8px;&ndash;%&gt;--%>
<%--&lt;%&ndash;      margin-top: 10px;&ndash;%&gt;--%>
<%--&lt;%&ndash;      margin-bottom: 10px;&ndash;%&gt;--%>
<%--&lt;%&ndash;      border: 1px solid #ccc;&ndash;%&gt;--%>
<%--&lt;%&ndash;      border-radius: 4px;&ndash;%&gt;--%>
<%--&lt;%&ndash;      box-sizing: border-box;&ndash;%&gt;--%>
<%--&lt;%&ndash;    }&ndash;%&gt;--%>
<%--&lt;%&ndash;    input[type="submit"] {&ndash;%&gt;--%>
<%--&lt;%&ndash;      background-color: #007bff;&ndash;%&gt;--%>
<%--&lt;%&ndash;      color: #fff;&ndash;%&gt;--%>
<%--&lt;%&ndash;      border: none;&ndash;%&gt;--%>
<%--&lt;%&ndash;      border-radius: 4px;&ndash;%&gt;--%>
<%--&lt;%&ndash;      cursor: pointer;&ndash;%&gt;--%>
<%--&lt;%&ndash;      font-size: 16px;&ndash;%&gt;--%>
<%--&lt;%&ndash;      padding: 10px 20px;&ndash;%&gt;--%>
<%--&lt;%&ndash;      margin-top: 10px;&ndash;%&gt;--%>
<%--&lt;%&ndash;    }&ndash;%&gt;--%>
<%--&lt;%&ndash;    input[type="submit"]:hover {&ndash;%&gt;--%>
<%--&lt;%&ndash;      background-color: #0069d9;&ndash;%&gt;--%>
<%--&lt;%&ndash;    }&ndash;%&gt;--%>
<%--&lt;%&ndash;    p {&ndash;%&gt;--%>
<%--&lt;%&ndash;      margin-top: 20px;&ndash;%&gt;--%>
<%--&lt;%&ndash;      text-align: center;&ndash;%&gt;--%>
<%--&lt;%&ndash;      color: #dc3545;&ndash;%&gt;--%>
<%--&lt;%&ndash;      font-weight: bold;&ndash;%&gt;--%>
<%--&lt;%&ndash;    }&ndash;%&gt;--%>
<%--&lt;%&ndash;    .logo-container {&ndash;%&gt;--%>
<%--&lt;%&ndash;      text-align: center;&ndash;%&gt;--%>
<%--&lt;%&ndash;      margin-bottom: 50px;&ndash;%&gt;--%>
<%--&lt;%&ndash;    }&ndash;%&gt;--%>
<%--&lt;%&ndash;    .logo {&ndash;%&gt;--%>
<%--&lt;%&ndash;      max-width: 300px;&ndash;%&gt;--%>
<%--&lt;%&ndash;      width: 80%;&ndash;%&gt;--%>
<%--&lt;%&ndash;      height: auto;&ndash;%&gt;--%>
<%--&lt;%&ndash;    }&ndash;%&gt;--%>
<%--&lt;%&ndash;  </style>&ndash;%&gt;--%>
<%--&lt;%&ndash;</head>&ndash;%&gt;--%>
<%--&lt;%&ndash;<body>&ndash;%&gt;--%>
<%--&lt;%&ndash;<div class="container">&ndash;%&gt;--%>
<%--&lt;%&ndash;  <div class="row">&ndash;%&gt;--%>
<%--&lt;%&ndash;    <div class="col-sm-12 logo-container">&ndash;%&gt;--%>
<%--&lt;%&ndash;      <img src="logo.png" alt="Logo" class="logo"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;    </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;  </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;  <div class="row justify-content-center">&ndash;%&gt;--%>
<%--&lt;%&ndash;    <div class="col-sm-6">&ndash;%&gt;--%>
<%--&lt;%&ndash;      <h1 class="text-center">Connexion</h1>&ndash;%&gt;--%>
<%--&lt;%&ndash;      <form method="post" action="UserServlet">&ndash;%&gt;--%>
<%--&lt;%&ndash;        <div class="form-group">&ndash;%&gt;--%>
<%--&lt;%&ndash;          <label for="login">Nom d'utilisateur :</label>&ndash;%&gt;--%>
<%--&lt;%&ndash;          <input type="text" name="login" id="login" class="form-control" required>&ndash;%&gt;--%>
<%--&lt;%&ndash;        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <div class="form-group">&ndash;%&gt;--%>
<%--&lt;%&ndash;          <label for="password">Mot de passe :</label>&ndash;%&gt;--%>
<%--&lt;%&ndash;          <input type="password" name="password" id="password" class="form-control" required>&ndash;%&gt;--%>
<%--&lt;%&ndash;        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <button type="submit" class="btn btn-primary btn-block">Se connecter</button>&ndash;%&gt;--%>
<%--&lt;%&ndash;      </form>&ndash;%&gt;--%>
<%--&lt;%&ndash;      <p class="text-center">${errorMessage}</p>&ndash;%&gt;--%>
<%--&lt;%&ndash;    </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;  </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
<%--&lt;%&ndash;</body>&ndash;%&gt;--%>
<%--&lt;%&ndash;</html>&ndash;%&gt;--%>


