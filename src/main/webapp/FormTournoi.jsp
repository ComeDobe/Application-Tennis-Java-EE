

<%--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title><c:if test="${tournoi != null}">Editer</c:if><c:if test="${tournoi == null}">Ajouter</c:if> un tournoi</title>--%>
<%--    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"--%>
<%--          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"--%>
<%--          crossorigin="anonymous">--%>
<%--</head>--%>
<%--<body>--%>
<%--<div class="container">--%>
<%--    <h1 class="text-center mb-5"><c:if test="${tournoi != null}">Editer</c:if><c:if test="${tournoi == null}">Ajouter</c:if> un tournoi</h1>--%>

<%--    <form method="post" action="tournois">--%>
<%--        <input type="hidden" name="action" value="<c:if test='${tournoi != null}'>editer</c:if><c:if test='${tournoi == null}'>ajouter</c:if>">--%>
<%--        <input type="hidden" name="id" value="${tournoi.id}">--%>

<%--        <div class="form-group">--%>
<%--            <label for="nom">Nom :</label>--%>
<%--            <input type="text" class="form-control" id="nom" name="nom" value="${tournoi.nom}">--%>
<%--        </div>--%>

<%--        <div class="form-group">--%>
<%--            <label for="code">Code :</label>--%>
<%--            <input type="text" class="form-control" id="code" name="code" value="${tournoi.code}">--%>
<%--        </div>--%>

<%--        <button type="submit" class="btn btn-primary"><c:if test="${tournoi != null}">Editer</c:if><c:if test="${tournoi == null}">Ajouter</c:if></button>--%>
<%--        <a href="tournois" class="btn btn-secondary">Annuler</a>--%>
<%--    </form>--%>
<%--</div>--%>

<%--<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"--%>
<%--        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"--%>
<%--        crossorigin="anonymous"></script>--%>
<%--<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"--%>
<%--        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W--%>
<%--</body>--%>
<%--</html>--%>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>${tournoi == null ? 'Ajouter' : 'Editer'} un tournoi</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
          crossorigin="anonymous">
</head>
<body>
<div class="container">
    <h1 class="text-center mb-5">${tournoi == null ? 'Ajouter' : 'Editer'} un tournoi</h1>

    <form method="post" action="tournois">
        <input type="hidden" name="action" value="${tournoi == null ? 'ajouter' : 'editer'}">
        <input type="hidden" name="id" value="${tournoi.id}">

        <div class="form-group">
            <label for="nom">Nom :</label>
            <input type="text" class="form-control" id="nom" name="nom" value="${tournoi.nom}">
        </div>

        <div class="form-group">
            <label for="code">Code :</label>
            <input type="text" class="form-control" id="code" name="code" value="${tournoi.code}">
        </div>

        <button type="submit" class="btn btn-primary">${tournoi == null ? 'Ajouter' : 'Editer'}</button>
        <a href="tournois" class="btn btn-secondary">Annuler</a>
    </form>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>
</html>
