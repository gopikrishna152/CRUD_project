
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration</title>
<style>
body {
    background-image: url("https://images.shiksha.com/mediadata/images/articles/1682589748phpoByiCw.jpeg");
    background-repeat: no-repeat;
    background-size: cover;
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    height: 100vh;
    display: flex;
    justify-content: flex-end; /* Align content to the right */
    align-items: flex-end; /* Align content to the bottom */
}

.center {
    background-color: rgba(255, 255, 255, 0.8);
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5);
    width: 400px; /* Adjust the width as needed */
}

table {
    width: 100%;
}

th, td {
    padding: 10px;
}

input[type="text"],
input[type="password"],
input[type="email"] {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    margin-bottom: 10px;
}

input[type="radio"] {
    margin-right: 5px;
}

input[type="submit"] {
    background-color: #007BFF;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

input[type="submit"]:hover {
    background-color: #0056b3;
}
</style>
</head>
<body> 

<div class="center">
    <form action="RegisterAction.jsp">
        <h2>Account Registration</h2>
        <table>
            <tr>
                <th><label for="id">Student Id:</label></th>
                <td><input type="text" id="id" name="id" required></td>
            </tr>
            <tr>
                <th><label for="pa">Password:</label></th>
                <td><input type="password" id="pa" name="pa" required></td>
            </tr>
            <tr>
                <th><label for="na">Student Name:</label></th>
                <td><input type="text" id="na" name="na" required></td>
            </tr>
            <tr>
                <th><label for="em">Email:</label></th>
                <td><input type="email" id="em" name="em" required></td>
            </tr>
            <tr>
                <th><label for="ph">Contact No:</label></th>
                <td><input type="text" id="ph" name="ph" required></td>
            </tr>
            <tr>
                <th><label>Gender:</label></th>
                <td>
                    <input type="radio" id="male" name="gn" value="male">
                    <label for="male">Male</label>
                    <input type="radio" id="female" name="gn" value="female">
                    <label for="female">Female</label>
                    <input type="radio" id="others" name="gn" value="others">
                    <label for="others">Others</label>
                </td>
            </tr>
            <tr>
                <th colspan="2" style="text-align: center;">
                    <input type="submit" value="Register">
                </th>
            </tr>
        </table>
    </form>
</div> 

</body>
</html>

