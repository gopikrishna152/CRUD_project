<%@page import="com.gopikrishnsHibernate.LoginForm.DAO"%>
<%@page import="com.gopikrishnsHibernate.LoginForm.Data"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Profile</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }
        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ccc;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        form {
            margin-top: 20px;
        }
        label {
            display: block;
            margin-bottom: 5px;
        }
        input[type="text"], input[type="password"], select {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        input[type="submit"] {
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Update Profile</h1>
        <%
        HttpSession hs = request.getSession(false);
        if (hs != null) {
            String i = (String) hs.getAttribute("id");
            String password = (String) hs.getAttribute("pass");
            
            Integer id = null; // Initialize id as null.

            try {
                id = Integer.parseInt(i);
            } catch (NumberFormatException e) {
                // Handle the case where 'i' cannot be parsed as an Integer.
                e.printStackTrace();
            }

            if (id != null) { // Check if id is not null.
                Data d = new Data();
                d.setId(id);
                d.setPassword(password);

                DAO s = new DAO();
                List<Data> list = s.fetchLogics(d);
                if (!list.isEmpty()) {
                    Data userData = list.get(0); // Assuming there's only one user with this ID
        %>
        <form action="UPS.jsp" method="post">
            <input type="hidden" name="id" value="<%= userData.getId() %>">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" value="<%= (userData.getName() != null) ? userData.getName() : "" %>">
            
            <label for="email">Email:</label>
            <input type="text" id="email" name="email" value="<%= (userData.getEmail() != null) ? userData.getEmail() : "" %>">
            
            <!-- Other form fields with proper null checks -->
             <label for="phno">Phone Number:</label>
            <input type="text" id="phno" name="phno" value="<%= userData.getPhno() %>">
            
            <label for="gender">Gender:</label>
            <select id="gender" name="gender">
                <option value="Male" <%= userData.getGender().equals("Male") ? "selected" : "" %>>Male</option>
                <option value="Female" <%=  userData.getGender().equals("Female") ? "selected" : "" %>>Female</option>
                <option value="Other" <%=  userData.getGender().equals("Other") ? "selected" : "" %>>Other</option>
            </select>
            
            <label for="newPassword">New Password:</label>
            <input type="password" id="newPassword" name="newPassword">
            
            <input type="submit" value="Update Profile">
        </form>
        <%
                } else {
                    out.println("User data not found.");
                }
            } else {
                out.println("Invalid user ID.");
            }
        } else {
            out.println("Session expired. Please log in.");
        }
        %>
    </div>
</body>
</html>
