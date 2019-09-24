<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Document</title>

    <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>"/>
</head>
<body>

<%@ include file="./fragments/header.jsp" %>

<form:form method="post" modelAttribute="userForm">
    <fieldset>
        <h2>Podaj liczbę 60l worków, w które spakowałeś/aś rzeczy:</h2></br>
        <label for="quantityId">Liczba 60l worków:</label>
        <form:input type="number" path="quantity" id="quantityId"/>
        <form:errors path="quantity" element="div"/>
        <a href="/donation/1" role="button">Wstecz</a>
        <input type="submit" value="Dalej"><br/><br/>
    </fieldset>
</form:form>

<%@ include file="./fragments/footer.jsp" %>

<script src="<c:url value="/resources/js/app.js"/>"></script>
</body>
</html>
