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



<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="img/logo.webp" />
<title>Checkout</title>
<%@include file="MyComponents/CSS.jsp"%>
<link rel="stylesheet" href="MyComponents/Style.css">
<script src="js/AddToCart.js"></script>
</head>
<style>
.nav {
    position: absolute;
    top: -49.5px;
    background-color: #027bff;
    width: 106%;
    text-align: center;
    left: -1%;
    justify-content: center;
    margin: 0px;
    padding: 16px;
    height: 51px;
    }
 .nav1 {
    position: absolute;
    top: -49.5px;
    width: -1%;
    width: 109%;
    left: -4%;
    height: 49px;
    justify-content: center;
    text-align: center;
    margin: 0px -5px;
    padding: 0px -6px;
    border: 0px solid #027bff;
    }
    .table th {
    padding: 0.75rem;
    vertical-align: top;
    border-top: 0px solid #dee2e6;
}
.table {
    width: 107%;
    max-width: 107%;
    position: relative;
    left: -5%;
    margin-bottom: 1rem;
    background-color: transparent;
}
.table td {
    padding:0.52rem;
    vertical-align: top;
    border-top: 1px solid #dee2e6;
</style>
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

				<a
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
	
	<div class="container-fluid">
		<div class="row p-3">
		
		
			<div class="col-md-6" >
				<div class="card-fluid" style="position: relative;top: 7%;">
					<div class="cart-body">

					</div>
				</div>
			</div>


			<div class="col-md-6">
				<div class="card-fluid" style="position: relative;top: 2.9%;">
					<div class="card-body">
					<table class="table table-striped">
					<thead class="bg-primary">
					<tr>
					<th class="nav" scope="col">Your Details For Order</th>
					</tr>
					</thead>
					</table>
						
						<form class="row g-3" action="OrderPlaced" method="post">
							<div class="col-md-4">
								<label for="inputEmail4" class="form-label">Full Name</label> <input
									type="text" name="Name"  class="form-control" id="inputEmail4"
									placeholder="Ex-John" required>
							</div>
							<div class="col-md-4">
								<label for="inputPassword4" class="form-label">PhoneNo</label> <input
									type="text" name="PhoneNo" class="form-control"
									id="inputPassword4" placeholder="8648xxx" required>
							</div>
							<div class="col-md-4">
								<label for="inputPassword4" class="form-label">Email</label> <input
									type="email" name="Email"  class="form-control"
									id="inputPassword4" placeholder="Shopify123@gmail.com" required>
							</div>
							<div class="col-12">
								<label for="inputAddress" class="form-label">Address</label> <input
									type="text" name="Address"  class="form-control"
									id="inputAddress" placeholder="1234 Main Street" required>
							</div>
							<div class="col-12">
								<label for="inputAddress2" class="form-label">Landmark</label> <input
									type="text" name="Landmark" class="form-control"
									id="inputAddress2" placeholder="Apartment, studio, or floor"
									required>
							</div>
							<div class="col-md-4">
								<label for="inputCity" class="form-label">City</label> <input
									type="text" name="City" class="form-control" id="inputCity"
									required>
							</div>
							<div class="col-md-4">
								<label for="inputCity" class="form-label">State</label> <input
									type="text" name="State" class="form-control" id="inputCity"
									required>
							</div>
							<div class="col-md-4">
								<label for="inputZip" class="form-label">Pincode</label> <input
									type="text" name="Pincode" class="form-control" id="inputZip"
									required>
							</div>

							<div class="col-md-6">
								<div class="form-group">
									<label for="exampleInputEma1">Payment Mode</label> <select
										class="form-control" name="PaymentType">
										<option value="#">Select</option>
										<option value="COD">Cash On Delivery</option>
										<option value="Credit/DebitCard">Credit/DebitCard</option>
										<option value="UPI">UPI</option>
									</select>
								</div>
							</div>

							<div class="col-12">
								<div class="form-check">
									<input class="form-check-input" type="checkbox" id="gridCheck"
										required> <label class="form-check-label"
										for="gridCheck"> Check me out </label>
								</div>
							</div>
							<div class="col-12">
								<button type="submit" class="btn btn-primary">Place
									Order</button>
							</div>
						</form>
					</div>
				</div>
			</div>


		</div>
	</div>
	
	
	
	

	<%@include file="MyComponents/CommonModal.jsp"%>
	<div style="margin-top: 145px">
		<%@include file="MyComponents/Footer.jsp"%>
	</div>
	
</body>
</html>