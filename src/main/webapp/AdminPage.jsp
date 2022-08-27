
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
<meta charset="ISO-8859-1">
<link rel="icon" href="img/logo.webp" />
<title>Admin : Home</title>
<%@include file="MyComponents/CSS.jsp"%>
<link rel="stylesheet" href="MyComponents/Style.css">
<style type="text/css">
a {
	text-decoration: none;
	color: black;
}

a:hover {
	text-decoration: none;
	color: black;
}

.admin .card:hover {
	background-color: grey;
	cursor: "pointer";
}

.modal-header {
	background-color: #3d3e46;
	color: white;
}

#exampleModalLabel {
	color: white;
}

.mb-4 {
	margin-bottom: -0.5rem !important;
}

.form-control {
	display: block;
	width: 100%;
	padding: -0.625rem 2.75rem;
	font-size: 1rem;
	line-height: 1.5;
	color: #495057;
	background-color: #fff;
	background-clip: padding-box;
	border: 1px solid #ced4da;
	border-radius: 0.25rem;
	transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;
}

.form-control-lg
,
{
padding












:






 






-1












.5rem






 






12rem












;
font-size
:
1


.25rem
;


line-height
:
0


.5
;


border-radius
:
0


.3rem



;
}
body {
	margin: 0px;
	font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
		"Helvetica Neue", Arial, sans-serif, "Apple Color Emoji",
		"Segoe UI Emoji", "Segoe UI Symbol";
	font-size: 1rem;
	font-weight: 400;
	line-height: 0.7;
	color: #212529;
	text-align: left;
	background-color: #fff;
}
</style>
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



	<%@include file="MyComponents/Message.jsp"%>


	<div class="container admin">
		<div class="row p-5">
			<div class="col-md-3" data-toggle="modal" data-target="#exampleModal">

				<div class="card">
					<div class="card-body text-center">
						<i class="fas fa-plus-square fa-3x text-primary"></i><br>
						<h4>Add Category</h4>

					</div>
				</div>

			</div>


			<div class="col-md-3" data-toggle="modal"
				data-target="#exampleModal2">
				<div class="card">
					<div class="card-body text-center">
						<i class="fa-solid fa-3x fa-folder-plus text-danger"></i><br>
						<h4>Add Product</h4>

					</div>
				</div>
			</div>

			<div class="col-md-3">
				<a href="ProductsList.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-eye fa-3x text-warning"></i><br>
							<h4>View Products</h4>

						</div>
					</div>
				</a>
			</div>


			<div class="col-md-3">
				<a href="#">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-3x fa-circle-minus text-primary"></i></i><br>
							<h4>Remove Product</h4>

						</div>
					</div>
				</a>
			</div>


			<div class="col-md-3">
				<a href="ShowPlacedOrder.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fas fa-box-open fa-3x text-danger"></i><br>
							<h4>Placed Order</h4>

						</div>
					</div>
				</a>
			</div>

			<div class="col-md-3">
				<a href="AdminSignOut.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fas fa-sign-out-alt fa-3x text-warning"></i><br>
							<h4>Logout</h4>

						</div>
					</div>
				</a>
			</div>

		</div>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header custom-bg text-white">
					<h5 class="modal-title" id="exampleModalLabel">Add Category</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="AddCategory" method="post">


						<%-- <%@include file="MyComponents/Message.jsp"%> --%>


						<div class="form-outline mb-4">
							<label class="form-label" for="form3Example1c"></label> <input
								type="text" name="CTitle" id="form3Example3"
								class="form-control form-control-lg"
								placeholder="Enter Category Title" required="required" />

						</div>


						<div class="form-outline mb-3">
							<label class="form-label" for="form3Example1c"></label>
							<textarea name="CDescription" class="form-control"
								placeholder="Enter Category Description" required="required"
								style="width: 100%; height: 200px;"></textarea>
						</div>


						<div class="text-center text-lg-start mt-4 pt-2">
							<button type="submit" class="btn btn-primary btn-lg"
								style="padding-left: 2.5rem; padding-right: 2.5rem;">Add</button>
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Close</button>

						</div>
					</form>
				</div>

			</div>
		</div>
	</div>
	<div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header custom-bg text-white">
					<h5 class="modal-title" id="exampleModalLabel">Add Product</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="AddProduct" method="post" enctype="multiprt/form-data">



						<Sql:setDataSource driver="com.mysql.cj.jdbc.Driver"
							url="jdbc:mysql://localhost:3306/Shopify" user="root" password=""
							var="ds" />
						<Sql:query var="rs" dataSource="${ds}">SELECT * FROM Category;</Sql:query>

						<!-- Email input -->
						<div class="form-outline mb-4">
							<label class="form-label" for="form3Example1c"></label> <input
								type="text" name="PName" id="form3Example3"
								class="form-control form-control-lg"
								placeholder="Enter Title Of Product" required="required" />

						</div>
						<div class="form-outline mb-3">
							<label class="form-label" for="form3Example1c"></label>
							<textarea name="PDescription" class="form-control"
								placeholder="Enter Product Description" required="required"
								style="width: 100%; height: 200px;"></textarea>
						</div>
						<div class="form-outline mb-4">
							<label class="form-label" for="form3Example1c"></label> <input
								type="text" name="PPrice" id="form3Example3"
								class="form-control form-control-lg"
								placeholder="Enter Price Of Product" required="required" />

						</div>
						<div class="form-outline mb-4">
							<label class="form-label" for="form3Example1c"></label> <input
								type="text" name="PQuantity" id="form3Example3"
								class="form-control form-control-lg"
								placeholder="Enter Quantity Of Product" required="required" />

						</div>


						<div class="form-outline mb-4">

							<label class="form-label" for="form3Example1c"></label> <select
								name="PCategory" id="form3Example3" class="form-control">
								<Core:forEach items="${rs.rows}" var="row">
									<option value="${row.CTitle}">${row.CTitle}</option>
								</Core:forEach>
							</select>


						</div>


						<!-- 	<option value="Laptop">Laptop</option>
						<option value="Tv">Tv</option>
						<option value="SondBar">SoundBar</option> -->


						<div class="form-outline mb-4">
							<label class="form-label" for="form3Example1c"></label> <input
								type="file" name="PPic" id="form3Example3"
								class="form-control form-control-lg" required="required" />

						</div>





						<div class="text-center text-lg-start mt-4 pt-2">
							<button type="submit" class="btn btn-primary btn-lg"
								style="padding-left: 2.5rem; padding-right: 2.5rem;">Add</button>
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Close</button>

						</div>
					</form>
				</div>

			</div>
		</div>
	</div>

	<div style="margin-top: 327px">
		<%@include file="MyComponents/Footer.jsp"%>
	</div>



</body>
</html>