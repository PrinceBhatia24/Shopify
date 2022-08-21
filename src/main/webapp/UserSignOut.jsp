<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
			response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
			response.setHeader("Progrma", "no-cache");
			response.setDateHeader("Expires", 0);
			%>
     <%


 
String User=(String)session.getAttribute("UserType");
if(User==null){
	System.out.println(User);
	session.setAttribute("failedMsg","You are not logged in !!");
	response.sendRedirect("Login.jsp");
	return;	
}
System.out.println(User);

	
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="img/logo.webp" />
<title>Signout</title>
</head>
<body>
<%

if(session.getAttribute("User")!=null){
	session.removeAttribute("User");
	request.getSession(false);
	session.setAttribute("User", null);
	session.invalidate();
	response.sendRedirect("index.jsp");
	
	
	
	
}


%>

</body>
</html>