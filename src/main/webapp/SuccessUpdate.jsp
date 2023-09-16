<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Success Update</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            text-align: center;
        }
        .tick {
            font-size: 60px;
            animation: colorChange 2s linear infinite;
        }
        @keyframes colorChange {
            0% {
                color: green;
            }
            50% {
                color: blue;
            }
            100% {
                color: green;
            }
        }
    </style>
</head>
<body>
    <div>
        <span class="tick">&#10004;</span>
        <h1>Update Successful!</h1>
   
        <a href="login.jsp">logout</a>
    </div>
</body>
</html>
