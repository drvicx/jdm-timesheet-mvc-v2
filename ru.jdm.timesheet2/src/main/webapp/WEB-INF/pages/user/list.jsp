<%--создано: 15.03.2021 23:20--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Сотрудники | Табель2</title>
</head>
<body>
<h2>Сотрудники</h2>
<ul>
    <c:if test="${not empty users}">
        <c:forEach items="${users}" var="user">
            <li>${user.surname} ${user.name}</li>
        </c:forEach>
    </c:if>
</ul>
</body>
</html>
