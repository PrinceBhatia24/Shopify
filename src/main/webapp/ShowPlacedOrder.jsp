

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

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib prefix="Core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="Sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html>
<head>
	<style>
body{
	color: white;
}

	</style>
<meta charset="ISO-8859-1">
<link rel="icon" href="img/logo.webp" />
<title>Admin : Placed Orders</title>
<%@include file="MyComponents/CSS.jsp"%>
<link rel="stylesheet" href="MyComponents/Style.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">

				<li><img id="img2" src="img/logo.webp" alt="image"></li>

				<li class="nav-item active"><a class="nav-link"
					href="index.jsp"> Home</a></li>
				<li class="nav-item active"><a class="nav-link disabled"
					href="#"> Services</a></li>
				<li class="nav-item active"><a class="nav-link disabled"
					href="ContactUs.jsp"> Contact Us</a></li>
				<li class="nav-item active"><a class="nav-link"
					href="Feedback.jsp"> Feedback</a></li>
			</ul>

			<a href="#" class=" btn btn-primary text-white ml-1"><i
				class="fa-solid fa-user"></i> ${Admin} </a>
		
			<%
			response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
			response.setHeader("Progrma", "no-cache");
			response.setDateHeader("Expires", 0);
			%>
				 <a href="AdminSignOut.jsp"
				class="btn btn-primary text-white ml-1"><i
				class="fa-solid fa-arrow-right-from-bracket"></i> Logout</a> 
		

		</div>
	</nav>

	<Sql:setDataSource driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/Shopify" user="root" password=""
		var="ds" />
	<Sql:query var="rs" dataSource="${ds}">SELECT * FROM OrderPlacedDetails;</Sql:query>
	

	<table class="table table-striped">
		<thead class="bg-primary">
			<tr>
				<th scope="col">Name</th>
				<th scope="col">PhoneNo</th>
				<th scope="col">Email</th>
				<th scope="col">Address</th>
				<th scope="col">Landmark</th>
				<th scope="col">City</th>
				<th scope="col">State</th>
				<th scope="col">Pincode</th>
				<th scope="col">PaymentType</th>
			</tr>
		</thead>
<Core:forEach items="${rs.rows}" var="row">

<tbody>
			<tr>
			
				<td><b><Core:out value="${row.Name}"></Core:out></b></td>
				<td><b><Core:out value="${row.PhoneNo}"></Core:out></b></td>
				<td><b><Core:out value="${row.Email}"></Core:out></b></td>
				<td><b><Core:out value="${row.Address}"></Core:out></b></td>
				<td><b><Core:out value="${row.Landmark}"></Core:out></b></td>
				<td><b><Core:out value="${row.City}"></Core:out></b></td>
				<td><b><Core:out value="${row.State}"></Core:out></b></td>
				<td><b><Core:out value="${row.Pincode}"></Core:out></b></td>
				<td><b><Core:out value="${row.PaymentType}"></Core:out></b></td>
				
			

			</tr>

		</tbody>
	
	</Core:forEach>
	</table>	
<div style="margin-top: 510px">


</div>

<%@include file="MyComponents/Footer.jsp"%>
</body>
</html>