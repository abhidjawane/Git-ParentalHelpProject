<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<link href="images/babycare.jpg" rel="shortcut icon"/>
<title>Doctor Sign In</title>
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>

 <link href="<c:url value="/css/newlogin.css" />" rel="stylesheet">
 <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" > -->
</head>
<body>
<div class="container" id="container">
	<div class="form-container sign-up-container">
		<form action="Drregistered" method="post">
					
			<input class="mt-2" type="text" name="drName" placeholder="Name" pattern="[A-Za-z\s]{1,40}"  required autocomplete="off" title="Only characters are allowed.."/>
			<input class="mt-2" type="text" name="clName" placeholder="Hospital/Clinic Name" pattern="[A-Za-z\s]{1,40}"  required autocomplete="off" title="Only characters are allowed.."/>
			<input class="mt-2" type="text" name="clAdd" placeholder="Hospital/Clinic Address" required autocomplete="off"/>
			
			
			<input type="text" name="drSpec" placeholder="Speciality" pattern="[A-Za-z\s]{1,40}"  required autocomplete="off" title="Only characters are allowed.."/>
			
			
			<!-- <select class="form-control mt-2" aria-label="Default select example"  name="drSpec"  required>
				<option selected disabled>select Speciality</option>
				<option id="1" value="Pedriatrician">Pedriatrician</option>
				<option id="2" value="Dentist">Dentist</option>
				<option id="3" value="Eye Doctor">Eye Doctor</option>
				<option id="4" value="Allergist">Allergist</option>
				<option id="5" value="Dermatologist">Dermatologist</option>
			  </select> -->
	
			<input class="mt-2" type="text" name="drExperience" placeholder="Experience (in Years)" pattern="[0-9]{1,2}"  required autocomplete="off" title="Only numbers are allowed.."/>
			<input class="mt-2"  type="text" name="drFees" placeholder="Fees (In Rs.)" pattern="[0-9]{1,4}"  required autocomplete="off" title="Only numbers are allowed.."/>
			<input class="mt-2"  type="email" name="drGmail" placeholder="Email"  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{3}$" required autocomplete="off" title="Enter valid email.."/>
			<input class="mt-2" type="number" name="drMobile" placeholder="Mobile No" Pattern= "[789][0-9]{9}" required autocomplete="off" title="Mobile number should be 10 digit.."/>
			<input class="mt-2" type="text" name="drUsername" placeholder="UserName"  pattern="[A-Za-z0-9]{1,15}"required autocomplete="off" title="Username only contains characters & numbers.."/>
			<input class="mt-2" type="password" name="drPassword" placeholder="Password"  pattern="[A-Za-z0-9]{1,10}"required autocomplete="off" title="Password only contains characters & numbers.."/>
			
			<button class="btn btn-primary mt-2">Register</button>
		</form>
	</div>
	<div class="form-container sign-in-container">
		 <form action="Authentdrlogin" method="post"> 
		 <!-- <form action="#" method="post"> -->
		 
		 		<c:if test="${patReg==1 }">
						<div class="alert alert-success">Registration Success</div>
					</c:if>

					<c:if test="${patReg==0 }">
						<div class="alert alert-warning">Registration Fail</div>
					</c:if>
		<c:if test="${drLogFail==0 }">
						<div class="alert alert-warning"> Invalid Login</div>
					</c:if>
			<h1><i class="fas fa-sign-in-alt"> Sign In</i></h1>		
			<span>or use your account</span>
			<input class="mt-2" type="text" name="drUsername" placeholder="Username" required="required"/>
			<input class="mt-2" type="password" name="drPassword" placeholder="Password" required="required"/>
			  <a href="/home"><i class="fas fa-chevron-circle-left fa-2x" ></i></a>
			  <a href="/doctorforgotpassword"><b>Forgot Password</b></a>
			<button class="btn btn-success">Sign In</button>
		</form>
	</div>
	<div class="overlay-container">
		<div class="overlay" >
			<div class="overlay-panel overlay-left">
				<h1>Welcome Back!</h1>
				<p>To keep connected with us please login with your personal info</p>
				<button class="btn btn-success" id="signIn">Sign In</button>
			</div>
			<div class="overlay-panel overlay-right">
				<h1>Hello, doctor!</h1>
				<p>Enter your personal details and start journey with us</p>
				<button  class="btn btn-primary mt-2" id="signUp">Sign Up</button>
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