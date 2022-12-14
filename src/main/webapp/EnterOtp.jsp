 <%


String user=(String)session.getAttribute("Name");
if(user==null){
	session.setAttribute("failedMsg","You are not logged in !!");
	response.sendRedirect("Login.jsp");
	return;
}



%> 

<!DOCTYPE html>
<html>

    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="icon" href="img/logo.webp" />

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
            integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="https://cdn.lineicons.com/2.0/LineIcons.css" rel="stylesheet">

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous">
        </script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous">
        </script>
        <%@include file="MyComponents/CSS.jsp"%>
<link rel="stylesheet" href="MyComponents/Style.css">
<style>
html, body.auth_class {
  background: #4f4b53;
}
.login-container {
    margin-top: 4%;
    border: 1px solid #black;
    border-radius: 22px;
    box-shadow: 0 0px 28px 0 rgb(0 0 0 / 8%);
    max-width: 50%;
    background: #fff;
    z-index: 0;
    position: relative;

}
img.triangleA {
  position: absolute;
  margin-left: -16px;
  width: 60px;
  border-radius: 12px 0px 0px 0px;
}
img.triangleB {
  position: absolute;
  right: 0px;
  bottom: 0px;
  width: 360px;
  z-index: 0;
}
.welcome_auth {
  align-items: center;
  display: flex;
  justify-content: center;
}
.auth_welcome a {
  font-weight: 400;
}
.auth_welcome {
  font-weight: 100;
  font-size: 1.5em;
  background: -webkit-linear-gradient( 45deg, #07dd97, #beffe7);
  background-size: 100%;
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-color: black;
  max-width: 170px;
}
a.auth_branding_in img {
  width: 60px;
  height: 60px;
  border-radius: 1000px;
}

.login-form {
  background: #fbfbfb;
  border-radius: 0px 12px 12px 0px;
  align-items: center;
  display: flex;
  justify-content: center;
}
.login_form_in {
  padding: 5.1em 1em;
}
.login-form h1 {
  font-size: 1.2em;
  max-width: 600px;
  margin: 0 auto;
  color: #969696;
  line-height: 1.5em;
  padding: 1.2em 0px .8em;
}
.lni {
  display: inline-block;
  font: normal normal normal 1em/1 'LineIcons';
  speak: none;
  text-transform: none;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
.google_signup {
  margin-top: .8em;
}
.google_signup a {
  background: #DB4437;
  color: #FFF;
  display: block;
  text-align: center;
  padding: 12px 4px;
  border-radius: 5px;
}
.btn-primaryy {
  color: #fff;
  background-color: #94afc6;
  
}
.btn-primaryy:hover {	
  color: #fff;
  background-color: #94afc6;
}
.google_signup a {
  background: #DB4437;
  color: #FFF;
  display: block;
  text-align: center;
  padding: 12px 4px;
  border-radius: 5px;
}
.google_signup a:hover {
  background: #d81505;
  color: #FFF;
}
.other_auth_links a:nth-child(2) {
  float: right;
}
a {
  text-decoration: none;
  color: #afafaf;
}
a:hover {
  text-decoration: none;
  color: #616161;
}    
.alert-success {
  background-color: rgb(190 255 231 / 33%);
  color: #07dd97;
  font-size: .9em;
}  
.col-md-6{
    position: relative;
    width: 110%;
    min-height: 4px;
    padding-right: 0px;
    padding-left: 3px;
    }
</style>
    </head>
    <body class="auth_class">
    <%@include file="MyComponents/Navbar.jsp"%>

        <div class="container login-container">
            <img class="triangleA" src="https://res.cloudinary.com/procraftstudio/image/upload/v1613965232/triangleA_lwqhnl.png" alt='Onestop triangle'>
          <div class="row">
            <div class="col-md-6 welcome_auth">
                <div class="auth_welcome">
                 <img src="img/Image1.png" class="img-fluid" alt="Sample image">
                </div>
            </div>         
            <div class="col-md-6 login-form">
                <div class="login_form_in">
                    <div class="auth_branding">
                        <a class="auth_branding_in" href="https://procraft.studio"><img src="https://res.cloudinary.com/procraftstudio/image/upload/v1613964589/Procraft-Studio-Logo-1_tnfxuj.jpg" alt='Procraft Studio'></a>
                    </div>
                  <h1 class="auth_title text-left">Password Reset</h1>
                  
                  <form  action="ValidateOtp" role="form" autocomplete="off" method="post">
                    <div class="alert alert-success bg-soft-primary border-0" role="alert">
                        Otp is sent to your Mentioned Email Id Please Enter the Otp To Change The Password
                    </div>                    
                    <%@include file="MyComponents/Message.jsp"%>
                    <div class="form-group">
                      <input type="text" class="form-control" name="otp" placeholder="Enter OTP" required="required">
                    </div>
                    <div class="form-group">
                      <button type="submit" class="btn btn-primaryy btn-lg btn-block">Reset Password</button>
                    </div>
              
                  </form>
                </div>
            </div>       
          </div>
        </div>

        <img class="triangleB" src="https://res.cloudinary.com/procraftstudio/image/upload/v1613965232/triangleB_isffjy.png" alt='Onestop triangle'>
        	<div style="margin-top: 40px">
		<%@include file="MyComponents/Footer.jsp"%>
	</div>
    </body>

</html>