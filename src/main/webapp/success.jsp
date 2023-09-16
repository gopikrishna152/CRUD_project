<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Successful</title>
    <style>
        body {
            background-color: #f0f0f0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .success-container {
            text-align: center;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
        }

        .tick-animation {
            font-size: 100px;
            color: #007BFF;
            margin: 20px auto;
            animation: colorChange 5s infinite, tick 2s infinite;
        }

        @keyframes tick {
            0% {
                transform: scale(0);
            }
            50% {
                transform: scale(1.2);
            }
            100% {
                transform: scale(1);
            }
        }

        @keyframes colorChange {
            0% {
                color: #007BFF;
            }
            50% {
                color: #FF5733;
            }
            100% {
                color: #007BFF;
            }
        }

        h2 {
            color: #007BFF;
        }

        p {
            color: #333;
        }

        .login-link {
            margin-top: 20px;
            display: block;
            text-decoration: none;
            color: #007BFF;
        }
    </style>
</head>
<body>
    <div class="success-container">
        <div class="tick-animation">
            <!-- You can use an SVG or an image of a tick mark here -->
            &#10004;
        </div>
        <h2>Registration Successful</h2>
        <p>You have successfully registered.</p>
        <a href="login.jsp" class="login-link">Login</a>
    </div>
</body>
</html>
