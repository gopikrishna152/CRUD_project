<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome to Our Website</title>
    <style>
        body {
            background-image: url('your_background_image_url.jpg'); /* Replace with your background image URL */
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        .welcome-message {
            text-align: center;
            color: black;
            font-size: 28px;
            margin-bottom: 20px;
        }

        .action-buttons {
            display: flex;
            justify-content: center;
        }

        .action-button {
            background-color: #007BFF;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            margin: 0 10px;
            text-decoration: none;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .action-button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="welcome-message">
        <h1>Welcome to Our Website</h1>
        <p>Please select an option:</p>
    </div>
    <div class="action-buttons">
        <a href="login.jsp" class="action-button">Login</a>
        <a href="Register.jsp" class="action-button">Register</a>
    </div>
</body>
</html>
    