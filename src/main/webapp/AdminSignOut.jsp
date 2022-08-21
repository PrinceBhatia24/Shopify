<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
			response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
			response.setHeader("Progrma", "no-cache");
			response.setDateHeader("Expires", 0);
			%>
			
<%
String Admin = (String) session.getAttribute("AdminType");
if (Admin == null) {
	System.out.println(Admin);
	session.setAttribute("failedMsg", "You are not logged in !!");
	response.sendRedirect("Login.jsp");
	return;
}
System.out.println(Admin);
%>
			
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="img/logo.webp" />
<title>Sign Out </title>
</head>
<body>

<%

if(session.getAttribute("Admin")!=null){
	session.removeAttribute("Admin");
	request.getSession(false);
	session.setAttribute("Admin", null);
	session.invalidate();
	response.sendRedirect("index.jsp");
	
	
	
	
}


%>




</body>
</html>