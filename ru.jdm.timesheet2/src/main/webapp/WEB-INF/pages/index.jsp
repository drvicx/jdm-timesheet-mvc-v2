<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="req" value="${pageContext.request}" />
<c:set var="url">${req.requestURL}</c:set>
<c:set var="uri" value="${req.requestURI}" />
<!--<!doctype html>-->
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Табель ОРПО | КУСЗН</title>
    <base href="${fn:substring(url, 0, fn:length(url) - fn:length(uri))}${req.contextPath}/">
    <link href="resources/css/main.css" rel="stylesheet">
    <!--<script src="resources/js/main.js"></script>-->
</head>

<body>
<div class="wrapper">

    <div class="content">

        <div class="contentHeader">
            <h3 class="headerTitle">Табель2</h3>
            <pre class="versionInfo">*version: 20210331 (06_ConnectDB + Styles)</pre>
        </div>

        <div class="contentBody">
            <div class="col1">
                <p class="title">Основное меню</p>
                <ul>
                    <!--
                    <li><a href="http://localhost:8080/">Табель отдела</a></li>
                    <li><a href="http://localhost:8080/">Табель сотрудника</a></li>
                    <li><a href="http://localhost:8080/">Табель сотрудников</a></li>
                    -->
                    <!--корневой путь указывать не нужно т.к он уже автоматически определен в base-->
                    <!--<li><a href="http://localhost:8080/timesheet2/timetable" target="_blank" title="Открывает jsp-Табель в новом окне">Табель отдела v1</a></li>-->
                    <li><a href="timetable" target="_blank" title="Открывает jsp-Табель в новом окне">Табель отдела v1</a></li>
                    <li><a href="timetable" target="myFrame" title="Открывает jsp-Табель во Фрейме">Табель отдела v2</a></li>
                    <li><a href="resources/staticPages/timetable2.html" target="myFrame" title="Открывает html-Табель во Фрейме">Табель отдела v3</a></li>
                </ul>
                <p class="title">Сотрудники</p>
                <ul>
                    <!--Контент открывается в новой вкладке браузера (на другой странице)-->
                    <!--
                    <li><a href="http://localhost:8080/timesheet2/user/list" target="_blank">Общий Список</a></li>
                    <li><a href="http://localhost:8080/timesheet2/user?userId=0" target="_blank">Начальник Отдела</a></li>
                    <li><a href="http://localhost:8080/timesheet2/user?userId=1" target="_blank">Секретарь</a></li>
                    <li><a href="http://localhost:8080/timesheet2/user?userId=2" target="_blank">Безопасник</a></li>
                    <li><a href="http://localhost:8080/timesheet2/user?userId=3" target="_blank">Кадровик</a></li>
                    <li><a href="http://localhost:8080/timesheet2/user?userId=4" target="_blank">Рабочий1</a></li>
                    <li><a href="http://localhost:8080/timesheet2/user?userId=5" target="_blank">Рабочий2</a></li>
                    -->
                    <!--Контент открывается на этой-же странице внутри Фрейма-->
                    <!--корневой путь указывать не нужно т.к он уже автоматически определен в base-->
                    <li><a href="user/list" target="myFrame">Общий Список</a></li>
                    <li><a href="user?userId=0" target="myFrame">Начальник Отдела</a></li>
                    <li><a href="user?userId=1" target="myFrame">Секретарь</a></li>
                    <li><a href="user?userId=2" target="myFrame">Безопасник</a></li>
                    <li><a href="user?userId=3" target="myFrame">Кадровик</a></li>
                    <li><a href="user?userId=4" target="myFrame">Рабочий1</a></li>
                    <li><a href="user?userId=5" target="myFrame">Рабочий2</a></li>
                </ul>
            </div>

            <div class="col2">
                <p class="title">Содержание раздела</p>
                <!--<iframe src="http://localhost:8080/timesheet2/user/list" name="myFrame" frameborder="0" style="border: 2px solid red"></iframe>-->
                <!--<iframe id="iFrame" src="user/list" name="myFrame" frameborder="0"></iframe>-->
                <iframe id="iFrame" src="timetable" name="myFrame" frameborder="0"></iframe>
            </div>

        </div><!--end: contentBody-->
    </div><!--end: content-->

    <!--Футер прижатый к низу экрана-->
    <div class="footer">
        Copyright @JDM 2021
    </div>

</div><!--end: wrapper-->

</body>
</html>
