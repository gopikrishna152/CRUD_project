<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Account Deleted</title>
    <style>
        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        .message {
            text-align: center;
            font-size: 24px;
            opacity: 0;
            animation: fadeIn 2s forwards;
            margin-bottom: 20px;
        }

        .button-container {
            text-align: center;
        }

        .button-container button {
            font-size: 16px;
            padding: 10px 20px;
            margin: 0 10px;
        }
    </style>
</head>
<body>

<div class="message">
    Your account deleted successfully
</div>

<div class="button-container">
    <button onclick="window.location.href='login.jsp'">Login</button>
    <button onclick="window.location.href='Register.jsp'">Register</button>
</div>

</body>
</html>
