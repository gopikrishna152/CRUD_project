
<%@page import="com.gopikrishnsHibernate.LoginForm.DAO"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.gopikrishnsHibernate.LoginForm.Data"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RegisterAction</title>
</head>
<body>
	<%
	String i = request.getParameter("id");
	Integer id = Integer.parseInt(i);
	String password = request.getParameter("pa");
	String name = request.getParameter("na");
	String email = request.getParameter("em");
	String phno = request.getParameter("ph");
	String gender = request.getParameter("gn"); 
	
	
	Data d=new Data(); 
	d.setId(id); 
	d.setPassword(password); 
	d.setName(name); 
	d.setEmail(email); 
	d.setPhno(phno); 
	d.setGender(gender); 
	
	DAO dao=new DAO();
	int res=dao.saveDataToDatabase(d);
	if(res>0){
		RequestDispatcher rd=request.getRequestDispatcher("success.jsp");  
		rd.include(request,response);
		
	}
	else{
		RequestDispatcher rd=request.getRequestDispatcher("fail.jsp");  
		rd.include(request,response);
	}
	
	
	
	
	%>

</body>
</html>