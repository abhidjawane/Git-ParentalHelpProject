<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="common-css-js.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Details</title>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Fontawesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"
	integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w=="
	crossorigin="anonymous" />

<style>
.bg-image {
	/* The image used */
	background-image:
		url("https://images.unsplash.com/photo-1520607162513-77705c0f0d4a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1049&q=80");
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	max-width: 100%;
	height: auto;
	/* Add the blur effect */
	background-color: transparent;
}

.bg-table {
	background-color: white;
	opacity: 0.9;
	/*  box-shadow:20px 20px 50px 10px black; */
}


.bg-image1 {
	/* The image used */
	background-image:
		url("https://images.unsplash.com/photo-1470054187619-8cf450e37193?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80");
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	max-width: 100%;
	height: auto;
	/* Add the blur effect */
	background-color: transparent;
}

.bg-table1 {
	background-color: white;
	opacity: 0.9;
	/*  box-shadow:20px 20px 50px 10px black; */
}

</style>
</head>

<body>

	<!-- 
	<div class="row bg-success " style="height: 70px">
		<div class=" d-none d-flex justify-content-center align-items-center">

			<a class="navbar-band ml-5" href="/home"><img
				style="border-radius: 50%; width: 50px; height: 50px;"
				src="/images/Babycare.jpg" /> </a> <a
				class="btn btn-sm btn-white ml-3" href="/babynamelist" role="button">BabyNames</a>
			<a class="btn btn-sm btn-white ml-3" href="/list" role="button">BabySitters</a>
			<a class="btn btn-sm btn-white ml-3" href="/vaccinationlist"
				role="button">Vaccination</a> <a class="btn btn-sm btn-white ml-3"
				href="/inquirylist" role="button">Inquiries</a> <a
				class="btn btn-sm btn-white mr-3" href="/home" role="button">
				Logout </a>
		</div>

	</div>
 -->
	<header>

		<nav
			class="navbar navbar-expand-md navbar-dark fixed-top row bg-dark ">
			<a class="navbar-band font-weight-bold ml-3" href="#"><img
				style="border-radius: 50%; width: 50px; height: 50px;"
				src="/images/babycare.jpg" /> </a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarCollapse" aria-controls="navbarCollapse"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>



			<div class="collapse navbar-collapse" id="navbarCollapse">
				<ul class="navbar-nav mr-auto">
					<li class="navbar-band font-weight-bold ml-3 active"><a
						class="nav-link" href="/babynamelist"><i
							class="fas fa-baby "> BabyNames </i> <span class="sr-only"></span></a>
					</li>
					<li class="nav-item active"><a
						class="nav-link navbar-band font-weight-bold ml-3" href="/list"><i
							class="fas fa-baby-carriage "> BabySitters</i> </a></li>
					<!--  <li class="nav-item">
          <a class="nav-link disabled" href="/vaccinationdetails" tabindex="-1" aria-disabled="true">Vaccination</a>
        </li>-->
					<li class="navbar-band font-weight-bold ml-3 active"><a
						class="nav-link" href="/vaccinationlist"><i
							class="fas fa-prescription-bottle-alt "> Vaccination</i></a></li>
					<li class="navbar-band font-weight-bold ml-3 active"><a
						class="nav-link" href="/inquirylist"><i
							class="fas fa-envelope-square "> Inquiries</i></a></li>

				</ul>
				<ul class="navbar-nav   justify-content-end">

					<li class="navbar-band font-weight-bold ml-3 active"><a
						class="nav-link" href="/logout"> <i
							class="fas fa-sign-out-alt "> LogOut</i></a></li>
				</ul>





			</div>
		</nav>

	</header>
</body>
</html>