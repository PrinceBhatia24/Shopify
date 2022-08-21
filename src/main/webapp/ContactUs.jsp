<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="img/logo.webp" />
<title>ContactUs</title>
<%@include file="MyComponents/CSS.jsp"%>
<link rel="stylesheet" href="MyComponents/Style.css">
<script src="js/AddToCart.js"></script>
<style>
.btn-success {
    color: black;
    background-color: #94afc6;
}
#imgg{
	position: absolute;
	top:-198%;
	left:-20px;
	height: 12%;
}
.p-5 {
    padding: 11rem!important;
}
</style>
</head>
<body style="background-color: #f5f7fa">
	<div style="margin-bottom: 82px">
		<div style="margin-bottom: 1px">
		<div class="container-fluid"
			style="height: 0px; background-color: #90caf9"></div>
	</div>
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
			<a href="#" class="btn btn-primary ml-1"><i
				class="fa-solid fa-cart-shopping" data-toggle="modal"
				data-target="#Cart"><span class="cart-item">(0)</span></i></a> <a
				href="#" class=" btn btn-primary text-white ml-1"><i
				class="fa-solid fa-user"></i> ${User}</a> 
					<%
			response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
			response.setHeader("Progrma", "no-cache");
			response.setDateHeader("Expires", 0);
			%>
				<a href="UserSignOut.jsp"
				class="btn btn-primary text-white ml-1"><i
				class="fa-solid fa-arrow-right-from-bracket"></i> Logout</a>

		</div>
	</nav>

	</div>
	<div class="çontainer">
		<div class="row p-5">
			<div class="col-md-4 offset-md-4 text-center">
				<div id="imgg" class="text-success text-center">
			<img  src="img/Image3.png" alt="rocket_contact"/>
				</div>
				<h3>24*7 Service</h3>
				<h4>Help Line Number</h4>
				<h5>(+91)9468359122</h5>
				<a href="index.jsp" class="btn btn-primary">Home</a>
			</div>
		</div>

	</div>
	<%@include file="MyComponents/CommonModal.jsp"%>
	<div style="margin-top: 75px">
		<%@include file="MyComponents/Footer.jsp"%>
	</div>
</body>
</html>
