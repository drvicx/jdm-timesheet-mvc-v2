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
    <title>Сотрудники | Табель</title>
    <base href="${fn:substring(url, 0, fn:length(url) - fn:length(uri))}${req.contextPath}/">
    <link href="resources/css/main.css" rel="stylesheet">
    <link href="resources/css/list.css" rel="stylesheet">
</head>

<body>
<div class="form-style-2">
    <div class="form-style-2-heading">
        <!--<h2 class="userListTitle">Список сотрудников</h2>-->
        Список сотрудников
    </div>
    <ul>
        <c:if test="${not empty users}">
            <c:forEach items="${users}" var="user">
                <li>${user.name} ${user.surname}</li>
            </c:forEach>
        </c:if>
    </ul>
</div>
</body>
</html>
