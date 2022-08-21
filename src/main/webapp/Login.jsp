
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="icon" href="img/logo.webp" />
<title>Shopify: Login</title>
<%@include file="MyComponents/CSS.jsp"%>
<link rel="stylesheet" href="MyComponents/Style.css">
<style>
.form-check-input {
	position: absolute;
	margin-top: 0.3rem;
	margin-left: -1.25rem;
}
</style>
</head>
<body style="background-color: #f5f7fa">

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

			<a href="Registration.jsp" class="btn btn-primary text-white ml-1"><i
				class="fas fa-user-plus"></i>Register</a>

		</div>
	</nav>
	<div style="margin-top: 100px"></div>
	<section class="vh-100">
		<div class="container-fluid h-custom">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col-md-9 col-lg-6 col-xl-5">
					<img
						src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp"
						class="img-fluid" alt="Sample image">
				</div>
				<div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
					<form action="LoginServlet" method="post">
						<div
							class="d-flex flex-row align-items-center justify-content-center justify-content-lg-start">
							<p class="lead fw-normal mb-0 me-3">Sign in with</p>
							<button type="button" class="btn btn-primary btn-floating mx-1">
								<i class="fab fa-facebook-f"></i>
							</button>

							<button type="button" class="btn btn-primary btn-floating mx-1">
								<i class="fab fa-twitter"></i>
							</button>

							<button type="button" class="btn btn-primary btn-floating mx-1">
								<i class="fab fa-linkedin-in"></i>
							</button>
						</div>

						<div class="divider d-flex align-items-center my-4">
							<p class="text-center fw-bold mx-3 mb-0">Or</p>

						</div>

						<%@include file="MyComponents/Message.jsp"%> 

						<!-- Email input -->
						<div class="form-outline mb-4">
							<label class="form-label" for="form3Example1c"></label> <i
								class="fas fa-envelope fa-lg me-3 fa-fw"></i>Email <input
								type="email" name="email" id="form3Example3"
								class="form-control form-control-lg"
								placeholder="Enter a valid email address" required="required" />

						</div>

						<!-- Password input -->
						<div class="form-outline mb-3">
							<label class="form-label" for="form3Example1c"></label> <i
								class="fas fa-key fa-lg me-3 fa-fw"></i>Password <input
								type="password" name="password" id="form3Example4"
								class="form-control form-control-lg"
								placeholder="Enter password" required="required" />
						</div>

						<div class="d-flex justify-content-between align-items-center">
							<!-- Checkbox -->
							<div class="form-check mb-0">
								<input class="form-check-input me-2" type="checkbox" value=""
									id="form2Example3" /> <label class="form-check-label"
									for="form2Example3"> Remember me </label>
							</div>
							<a href="ForgotPassword.jsp" class="text-body">Forgot
								password?</a>
						</div>

						<div class="text-center text-lg-start mt-4 pt-2">
							<button type="submit" class="btn btn-primary btn-lg"
								style="padding-left: 2.5rem; padding-right: 2.5rem;">Login</button>

							<p class="small fw-bold mt-2 pt-1 mb-0">
								Don't have an account? <a href="Registration.jsp"
									class="link-danger">Register</a>
							</p>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
	<div style="margin-top: 127px">
		<%@include file="MyComponents/Footer.jsp"%>
	</div>

</body>
</html>