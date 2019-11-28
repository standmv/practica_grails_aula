<%--
  Created by IntelliJ IDEA.
  User: StanDeMoya
  Date: 2019-11-21
  Time: 16:59
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Survey</title>
</head>
<body>
<g:form action="saveSurvey" controller="survey">
    <label for="answer_one">¿Las Charlas donde usted participo cumplieron sus expectativas?</label>
    <select name="answer_one" id="answer_one">
        <option value="">Seleccione...</option>
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
    </select>

    </br>
    <label for="answer_two">¿Los Expositores mostraron tener dominio del tema?</label>
    <select name="answer_two" id="answer_two">
        <option value="">Seleccione...</option>
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
    </select>

    </br>
    <label for="answer_three">¿Las instalaciones del evento fueron confortables para usted?</label>
    <select name="answer_three" id="answer_three">
        <option value="">Seleccione...</option>
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
    </select>
    </br>
    <label for="answer_four">¿Tiene algun comentario para los organizadores?</label>
    <input type="text" name="answer_four" id="answer_four">
    </br>
    <g:submitButton name="submit" value="Guardar"></g:submitButton>
</g:form>
</body>
</html>