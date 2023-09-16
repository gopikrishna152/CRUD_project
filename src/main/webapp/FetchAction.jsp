<%@page import="com.gopikrishnsHibernate.LoginForm.DAO"%>
<%@page import="com.gopikrishnsHibernate.LoginForm.Data"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Profile</title>
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
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #333;
            color: #fff;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        a.button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #333;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>User Profile</h1>
        <%
        HttpSession hs = request.getSession(false);
        if (hs != null) {
            String i = (String) hs.getAttribute("id");
            Integer id = Integer.parseInt(i);
            String password = (String) hs.getAttribute("pass");

         //   Data d = new Data(); 
            Data d=new Data();
            d.setId(id);
            d.setPassword(password);

            DAO s=new DAO();
            List<Data> list = s.fetchLogics(d);
            if (!list.isEmpty()) {
        %>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Password</th>
                <th>Name</th>
                <th>Email</th>
                <th>Phone Number</th>
                <th>Gender</th>
            </tr>
            <%
                for (Data d1 : list) {
            %>
            <tr>
                <td><%= d1.getId() %></td>
                <td><%= d1.getPassword() %></td>
                <td><%= d1.getName() %></td>
                <td><%= d1.getEmail() %></td>
                <td><%= d1.getPhno() %></td>
                <td><%= d1.getGender() %></td>
            </tr>
            <%
                }
            %>
        </table>
        <a class="button" href="UpdateProfile.jsp">Update Profile</a>
        <a class="button" href="EndProfile.jsp">Logout</a> 
        <a class="button" href="Delete.jsp?id=<%= d.getId()%>">Delete Account</a> 
        <%
            } else {
                out.println("User data not found.");
            }
        } else {
            out.println("Session expired. Please log in.");
        }
        %>
    </div>
</body>
</html>
