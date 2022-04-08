<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<link href="images/babycare.jpg" rel="shortcut icon"/>
<title> User Sign In</title>
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>

 <link href="<c:url value="/css/newlogin.css" />" rel="stylesheet">
</head>
<body>
<div class="container" id="container">
	<div class="form-container sign-up-container">
		<form action="registered" method="post">
			
			<h1>Create Account</h1>
			
			<input type="text" name="ptName" placeholder="Parent Name" pattern="[A-Za-z\s]{1,40}"  required autocomplete="off" title="Only characters are allowed.."/>
			<input type="number" name="age" placeholder="Child Age" Pattern= "[1-9]{1}" required autocomplete="off" title="Age must be number and between 1 to 9 year.."/>
			<input type="email" name="ptGmail" placeholder="Email Id"  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{3}$" required autocomplete="off" title="Enter valid email.."/>
			<input type="number" name="ptMobile" placeholder="Phone No" Pattern= "[789][0-9]{9}" required autocomplete="off" title="Mobile number should be 10 digit.."/>
			<input type="text" name="ptUsername" placeholder="UserName"  pattern="[A-Za-z0-9]{1,15}"required autocomplete="off" title="Username only contains characters & numbers.."/>
			<input type="password" name="ptPassword" placeholder="Password"  pattern="[A-Za-z0-9]{1,10}"required autocomplete="off" title="Password only contains characters & numbers.."/>
			
			<button>Register</button>
		</form>
	</div>
	<div class="form-container sign-in-container">
		 <form action="AuthUsrlogin" method="post"> 
		 <!-- <form action="#" method="post"> -->
		 	<c:if test="${patReg==1 }">
						<div class="alert alert-success">Registration Success</div>
					</c:if>

					<c:if test="${patReg==0 }">
						<div class="alert alert-warning">Registration Fail</div>
					</c:if>
		 
		<c:if test="${ptLogFail==0 }">
						<div class="alert alert-warning"> Invalid Login</div>
					</c:if>
			<h1><i class="fas fa-sign-in-alt"> Sign In</i></h1>		
			<span>or use your account</span>
			<input type="text" name="ptUsername" placeholder="Username" required="required"/>
			<input type="password" name="ptPassword" placeholder="Password" required="required"/>
			  <a href="/home"><i class="fas fa-chevron-circle-left fa-2x" ></i></a>
			  <a href="/userforgotpassword"><b>Forgot Password</b></a>
			<button>Sign In</button>
		</form>
	</div>
	<div class="overlay-container">
		<div class="overlay">
			<div class="overlay-panel overlay-left">
				<h1>Welcome Back!</h1>
				<p>To keep connected with us please login with your personal info</p>
				<button class="ghost" id="signIn">Sign In</button>
			</div>
			<div class="overlay-panel overlay-right">
				<h1>Hello, Friend!</h1>
				<p>Enter your personal details and start journey with us</p>
				<button class="ghost" id="signUp">Sign Up</button>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
const signUpButton = document.getElementById('signUp');
const signInButton = document.getElementById('signIn');
const container = document.getElementById('container');

signUpButton.addEventListener('click', () => {
	container.classList.add("right-panel-active");
});

signInButton.addEventListener('click', () => {
	container.classList.remove("right-panel-active");
});

</script>
</body>
</html>