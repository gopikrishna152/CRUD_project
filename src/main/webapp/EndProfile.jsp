<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> 
	<%
	
	HttpSession hs=request.getSession();
	hs.invalidate();
	out.println("<html>");
	out.println("<center>");
	RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
	rd.include(request, response);
	
	out.println("Sucessfully Logged Out");
	out.println("</center>");
	out.println("</html>");
	
	
	%>
</body>
</html>