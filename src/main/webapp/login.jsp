<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    
    <title>Login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            overflow: hidden;
            background: url('your_background_image_url.jpg') no-repeat center center fixed;
            background-size: cover;
        }

        .login-container {
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 10px;
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.2);
            width: 350px;
            padding: 30px;
            text-align: center;
        }

        h2 {
            color: #007BFF;
        }

        .input-group {
            margin: 20px 0;
        }

        .input-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .input-group input[type="text"],
        .input-group input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-bottom: 10px;
        }

        .login-button {
            background-color: #007BFF;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .login-button:hover {
            background-color: #0056b3;
        }

        .signup-link {
            margin-top: 10px;
            display: inline-block;
            text-decoration: none;
            color: #007BFF;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="animate__animated animate__fadeIn animate__infinite animate__slower">
        <div class="login-container">
            <h2>Login</h2>
            <form action="Action.jsp" >
                <div class="input-group">
                    <label for="id">ID:</label>
                    <input type="text" id="id" name="id" required>
                </div>
                <div class="input-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" required>
                </div>
                <button class="login-button" type="submit">Login</button>
            </form>
            <a href="Register.jsp" class="signup-link">Don't have an account? Sign up</a>
        </div>
    </div>
</body>
</html>

    