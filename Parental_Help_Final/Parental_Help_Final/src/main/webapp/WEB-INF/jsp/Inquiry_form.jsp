
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="common-css-js.jsp"%>
<jsp:include page="common-header.jsp"></jsp:include>


<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Fontawesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"
	integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w=="
	crossorigin="anonymous" />

<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

* {
	box-sizing: border-box;
}

/* Style inputs */
input[type=text], select, textarea {
	width: 100%;
	padding: 12px;
	border: 1px solid #ccc;
	margin-top: 6px;
	margin-bottom: 16px;
	resize: vertical;
}

input[type=submit] {
	background-color: #4CAF50;
	color: white;
	padding: 12px 20px;
	border: none;
	cursor: pointer;
}

input[type=submit]:hover {
	background-color: #45a049;
}

/* Style the container/contact section */
.container {
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: 10px;
}

/* Create two columns that float next to eachother */
.column {
	float: left;
	width: 50%;
	margin-top: 6px;
	padding: 20px;
}

/* Clear floats after the columns */
.row:after {
	content: "";
	display: table;
	clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
	.column, input[type=submit] {
		width: 100%;
		margin-top: 0;
	}
}
</style>
</head>
<body style="background-color: #f2f2f2">
	<br>
	<br>
	<br>


	<div class="container" id="signup">
		<div style="text-align: center">
			<h2>
				<i class="fas fa-mail-bulk"> Contact Us</i>
			</h2>

		</div>
		<div class="row">
			<div class="column">
				<img src="images/406.jpg" style="width: 100%">
			</div>
			<div class="column">
				<form action="/saveinquiry" method="post">

					<div class="content ">
						<div class="field-wrap ">

							<input type="text" name="users_name"
								placeholder="Enter Full Name" pattern="[A-Za-z.\s]{1,}" required
								autocomplete="off"
								title="Fullname should only contain letters..!" />
						</div>



						<div class="field-wrap">

							<input type="text" name="email" placeholder="Enter  Email"
								pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required
								autocomplete="off" title="Follow email pattern.." />
						</div>
						<div class="field-wrap">

							<input type="text" name="mobile"
								placeholder="Enter Mobile Number" Pattern="[789][0-9]{9}"
								required autocomplete="off"
								title="Mobile number should be 10 digit..!" />
						</div>

						<div class="field-wrap">

							<input type="text" name="subject" placeholder="Subject " required
								autocomplete="off" title="Enter letters only..." />
						</div>
						<div class="field-wrap">

							<input type="text" name="detail_Description"
								placeholder="Put Your Message Here...!!" required
								autocomplete="off" />
						</div>

						<button type="submit" class="btn btn-dark" />
						Submit
						</button>



					</div>
				</form>
			</div>

			<div class="row">

				<div class="col-sm-4">
					<address>

						<p class="text-muted">
							&nbsp;&nbsp; Address <a
								href="https://goo.gl/maps/jcSQu46fLzmL5Sx6A"> <i
								class="fas fa-map-marker-alt  fa-lg "> </i></a>
						</p>
						<p>

							&nbsp;Railway Station, Raintree Marg,Near &nbsp;Bharati
							Vidyapeeth, Opp. Kharghar, <br> &nbsp;Sector 7,CBD Belapur,
							Navi Mumbai, <br> &nbsp;Maharashtra 400614<br>
						</p>
					</address>
				</div>





				<div class="col-sm-4">

					<p class="text-muted">
						&nbsp; Lets Talk <i class="fas fa-phone-alt "> </i>
					<p>&nbsp;+91 2227565303</p>
				</div>

				<div class="col-sm-4">
					<address>
						<p class="text-muted">
							&nbsp;General Support <i class="far fa-envelope"></i> <br> <a
								href="mailto:babycare578@gmail.com">&nbsp;babycare578@gmail.com</a>
						</p>
					</address>
				</div>





			</div>
</body>
</html>
