<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="req" value="${pageContext.request}" />
<c:set var="url">${req.requestURL}</c:set>
<c:set var="uri" value="${req.requestURI}" />
<!doctype html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Сотрудник | Табель</title>
    <base href="${fn:substring(url, 0, fn:length(url) - fn:length(uri))}${req.contextPath}/">
    <link href="resources/css/main.css" rel="stylesheet">
    <!--<script src="resources/js/main.js"></script>-->
</head>

<body>

<div class="form-style-2">
    <div class="form-style-2-heading">Информация о сотруднике</div>
    <form action="" method="post">
        <%--@declare id="field1"--%><%--@declare id="field2"--%><%--@declare id="field3"--%>
        <label for="field1"><span>ФИО</span><input type="text" class="input-field" name="field1" value="${user.name} ${user.surname}" /></label>
        <label for="field2"><span>Логин</span><input type="text" class="input-field" name="field2" value="${user.login}" /></label>

        <label for="field3">
            <span>Фото</span>
            <input type="image" name="image" class="personPhoto" src="resources/images/${user.login}.png" alt="${user.name} ${user.surname}">
        </label>

        <label>
            <span></span>
            <button class="button">Submit</button>
        </label>
    </form>
</div>

</body>
</html>
