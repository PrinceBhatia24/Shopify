
<%@page import="com.db.dbconnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="Core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="Sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="icon" href="img/logo.webp" />
<%@include file="MyComponents/CSS.jsp"%>
<link rel="stylesheet" href="MyComponents/Style.css">
<script src="js/AddToCart.js"></script>
<title>Shopify</title> 
<style>
body {
	background-color: white;
}

.btn-group-sm>.btn, .btn-sm {
	padding: 0.25rem 0.5rem;
	font-size: 0.975rem;
	line-height: 1.5;
	border-radius: 1.2rem
}

.btn-success {
	color: #0b0a0a;
	background-color: #94afc6;
}

._37M3Pb, .InyRMC {
	width: 102%;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	margin: 20px 30px;
}

.InyRMC {
	left: 0;
	-webkit-align-items: center;
	-ms-flex-align: center;
	align-items: center;
	-webkit-justify-content: center;
	-ms-flex-pack: center;
	justify-content: center;
	background-color: #f5f7fa;
}

._3Il5oO {
	box-shadow: 0 -100px -21px 6 rgb(0 0 0/ 33%);
	position: relative;
	top: 31%;
	left: -26%;
}

* {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
}

user agent stylesheet
div {
	display: block;
}

._331-kn {
	position: relative;
	min-height: 40px;
	color: #000;
}

._331-kn {
	z-index: var(- -z-index-catnav);
	color: var(- -color-black);
	height: 64px;
	position: absolute;
	top: 8%;
	left: 24%;
}

.eFQ30H {
	margin: -58px 44px;
}

.eFQ30H {
	margin: -57px 52px;
}

#p {
	font-size: 70%;
}

.list-group {
	position: absolute;
	top: 60%;
	right: 77%;
	height: 70%;
	width: 23%;
}

.list-group-item .active {
	position: relative;
	display: block;
	height: 38px;
	top: 60%;
	padding: 0.87rem 1.25rem;
	margin-bottom: -1px;
	background-color: #007bff;
	border: 1pxsolidrgba(0, 0, 0, .125);
}

.list-group-item {
	position: relative;
	display: block;
	padding: 0.80rem 1.25rem;
	margin-bottom: -1px;
	background-color: #fff;
	border: 1pxsolidrgba(0, 0, 0, .125);
}

p {
	margin-top: 9px;
	margin-bottom: 1rem;
}

.ml-5 {
	margin-left: 3rem !important;
}

.demo {
	display: inline-block;
	width: 77%;
	position: absolute;
	right: 0%
}

.row {
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-ms-flex-wrap: wrap;
	flex-wrap: wrap;
	margin-right: -8px;
	margin-left: -7px;
	margin-top: 5px;
}

.col-sm-3 {
	position: relative;
	width: 100%;
	min-height: 1px;
	padding-right: 6px;
	padding-left: 12px;
}

