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

<%@ include file="../fragments/header.jsp" %>

<section class="steps">
    <h2>Wystarczą 4 proste kroki</h2>

    <div class="steps--container">
        <div class="steps--item">
            <span class="icon icon--hands"></span>
            <h3>Wybierz rzeczy</h3>
            <p>ubrania, zabawki, sprzęt i inne</p>
        </div>
        <div class="steps--item">
            <span class="icon icon--arrow"></span>
            <h3>Spakuj je</h3>
            <p>skorzystaj z worków na śmieci</p>
        </div>
        <div class="steps--item">
            <span class="icon icon--glasses"></span>
            <h3>Zdecyduj komu chcesz pomóc</h3>
            <p>wybierz zaufane miejsce</p>
        </div>
        <div class="steps--item">
            <span class="icon icon--courier"></span>
            <h3>Zamów kuriera</h3>
            <p>kurier przyjedzie w dogodnym terminie</p>
        </div>
    </div>

    <a href="#" class="btn btn--large">Załóż konto</a>
</section>

<form:form method="post" modelAttribute="donation">
    <fieldset>
        <div>
            <h2>Podaj adres oraz termin odbioru rzeczy przez kuriera:</h2></br>
            <label>Adres odbioru:</label><br/>
            <label>Ulica:</label>
            <form:input path="street" /><br/>
            <label>Miasto:</label>
            <form:input path="city"/><br/>
            <label>Kod pocztowy:</label>
            <form:input path="zipCode" /><br/>
        </div>
        <div>
            <h2>Podaj adres oraz termin odbioru rzeczy przez kuriera:</h2></br>
            <label>Termin odbioru:</label>
            <label>Data:</label>
            <form:input type="date" path="pickUpDate"/><br/>
            <label>Godzina:</label>
            <form:input type="time" path="pickUpTime"/><br/>
            <label>Uwagi dla kuriera:</label>
            <form:textarea path="pickUpComment"/><br/>
        </div>
        <a href="/donation/3" role="button">Wstecz</a>
        <input type="submit" value="Dalej"><br/><br/>
    </fieldset>
</form:form>


<%@ include file="../fragments/footer.jsp" %>

<script src="<c:url value="/resources/js/app.js"/>"></script>
</body>
</html>