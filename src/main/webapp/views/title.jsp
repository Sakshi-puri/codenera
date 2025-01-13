<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>title wise</title>
    <link href="css/style.css" rel="stylesheet" />
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        .container {
            max-width: 800px;
            margin: 0 auto;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        h1 {
            color: #333;
        }
       

    </style>
</head>
<body>
    <div class="container">
        <h1>Article</h1>
        
        <div class="data-item">
            <label for="writerName">Writer Name:</label>
            <p>${data.writterName}</p>
        </div>
        
        <div class="data-item">
            <label for="writerName">category:</label>
            <p>${data.category}</p>
        </div>
        
        <div class="data-item">
            <label for="writerName">content:</label>
            <p>${data.content}</p>
        </div>
        
     
    </div>
</body>
</html>