.h2, h2 {
	font-size: 13px;
	margin-top: 12px;
}
</style>
</head>
<body style="background-color: #f5f7fa">
	<%@include file="MyComponents/Navbar.jsp"%>

	<div class="_331-kn _2tvxW">
		<div class="InyRMC _3Il5oO"
			data-tkid="M_026a1ae3-b435-4921-8ac0-2c8ce47260b7_1_372UD5BXDFYS">
			<div class="_37M3Pb">
				<div class="eFQ30H"
					data-tkid="M_026a1ae3-b435-4921-8ac0-2c8ce47260b7_1_372UD5BXDFYS_MC.G6ZC4RAJ9OHU">
					<a
						href="#">
						<div class="1mkliO">
							<div class="CXW8mj" style="height: 64px; width: 64px;">
								<img class="_396cs4  _3exPp9" alt="Top Offers"
									src="https://rukminim1.flixcart.com/flap/128/128/image/f15c02bfeb02d15d.png?q=100">
							</div>
						</div>
					</a>
				</div>
				<div class="eFQ30H"
					data-tkid="M_026a1ae3-b435-4921-8ac0-2c8ce47260b7_1_372UD5BXDFYS_MC.CBUR1Q46W5F1">
					<a
						href="#"><div
							class="_1mkliO">
							<div class="CXW8mj" style="height: 64px; width: 64px;">
								<img class="_396cs4  _3exPp9" alt="Grocery"
									src="https://rukminim1.flixcart.com/flap/128/128/image/29327f40e9c4d26b.png?q=100">
							</div>
						</div> </a>
				</div>
				<div class="eFQ30H"
					data-tkid="M_026a1ae3-b435-4921-8ac0-2c8ce47260b7_1_372UD5BXDFYS_MC.ZRQ4DKH28K8J">
					<a
						href="#"><div
							class="_1mkliO">
							<div class="CXW8mj" style="height: 64px; width: 64px;">
								<img class="_396cs4  _3exPp9" alt="Mobiles"
									src="https://rukminim1.flixcart.com/flap/128/128/image/22fddf3c7da4c4f4.png?q=100">
							</div>
						</div> </a>
				</div>

				<div class="eFQ30H"
					data-tkid="M_026a1ae3-b435-4921-8ac0-2c8ce47260b7_1_372UD5BXDFYS_MC.JKA0LKU8OMVP">
					<div class="_1mkliO">
						<div class="CXW8mj" style="height: 108px; width: 64px;">
							<img class="_396cs4  _3exPp9" alt="Electronics"
								src="https://rukminim1.flixcart.com/flap/128/128/image/69c6589653afdb9a.png?q=100">
						</div>
					</div>
					<div class="_1psGvi SLyWEo">
						<div>
							<div class="xtXmba">

								<svg width="5" height="8" viewBox="0 0 16 27"
									xmlns="http://www.w3.org/2000/svg" class="_2sVfI7">
										<path
										d="M16 23.207L6.11 13.161 16 3.093 12.955 0 0 13.161l12.955 13.161z"
										fill="#fff" class="_1zrN4q"></path></svg>
							</div>
						</div>
					</div>
					</a>
				</div>
				<div class="eFQ30H"
					data-tkid="M_026a1ae3-b435-4921-8ac0-2c8ce47260b7_1_372UD5BXDFYS_MC.A7YT3X39TTON">
					<div class="_1mkliO">
						<div class="CXW8mj" style="height: 64px; width: 64px;">
							<img class="_396cs4  _3exPp9" alt="Home"
								src="https://rukminim1.flixcart.com/flap/128/128/image/ab7e2b022a4587dd.jpg?q=100">
						</div>
					</div>
					<div class="_1psGvi SLyWEo">
						<div>
							<div class="xtXmba">

								<svg width="5" height="8" viewBox="0 0 16 27"
									xmlns="http://www.w3.org/2000/svg" class="_2sVfI7">
										<path
										d="M16 23.207L6.11 13.161 16 3.093 12.955 0 0 13.161l12.955 13.161z"
										fill="#fff" class="_1zrN4q"></path></svg>
							</div>
						</div>
					</div>
					</a>
				</div>
				<div class="eFQ30H"
					data-tkid="M_026a1ae3-b435-4921-8ac0-2c8ce47260b7_1_372UD5BXDFYS_MC.LO4IWVHA61BX">
					<a
						href="#"><div
							class="_1mkliO">
							<div class="CXW8mj" style="height: 64px; width: 64px;">
								<img class="_396cs4  _3exPp9" alt="Appliances"
									src="https://rukminim1.flixcart.com/flap/128/128/image/0ff199d1bd27eb98.png?q=100">
							</div>
						</div> </a>
				</div>
				<div class="eFQ30H"
					data-tkid="M_026a1ae3-b435-4921-8ac0-2c8ce47260b7_1_372UD5BXDFYS_MC.V4ZPKTOAO321">
					<a
						href="#"><div
							class="_1mkliO">
							<div class="CXW8mj" style="height: 64px; width: 64px;">
								<img class="_396cs4  _3exPp9" alt="Travel"
									src="https://rukminim1.flixcart.com/flap/128/128/image/71050627a56b4693.png?q=100">
							</div>
						</div> </a>
				</div>
				<div class="eFQ30H"
					data-tkid="M_026a1ae3-b435-4921-8ac0-2c8ce47260b7_1_372UD5BXDFYS_MC.CSZJ9U6U82HR">
					<a><div class="_1mkliO">
							<div class="CXW8mj" style="height: 64px; width: 64px;">
								<img class="_396cs4  _3exPp9" alt="Beauty, Toys &amp; More"
									src="https://rukminim1.flixcart.com/flap/128/128/image/dff3f7adcf3a90c6.png?q=100">
							</div>
						</div>
						<div class="_1psGvi SLyWEo">
							<div>
								<div class="xtXmba">

									<svg width="5" height="8" viewBox="0 0 16 27"
										xmlns="http://www.w3.org/2000/svg" class="_2sVfI7">
										<path
											d="M16 23.207L6.11 13.161 16 3.093 12.955 0 0 13.161l12.955 13.161z"
											fill="#fff" class="_1zrN4q"></path></svg>
								</div>
							</div>
						</div></a>
				</div>
			</div>
		</div>
	</div>



	<div class="container-fluid"
		style="margin-left: px; margin-right: 40px; margin-top: 125px">
		<div id="carouselExampleIndicators" class="carousel slide"
			data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0"
					class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="carousel-item">
					<img style="height: 257px; width: 100%" class="d-block w-100"
						src="img/1st.png" alt="second slide">
				</div>
				<div class="carousel-item active">
					<img style="height: 257px; width: 100%" class="d-block w-100"
						src="img/2nd.png" alt="first slide">
				</div>
				<div class="carousel-item">
					<img style="height: 257px; width: 100%" class="d-block w-100"
						src="img/3rd.png" alt="Third slide">
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleIndicators"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href=	"#carouselExampleIndicators"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>

	</div>


	<Sql:setDataSource driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/Shopify" user="root" password=""
		var="ds" />
	<Sql:query var="rs" dataSource="${ds}">SELECT * FROM Category;</Sql:query>
	<div class="row mt-3 mx-2">

		<ul class="list-group">
			<li class="list-group-item active">Category</li>
			<Core:forEach items="${rs.rows}" var="row">

			
				<li class="list-group-item" style="text-decoration: none"><a
					href="${row.CPage}">${row.CTitle}</a></li>
			</Core:forEach>

		</ul>
	</div>




	<Sql:setDataSource driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/Shopify" user="root" password=""
		var="ds" />
	<Sql:query var="rs" dataSource="${ds}">SELECT * FROM Products where PCategory='Phone';</Sql:query>

	<div class="container-fluid text-center text-whitee p-3 mt-0"
		style="background-color: #007bff;">Mobile Phones</div>


	<div class="demo">
		<div class="row">
			<Core:forEach items="${rs.rows}" var="row">
				<div class="col-sm-3">
					<div class="card">
						<div class="card-body">
							<img src="/E-Book/ProductImages/${row.PImageFileName}"
								style="width: 116px; height: 116px; margin-left: 47px;"
								class="img-thumblin" />
							<h2>${row.PName}</h2>
							<div id="p">
								<p>${row.PDescription}</p>

							</div>

							<div class="row text-center">

							
								<i class="btn btn-danger btn-sm ml-1"
									class="fa-solid fa-indian-rupee-sign">${row.PPrice}</i>
								 <button class="btn btn-primary btn-sm ml-1"
									onclick="AddToCart('${row.PID}','${row.PName}','${row.PPrice}')">Add
									to Cart</button>
									
							</div>
						</div>
					</div>
				</div>
			</Core:forEach>
		</div>
	</div>
	<%@include file="MyComponents/CommonModal.jsp"%>

	<div style="margin-top: 700px">
		<%@include file="MyComponents/Footer.jsp"%>
	</div>
	
	
	
</body>
</html>