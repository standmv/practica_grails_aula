<%--
  Created by IntelliJ IDEA.
  User: StanDeMoya
  Date: 12/5/19
  Time: 11:48 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<head xmlns="http://www.w3.org/1999/html">
    <title>Resultados</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="/webjars/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">

    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        google.charts.load('current', {'packages':['corechart']});
        google.charts.setOnLoadCallback(drawChart);

        function drawChart() {

            var dataAnswerOne = google.visualization.arrayToDataTable([
                ['Task', 'Count'],
                ['1',  ${questionOneAnswers[1]}],
                ['2',  ${questionOneAnswers[2]}],
                ['3',  ${questionOneAnswers[3]}],
                ['4',  ${questionOneAnswers[4]}],
                ['5',  ${questionOneAnswers[5]}]
            ]);

            var dataAnswerTwo = google.visualization.arrayToDataTable([
                ['Task', 'Count'],
                ['1',  ${questionTwoAnswers[1]}],
                ['2',  ${questionTwoAnswers[2]}],
                ['3',  ${questionTwoAnswers[3]}],
                ['4',  ${questionTwoAnswers[4]}],
                ['5',  ${questionTwoAnswers[5]}]
            ]);

            var dataAnswerThree = google.visualization.arrayToDataTable([
                ['Task', 'Count'],
                ['1',  ${questionThreeAnswers[1]}],
                ['2',  ${questionThreeAnswers[2]}],
                ['3',  ${questionThreeAnswers[3]}],
                ['4',  ${questionThreeAnswers[4]}],
                ['5',  ${questionThreeAnswers[5]}]
            ]);

            var optionsOne = {
                title: 'Pregunta 1: ¿Las Charlas donde usted participo cumplieron sus expectativas?'
            };

            var optionsTwo = {
                title: 'Pregunta 2: ¿Los Expositores mostraron tener dominio del tema?'
            };

            var optionsThree = {
                title: 'Pregunta 2: ¿Los Expositores mostraron tener dominio del tema?'
            };

            var chart = new google.visualization.PieChart(document.getElementById('piechartOne'));
            var chartTwo = new google.visualization.PieChart(document.getElementById('piechartTwo'));
            var chartThree = new google.visualization.PieChart(document.getElementById('piechartThree'));

            chart.draw(dataAnswerOne, optionsOne);
            chartTwo.draw(dataAnswerTwo, optionsTwo);
            chartThree.draw(dataAnswerThree, optionsThree);
        }
    </script>
</head>

<body>

    <script src="/webjars/jquery/3.0.0/jquery.min.js"></script>
    <script src="/webjars/bootstrap/4.4.1/js/bootstrap.min.js"></script>

    <div class="container">
        <div class="row">
            <div class="col-md-12" align="center">
                <h1>Resultados de la Encuesta Barcamp 2019</h1>
            </div>
        </div>

        </br>

        <div class="row">
            <div class="col">
                <div id="piechartOne"></div>
            </div>
            <div class="col">
                <div id="piechartTwo"></div>
            </div>
            <div class="col">
                <div id="piechartThree" ></div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-11" align="right">
                <g:link action="index" class="btn btn-info">Volver a Encuesta</g:link>
            </div>
        </div>
    </div>
</body>
</html>