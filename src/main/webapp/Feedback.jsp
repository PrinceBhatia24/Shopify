<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="img/logo.webp" />
<title>Feedback</title>
<%@include file="MyComponents/CSS.jsp"%>
<link rel="stylesheet" href="MyComponents/Style.css">

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="js/AddToCart.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>

<style>
body{
    background: -webkit-linear-gradien(left, #0072ff, #00c6ff);
}
.contact-form{
    background: #fff;
    margin-top: 1%;
    margin-bottom: -3%;
    width: 70%;
}
.contact-form .form-control{
    border-radius:1rem;
}
.contact-image{
    text-align: center;
}
.contact-image img{
    border-radius: 6rem;
    width: 16%;
    margin-top: 3%;
    
}
.contact-form form{
    padding: 14%;
}
.contact-form form .row{
    margin-bottom: -7%;
}
.contact-form h3{
    margin-bottom: 8%;
    margin-top: -10%;
    text-align: center;
    color: #0062cc;
}
.contact-form .btnContact {
    width: 50%;
    border: none;
    border-radius: 1rem;
    padding: 1.5%;
    background: #dc3545;
    font-weight: 600;
    color: #fff;
    cursor: pointer;
}
.btnContactSubmit
{
    width: 50%;
    border-radius: 1rem;
    padding: 1.5%;
    color: #fff;
    background-color: #0062cc;
    border: none;
    cursor: pointer;
}
.btn-primary {
    color: black;
    background-color: #94afc6;
    border-color: #000000;
    }
.text-white {
    color: #000!important;
    }

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
			<a href="#" class="btn btn-primary ml-1"><i
				class="fa-solid fa-cart-shopping" data-toggle="modal"
				data-target="#Cart"><span class="cart-item">(0)</span></i></a> 
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


<div class="container contact-form">
            <div class="contact-image">
                <img src="img/Image2.png" alt="rocket_contact"/>
            </div>
            <form action="Feedback" method="post">
                <h3>Drop Us a Message</h3>
               <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <input type="text" name="Name" class="form-control" placeholder="Your Name *" value="" required="required" />
                        </div>
                        <div class="form-group">
                            <input type="text" name="Email" class="form-control" placeholder="Your Email *" value="" required="required"/>
                        </div>
                        <div class="form-group">
                            <input type="text" name="PhoneNo" class="form-control" placeholder="Your Phone Number *" value="" required="required"/>
                        </div>
                        <div class="form-group">
                            <input type="submit" name="btnSubmit" class="btnContact" value="Send Message" required="required"/>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <textarea name="Message" class="form-control" placeholder="Your Message *" style="width: 100%; height: 150px;"></textarea>
                        </div>	
                    </div>
                </div>
            </form>
</div>
<%@include file="MyComponents/CommonModal.jsp"%>
		<div style="margin-top: 77px">
		<%@include file="MyComponents/Footer.jsp" %>
		
</div>
</body>
</html>