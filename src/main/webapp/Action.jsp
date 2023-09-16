<%@page import="com.gopikrishnsHibernate.LoginForm.DAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Vector"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
      <%! int count=0; %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
try{
String i=request.getParameter("id"); 
Integer id=Integer.parseInt(i); 
String password=request.getParameter("password"); 

DAO s=new DAO();




HttpSession hs=request.getSession();  

boolean result=s.login_logics(id, password);
if(result){ 
	out.println("<html>");
	out.println("<center>");
	out.println("Your UserId & Password are valid");
	hs.setAttribute("id", i);
	hs.setAttribute("pass", password);
	
	
	RequestDispatcher rd=request.getRequestDispatcher("FetchAction.jsp");
	rd.include(request, response);
	
	out.println("</center>");
	out.println("</html>");
	
} 
else{
	out.println("<html>");
	out.println("<center>"); 
	out.println("<h1>Oops</h1>");
	RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
	rd.include(request, response);
	out.println("Invalid UserId & Password");
	out.println("</center>");
	out.println("</html>");
}





}

catch(Exception e){
	e.getMessage();
}



%>

</body>
</html>