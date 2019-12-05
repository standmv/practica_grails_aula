<%--
  Created by IntelliJ IDEA.
  User: StanDeMoya
  Date: 2019-11-21
  Time: 16:59
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<head>
    <title>Survey</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="/webjars/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<script src="/webjars/jquery/3.0.0/jquery.min.js"></script>
<script src="/webjars/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<div class="container" align="center">
    <g:form action="saveSurvey" controller="survey">
        <div class="row">
            <div class="col">
                <h1 class="h1 border-primary">Encuesta Barcamp 2019</h1>
            </div>
        </div>
    </br>
        <div class="form-group" align="center">
            <div class="row">
                <div class="col">
                    <label for="answer_one">¿Las Charlas donde usted participo cumplieron sus expectativas?</label>
                </div>
                <div class="col">
                    <select name="answer_one" id="answer_one" class="form-control border-primary">
                            <option class="dropdown-item" value="">Seleccione...</option>
                            <option class="dropdown-item" value="1">1</option>
                            <option class="dropdown-item" value="2">2</option>
                            <option class="dropdown-item" value="3">3</option>
                            <option class="dropdown-item" value="4">4</option>
                            <option class="dropdown-item" value="5">5</option>
                    </select>
                </div>
            </div>
        </div>

        </br>
        <div class="form-group" align="center">
            <div class="row">
                <div class="col">
                    <label for="answer_two">¿Los Expositores mostraron tener dominio del tema?</label>
                </div>
                <div class="col">
                    <select name="answer_two" id="answer_two" class="form-control border-primary">
                        <option value="">Seleccione...</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                    </select>
                </div>
            </div>
        </div>

        </br>
        <div class="form-group" align="center">
            <div class="row">
                <div class="col">
                    <label for="answer_three">¿Las instalaciones del evento fueron confortables para usted?</label>
                </div>
                <div class="col">
                    <select name="answer_three" id="answer_three" class="form-control border-primary">
                        <option value="">Seleccione...</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                    </select>
                </div>
            </div>
        </div>

        </br>

        <div class="form-group" align="center">
            <div class="row">
                <div class="col">
                    <label for="answer_four">¿Tiene algun comentario para los organizadores?</label>
                </div>
                <div class="col">
                    <input type="text" name="answer_four" id="answer_four" class="form-control border-primary">
                </div>
            </div>
        </div>

        </br>
        <div class="row">
            <div class="col-md-4">
                <g:link action="surveyList" class="btn btn-warning">Resultados</g:link>
            </div>
            <div class="col-md-4">
            </div>
            <div class="col-md-4">
                <g:submitButton name="submit" value="Guardar" class="btn btn-info"></g:submitButton>
            </div>
        </div>
    </g:form>
</div>
</body>
</html>