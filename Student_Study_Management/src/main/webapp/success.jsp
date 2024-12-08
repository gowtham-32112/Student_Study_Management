<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Application Successful</title>
    <link rel="stylesheet" type="text/css" href="css/success.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7fa;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .success-container {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 400px;
            text-align: center;
        }
        .success-container h1 {
            color: #4CAF50;
            font-size: 2em;
        }
        .success-container p {
            font-size: 1.2em;
            margin: 20px 0;
            color: #555;
        }
        .go-back-btn {
            padding: 12px 20px;
            background-color: #4CAF50;
            color: white;
            font-size: 1em;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
        }
        .go-back-btn:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="success-container">
        <h1>Applied Successfully!</h1>
        <p>Congratulations! You've successfully applied for the job. We wish you the best of luck!</p>
        <a href="career.jsp" class="go-back-btn">Go Back</a>
    </div>
</body>
</html>
