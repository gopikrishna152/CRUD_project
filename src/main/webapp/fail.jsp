
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Failed</title>
    <style>
        body {
            background-color: #f7f7f7;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .message-container {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.2);
            width: 350px;
            padding: 30px;
            text-align: center;
        }

        h2 {
            color: #FF5733; /* Red color for error message */
        }

        p {
            color: #333;
        }

        .home-link {
            margin-top: 10px;
            display: inline-block;
            text-decoration: none;
            background-color: #007BFF;
            color: #fff;
            padding: 10px 20px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .home-link:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="message-container">
        <h2>Registration Failed</h2>
        <p>Sorry, your registration could not be completed.</p>
        <a href="index.jsp" class="home-link">Return to Home</a>
    </div>
</body>
</html>
    