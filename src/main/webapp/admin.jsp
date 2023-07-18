
<%--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>

<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--  <meta charset="UTF-8">--%>
<%--  <title>Page d'administration</title>--%>
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
<%--    table {--%>
<%--      margin-top: 30px;--%>
<%--      margin-bottom: 30px;--%>
<%--      max-width: 800px;--%>
<%--      margin-left: auto;--%>
<%--      margin-right: auto;--%>
<%--      background-color: #ffffff;--%>
<%--      border: 1px solid #dee2e6;--%>
<%--      border-radius: 5px;--%>
<%--      box-shadow: 0px 0px 5px #ccc;--%>
<%--    }--%>
<%--    th {--%>
<%--      background-color: #007bff;--%>
<%--      color: #fff;--%>
<%--      font-weight: bold;--%>
<%--      text-align: center;--%>
<%--      padding: 10px;--%>
<%--      border-right: 1px solid #dee2e6;--%>
<%--    }--%>
<%--    td {--%>
<%--      text-align: center;--%>
<%--      padding: 10px;--%>
<%--      border-right: 1px solid #dee2e6;--%>
<%--    }--%>
<%--    td:last-child {--%>
<%--      border-right: none;--%>
<%--    }--%>
<%--    .logout-btn {--%>
<%--      margin-top: 30px;--%>
<%--      margin-left: auto;--%>
<%--      margin-right: auto;--%>
<%--      display: block;--%>
<%--    }--%>
<%--  </style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<div class="container">--%>
<%--  <div class="row">--%>
<%--    <div class="col-sm-12">--%>
<%--      <h1 class="text-center">Page d'administration</h1>--%>
<%--      <table>--%>
<%--        <thead>--%>
<%--        <tr>--%>
<%--          <th>ID</th>--%>
<%--          <th>Nom d'utilisateur</th>--%>
<%--          <th>Mot de passe</th>--%>
<%--          <th>Profil</th>--%>
<%--        </tr>--%>
<%--        </thead>--%>
<%--        <tbody>--%>
<%--        <c:forEach items="${users}" var="user">--%>
<%--          <tr>--%>
<%--            <td>${connexion.id}</td>--%>
<%--            <td>${connexion.login}</td>--%>
<%--            <td>${connexion.password}</td>--%>
<%--            <td>${connexion.profil}</td>--%>
<%--          </tr>--%>
<%--        </c:forEach>--%>
<%--        </tbody>--%>
<%--      </table>--%>
<%--      <a href="UserServlet?action=logout" class="btn btn-danger logout-btn">Déconnexion</a>--%>
<%--    </div>--%>
<%--  </div>--%>
<%--</div>--%>
<%--</body>--%>
<%--</html>--%>





<%--<%@ page contentType="text/html; charset=UTF-8" language="java" %>--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>


<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--  <meta charset="UTF-8">--%>
<%--  <title>Page d'administration</title>--%>
<%--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">--%>
<%--  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css">--%>
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

<%--    .user-table {--%>
<%--      width: 100%;--%>
<%--      border-collapse: collapse;--%>
<%--      margin-top: 20px;--%>
<%--    }--%>

<%--    .user-table th,--%>
<%--    .user-table td {--%>
<%--      padding: 10px;--%>
<%--      text-align: left;--%>
<%--      border-bottom: 1px solid #dee2e6;--%>
<%--    }--%>

<%--    .user-table th {--%>
<%--      background-color: #007bff;--%>
<%--      color: #fff;--%>
<%--    }--%>

<%--    .user-table td.actions {--%>
<%--      text-align: center;--%>
<%--    }--%>

<%--    .btn-edit,--%>
<%--    .btn-delete,--%>
<%--    .btn-add {--%>
<%--      border: none;--%>
<%--      padding: 5px 10px;--%>
<%--      border-radius: 4px;--%>
<%--      cursor: pointer;--%>
<%--      font-size: 14px;--%>
<%--      margin-right: 5px;--%>
<%--    }--%>

