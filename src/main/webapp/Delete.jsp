<%@page import="com.gopikrishnsHibernate.LoginForm.DAO"%>
<%@page import="com.gopikrishnsHibernate.LoginForm.Data"%>
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

	String id=request.getParameter("id"); 
	int Id=Integer.parseInt(id); 
	Data d=new Data(); 
	d.setId(Id); 
	DAO dao=new DAO();
	boolean res=dao.delete(d); 
	if(res){
		RequestDispatcher rd=request.getRequestDispatcher("delete_success.jsp"); 
		rd.include(request, response);
	}
	else{
		RequestDispatcher rd=request.getRequestDispatcher("FetchAction.jsp");
		rd.include(request, response);
		out.println("error in deleting the account");
	}
%>
</body>
</html>