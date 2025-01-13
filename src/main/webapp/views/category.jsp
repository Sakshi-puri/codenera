<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Category Data</title>

<link href="css/style.css" rel="stylesheet" />

<style>
    body {
        margin: 0;
        font-family: Arial, sans-serif;
        background-color: #f9f9f9;
        padding: 20px;
    }

    h2 {
        font-size: 24px;
        margin-bottom: 20px;
    }

</style>
</head>
<body>
    <h2> News For Category: ${param.category}</h2>

    <c:choose>
        <c:when test="${not empty message}">
            <div class="message">${message}</div>
        </c:when>
        <c:otherwise>
            <c:forEach var="item" items="${data}">
                <div class="card">
                    <p><strong>Category:</strong> ${item.category}</p>
                    <p><strong>Writer Name:</strong> ${item.writterName}</p>
                    <p><strong>Content:</strong> ${item.content}</p>
                   
                </div>
            </c:forEach>
        </c:otherwise>
    </c:choose>
</body>
</html>