<%--    .btn-edit {--%>
<%--      background-color: #28a745;--%>
<%--      color: #fff;--%>
<%--    }--%>

<%--    .btn-delete {--%>
<%--      background-color: #dc3545;--%>
<%--      color: #fff;--%>
<%--    }--%>

<%--    .btn-add {--%>
<%--      background-color: #007bff;--%>
<%--      color: #fff;--%>
<%--    }--%>

<%--    .btn-edit:hover,--%>
<%--    .btn-delete:hover,--%>
<%--    .btn-add:hover {--%>
<%--      opacity: 0.8;--%>
<%--    }--%>

<%--    .fa {--%>
<%--      margin-right: 5px;--%>
<%--    }--%>
<%--  </style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<div class="header">--%>
<%--  <div class="container">--%>
<%--    <div class="row justify-content-between align-items-center">--%>
<%--      <div class="col-auto">--%>
<%--        <img src="logo.png" alt="Logo" class="logo"/>--%>
<%--      </div>--%>
<%--      <div class="col-auto">--%>
<%--&lt;%&ndash;        <p class="mb-0"><a href="UserServlet?action=logout" class="text-white"><i class="fas fa-sign-out-alt"></i>Déconnexion</a></p>&ndash;%&gt;--%>

<%--        <p>  <a href="LogoutServlet" class="btn btn-danger"><i class="fas fa-sign-out-alt"></i> Déconnexion</a></p>--%>
<%--      </div>--%>
<%--    </div>--%>
<%--  </div>--%>
<%--</div>--%>
<%--<div class="container content">--%>
<%--  <div class="row">--%>
<%--    <div class="col-sm-12">--%>
<%--      <h1>Liste des utilisateurs</h1>--%>
<%--      <table class="user-table">--%>
<%--        <thead>--%>
<%--        <tr>--%>
<%--          <th>login</th>--%>
<%--          <th>password</th>--%>
<%--          <th>Profil</th>--%>
<%--          <th class="actions">Actions</th>--%>
<%--        </tr>--%>
<%--        </thead>--%>
<%--        <tbody>--%>

<%--        <c:forEach items="${users}" var="user">--%>
<%--          <tr>--%>
<%--            <td>${user.login}</td>--%>
<%--            <td>${user.password}</td>--%>
<%--            <td>${user.profil == 1 ? 'Administrateur' : 'Utilisateur'}</td>--%>
<%--            <td class="actions">--%>

<%--&lt;%&ndash;              <form method="post" action="UserServlet">&ndash;%&gt;--%>
<%--&lt;%&ndash;                <input type="hidden" name="id" value="${user.id}">&ndash;%&gt;--%>
<%--&lt;%&ndash;                <input type="hidden" name="action" value="edit">&ndash;%&gt;--%>
<%--&lt;%&ndash;                <button type="submit" class="btn btn-edit"><i class="fas fa-edit"></i>Modifier</button>&ndash;%&gt;--%>
<%--&lt;%&ndash;              </form>&ndash;%&gt;--%>

<%--              <form method="post" action="UserServlet">--%>
<%--                <input type="hidden" name="id" value="${user.id}">--%>
<%--                <input type="hidden" name="action" value="delete">--%>
<%--                <button type="submit" class="btn btn-delete"><i class="fas fa-trash"></i>Supprimer</button>--%>
<%--              </form>--%>


