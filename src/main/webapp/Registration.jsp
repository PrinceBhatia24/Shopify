<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="icon" href="img/logo.webp" />
<title>Shopify: Registration</title>
<%@include file="MyComponents/CSS.jsp"%>
<link rel="stylesheet" href="MyComponents/Style.css">
<style>
.form-check-input {
	position: absolute;
	margin-top: 0.3rem;
	margin-left: -20.25rem;
}

#demo2 {
	position: relative;
	top: 102px;
	left: 5%;
}

.img-fluid {
	position: relative;
	top: -63px;
	left: 10%;
	max-width: 70%;
	height: auto;
}
.btn-success {
    color: #0b0a0a;
    background-color: #94afc6;
}

</style>
</head>
<body style="background-color: #f5f7fa">

	<div style="margin-top: 0px">
		<div style="margin-bottom: 1px">
		<div class="container-fluid"
			style="height: 0px; background-color: #90caf9"></div>
	</div>
	<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">

				<li><img id="img2" src="img/logo.webp" alt="image"></li>
			
				<li class="nav-item active"><a class="nav-link" href="index.jsp"> Home</a></li>
				<li class="nav-item active"><a class="nav-link disabled"
					href="#"> Services</a></li>
					<li class="nav-item active"><a class="nav-link disabled"
					href="ContactUs.jsp">Contact Us</a></li>
				<li class="nav-item active"><a class="nav-link" href="Feedback.jsp"> Feedback</a></li>
			</ul>

			<a href="Login.jsp" class="btn btn-success ml-1"><i
				class="fas fa-sign-in-alt"></i> Login</a> 
			
		</div>
	</nav>
	</div>
	<div id="demo2">
		<section class="vh-100">
			<div class="container-fluid h-custom">
				<div
					class="row d-flex justify-content-center align-items-center h-100">
					<div
						class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

						<img src="img/Image.png" class="img-fluid" alt="Sample image">

					</div>
					<div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
						<form action="register" method="post">
							<div class="form-outline mb-4">
								<label class="form-label" for="form3Example1c"></label> <i
									class="fas fa-user fa-lg me-3 fa-fw"></i>Name <input
									type="text" id="form3Example3" name="name"
									class="form-control form-control-lg" placeholder="Ex:-john" />

							</div>
							<div class="form-outline mb-4">
								<label class="form-label" for="form3Example1c"></label> <i
									class="fas fa-envelope fa-lg me-3 fa-fw"></i>Email <input
									type="email" id="form3Example3" name="email"
									class="form-control form-control-lg"
									placeholder="abc@gmail.com" />

							</div>
							<div class="form-outline mb-4">
								<label class="form-label" for="form3Example1c"></label> <i
									class="fas fa-lock fa-lg me-3 fa-fw"></i>Phone No. <input
									type="text" id="form3Example3" name="phonenumber"
									class="form-control form-control-lg" placeholder="894****" />

							</div>
							<div class="form-outline mb-4">
								<label class="form-label" for="form3Example1c"></label> <i
									class="fas fa-key fa-lg me-3 fa-fw"></i>Password <input
									type="password" id="form3Example3" name="password"
									class="form-control form-control-lg"
									placeholder="Enter Strong Password" />
							</div>
							<div class="form-check d-flex justify-content-center mb-2">
								<label class="form-check-label" for="form2Example3"></label> I
								agree all statements in Terms of service <input
									class="form-check-input me-2" type="checkbox" value=""
									id="form2Example3c" />
							</div>

							<div class="text-center text-lg-start mt-4 pt-2">
								<button type="submit" class="btn btn-primary btn-lg"
									style="padding-left: 2.5rem; padding-right: 2.5rem;">Register</button>
								<p class="small fw-bold mt-2 pt-1 mb-0">
									Already have an account? <a href="Login.jsp"
										class="link-danger">Login</a>
								</p>
							</div>

						</form>
					</div>
				</div>
			</div>
		</section>
	</div>
	
	<div style="margin-top: 137px">
	<%@include file="MyComponents/Footer.jsp"%>
	</div>
</body>
</html>