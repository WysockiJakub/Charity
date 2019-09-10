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

<p>Podsumowanie Twojej darowizny</p><br/>
<p>Oddajesz:</p><br/>
<p>${donation.quantity} worki ${donation.categories.get(0).name}</p><br/>
<p>Dla fundacji "${donation.institution.name}"</p><br/>
<p>Dla fundacji "${donation.institution.name}"</p><br/><br/>
<div>
    <h2>Adres odbioru:</h2><br/>
    <p>${donation.street}</p>
    <p>${donation.city}</p>
    <p>${donation.zipCode}</p>
</div>
<div>
    <h2>Termin odbioru:</h2><br/>
    <p>${donation.pickUpDate}</p>
    <p>${donation.pickUpTime}</p>
    <p>${donation.pickUpComment}</p>
</div>
<a href="/donation/4" role="button">Wstecz</a>
<form:form method="post" modelAttribute="donation">
    <input type="submit" value="Potwierdzam">
</form:form>


<%@ include file="../fragments/footer.jsp" %>

<script src="<c:url value="/resources/js/app.js"/>"></script>
</body>
</html>