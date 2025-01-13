<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Content</title>
<link href="css/style.css" rel="stylesheet" />

</head>
<body>
    <div class="container">
        <h1>Add Content</h1>
        <form action="/add" method="post">
            <label for="writterName">Enter title:</label>
            <textarea id="writterName" name="writterName" rows="2" placeholder="Write your title here" required></textarea>

            <label for="category">Enter category of content:</label>
            <input type="text" id="category" name="category" placeholder="Category" required>

            <label for="content">Write your Content:</label>
            <textarea id="content" name="content" rows="10" placeholder="Write your content here" required></textarea>

            <input class="submit-button" type="submit" value="Add">
        </form>
    </div>
</body>
</html>