<%--  <form method="post" action="UserServlet">--%>
<%--                <input type="hidden" name="id" value="${user.id}">--%>
<%--                <input type="hidden" name="action" value="delete">--%>
<%--                <button type="submit" class="btn btn-delete"><i class="fas fa-trash"></i>Supprimer</button>--%>
<%--              </form>--%>
<%--            </td>--%>
<%--          </tr>--%>
<%--        </c:forEach>--%>
<%--        </tbody>--%>
<%--      </table>--%>
<%--      <div class="row">--%>
<%--        <div class="col-md-12 text-center">--%>
<%--          <form method="post" action="UserServlet">--%>
<%--            <input type="hidden" name="action" value="add">--%>
<%--            <button type="submit" class="btn btn-add"><i class="fas fa-plus"></i>Ajouter</button>--%>
<%--          </form>--%>
<%--        </div>--%>
<%--      </div>--%>
<%--    </div>--%>
<%--  </div>--%>
<%--</div>--%>
<%--</body>--%>
<%--</html>--%>




<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Page d'administration</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css">
  <style>
    body {
      background-color: #f8f9fa;
      font-family: Arial, Helvetica, sans-serif;
      font-size: 14px;
    }

    .header {
      background-color: #007bff;
      color: #fff;
      padding: 10px;
    }

    .logo {
      max-width: 200px;
    }

    .content {
      margin-top: 30px;
    }

    h1 {
      font-weight: bold;
      text-align: center;
      margin-top: 0;
    }

    .user-table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 20px;
    }

    .user-table th,
    .user-table td {
      padding: 10px;
      text-align: left;
      border-bottom: 1px solid #dee2e6;
    }

    .user-table th {
      background-color: #007bff;
      color: #fff;
    }

    .user-table td.actions {
      text-align: center;
    }

    .btn-edit,
    .btn-delete,
    .btn-add {
      border: none;
      padding: 5px 10px;
      border-radius: 4px;
      cursor: pointer;
      font-size: 14px;
      margin-right: 5px;
    }

    .btn-edit {
      background-color: #28a745;
      color: #fff;
    }

    .btn-delete {
      background-color: #dc3545;
      color: #fff;
    }

    .btn-add {
      background-color: #007bff;
      color: #fff;
    }

    .btn-edit:hover,
    .btn-delete:hover,
    .btn-add:hover {
      opacity: 0.8;
    }

    .fa {
      margin-right: 5px;
    }
  </style>
</head>
<body>
<div class="header">
  <div class="container">
    <div class="row justify-content-between align-items-center">
      <div class="col-auto">
        <img src="logo.png" alt="Logo" class="logo"/>
      </div>
      <div class="col-auto">

        <p>  <a href="LogoutServlet" class="btn btn-danger"><i class="fas fa-sign-out-alt"></i> Déconnexion</a></p>
      </div>
    </div>
  </div>
</div>
<div class="container content">
  <div class="row">
    <div class="col-sm-12">
      <h1>Liste des utilisateurs</h1>
      <table class="user-table">
        <thead>
        <tr>
          <th>login</th>
          <th>password</th>
          <th>Profil</th>
          <th class="actions">Actions</th>
        </tr>
        </thead>
        <tbody>

        <c:forEach items="${users}" var="user">
          <tr>
            <td>${user.login}</td>
            <td>${user.password}</td>
            <td>${user.profil == 1 ? 'Administrateur' : 'Utilisateur'}</td>
            <td class="actions">
              <form method="post" action="UserServlet">
                <input type="hidden" name="id" value="${user.id}">
                <input type="hidden" name="action" value="edit">
                <button type="submit" class="btn btn-edit"><i class="fas fa-edit"></i>Modifier</button>
              </form>

              <form method="post" action="UserServlet" onsubmit="return confirm('Êtes-vous sûr de vouloir supprimer cet utilisateur ?');">
                <input type="hidden" name="id" value="${user.id}">
                <input type="hidden" name="action" value="delete">
                <button type="submit" class="btn btn-delete"><i class="fas fa-trash"></i>Supprimer</button>
              </form>
            </td>
          </tr>
        </c:forEach>
        </tbody>
      </table>
      <div class="row">
        <div class="col-md-12 text-center">
          <form method="post" action="UserServlet">
            <input type="hidden" name="action" value="add">
            <button type="submit" class="btn btn-add"><i class="fas fa-plus"></i>Ajouter</button>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>


