<%@page import="com.gopikrishnsHibernate.LoginForm.DAO"%>
<%@page import="com.gopikrishnsHibernate.LoginForm.Data"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Profile - Result</title>
</head>
<body>
    <%
    String idStr = request.getParameter("id");
    Integer id = Integer.parseInt(idStr);
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String phno = request.getParameter("phno");
    String gender = request.getParameter("gender");
    String newPassword = request.getParameter("newPassword");

    Data updatedData = new Data();
    updatedData.setId(id);
    updatedData.setName(name);
    updatedData.setEmail(email);
    updatedData.setPhno(phno);
    updatedData.setGender(gender);

    if (newPassword != null && !newPassword.isEmpty()) {
        updatedData.setPassword(newPassword);
    }

    DAO dao = new DAO();
    boolean success = dao.updateProfile(updatedData);

    if (success) {
        %>
        <h1>Profile Updated Successfully</h1> 
       	<%RequestDispatcher rd=request.getRequestDispatcher("SuccessUpdate.jsp");
       	rd.include(request, response);
       	%> 
       	
        
        <%
    } else {
        %>
        <h1>Error Updating Profile</h1>
        <a href="UpdateProfile.jsp">Go Back</a>
        <%
    }
    %>
</body>
</html>
