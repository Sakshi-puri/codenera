<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display</title>
<link href="css/style.css" rel="stylesheet" />
<style>
    body {
        margin: 0;
        font-family: Arial, sans-serif;
    }


.container {
    display: flex;
    flex-direction: column;
  /*  align-items: center;  Center horizontally */
   /* justify-content: center;  Center vertically */
  /*  text-align: center;  Center text within the container */
    height: 300px; 
    padding: 20px;
    border: 1px solid #ccc;
    background-color: #fff; 
    border-radius: 10px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
}

    .container h1,
.container h2 {
    margin: 10px 0;
}

.container h3 {
    margin: 10px 0;
    flex: 1;
    
     text-align: center;
}

 button {
        padding: 10px 20px;
        font-size: 16px;
        color: black;
       width:200px;
        background-color: #f0f0f0;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        margin-bottom: 10px;
        text-align: center;
    }

    button:hover {
        background-color:#80cbc4;
    }

</style>
</head>
<body>
    <!-- Navbar -->
    <div class="navbar">
        <div>
            <a href="#">Home</a>
            <a href="#">About</a>
        </div>
        <div>
            <input type="text" placeholder="Search...">
        </div>
    </div>

    <!-- Left  -->
    <div class="categories">
        <h1>Categories/Menu</h1>
        
            <div>
                 <a href="${pageContext.request.contextPath}/data-by-category?category=Politics" class="btn">
                <h4>Politics</h4>
            </a>
            </div>
            <div>
                 <a href="${pageContext.request.contextPath}/data-by-category?category=poem" class="btn">
                <h4>poem</h4>
            </a>
            </div>
            <div>
                 <a href="${pageContext.request.contextPath}/data-by-category?category=bollywood" class="btn">
                <h4>bollywood</h4>
            </a>
            </div>
       
        
    </div>

    <!-- Main Content -->
    <div class="main-content">
    <c:forEach var="data" items="${data}">
        <div class="container">
            <h1>Title: ${data.writterName}</h1>
            <h2>Category: ${data.category}</h2>
            <h3>${data.content}</h3>
        </div>
    </c:forEach>
</div>
    

    <!-- Right  -->
    <div class="sidebar">
       <h2 style="font-size: 20px; color: #333; text-align: center; margin-bottom: 20px; font-family: Arial, sans-serif; font-weight: bold; border-bottom: 2px solid #ccc; padding-bottom: 10px;">
        All News Headings
    </h2>
        <c:forEach var="data" items="${data}">
            <div>
            
             <a href="${pageContext.request.contextPath}/data-fetch-by-id?id=${data.id}" style="display: block; text-decoration: none; color: #333;">
                <div style="padding: 10px; border: 1px solid #ccc; margin-bottom: 10px; border-radius: 4px; background-color: #f9f9f9;">
                    <h3 style="margin: 0;">${data.writterName}</h3>
                    <p style="margin: 0;">ID: ${data.id}</p>
                </div>
            </a>
             
                
            </div>
        </c:forEach>
    </div>
</body>
</html>

