<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="common-css-js.jsp"%>
<jsp:include page="common-header.jsp"></jsp:include>
<html>
<head>


<!-- 

<style>
.about-section {
	padding: 50px;
	text-align: center;
	background-color: #474e5d;
	color: white;
}

.card {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	max-width: 300px;
	margin: auto;
	text-align: center;
	font-family: arial;
}

.title {
	color: grey;
	font-size: 18px;
}

button {
	border: none;
	outline: 0;
	display: inline-block;
	padding: 8px;
	color: white;
	background-color: #000;
	text-align: center;
	cursor: pointer;
	width: 100%;
	font-size: 18px;
}

a {
	text-decoration: none;
	font-size: 22px;
	color: black;
}

button:hover, a:hover {
	opacity: 0.7;
}
</style>
</head>
<body>



	<div class="about-section">

		<h2>Who we are</h2>
		<h2>
			<p>At your side, every step of the way.</p>
		</h2>


		<p>
			We put our passion and expertise to use day after day to support
			parents and make sure that every single <br>one of those moments
			can be enjoyed in complete serenity.
		</p>
		<a href="home"><i class="fas fa-hand-point-left"></i></a>
	</div>
-->
<!--  
	<div class="container">
		<!--  <h2>Carousel Example</h2> 
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators 
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides 
			<div class="carousel-inner">

				<div class="item active">
					<img src="images/8.jpg" alt="Los Angeles" style="width: 100%;">
					<div class="carousel-caption">
						<h3>Our Mission</h3>
						<p>To provide Child care Services at your ease and also on
							your doorstep, by providing trusted quality products and
							professionals. One stop for your Baby care.</p>
					</div>
				</div>

				<div class="item">
					<img src="images/2.jpg" alt="Chicago" style="width: 100%;">
					<div class="carousel-caption">
						<h3>Our values</h3>
						<p>
							We take care to ensure that our products are safe</b>, reliable and
							meet high quality standards. <br>

						</p>
					</div>
				</div>

				<div class="item">
					<img src="images/11.jpg" alt="New York" style="width: 100%;">
					<div class="carousel-caption">
						<h3>Our Focus</h3>

						<p>We listen to the needs and emotions of parents and
							children. We understand them, we make them our own, and we have
							made it our mission to provide the best solutions for them.</p>
					</div>
				</div>

			</div>

			<!-- Left and right controls 
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
	</div>



	<h2 style="text-align: center">Contact Us</h2>

	<div class="card">
		<img src="images/babycare.jpg" alt="John" style="width: 100%">
		<h1>Team20</h1>
		<p class="title">CEO & Founder, Example</p>
		<p>CDAC,Mumbai</p>
		<div style="margin: 24px 0;">
			<a href="#"><i class="fa fa-dribbble"></i></a> <a href="#"><i
				class="fa fa-twitter"></i></a> <a
				href="https://www.linkedin.com/in/c-dac-mumbai-4b26111ba"><i
				class="fa fa-linkedin"></i></a> <a href="#"><i
				class="fa fa-facebook"></i></a>
		</div>
		<p>
			<a button href="addinquiry">Contact
				</button>
			</a>
		</p>

	</div>





	<footer class="text-muted">
		<div class="container">

			<p>
				Copyright © 2021 CDAC,Mumbai. All rights reserved | Designed by
				Team20. <a href="#" style="color: #FFFFFF;" target="_blank"><u>Design
						For U</u></a>
			</p>


			<p class="pull-right float-right">
				<a href="#"><i class="fas fa-hand-point-up"></i></a>
			</p>
	</footer>
-->
<div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
    <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="images/11.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>First slide label</h5>
        <p>Some representative placeholder content for the first slide.</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="images/11.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>Second slide label</h5>
        <p>Some representative placeholder content for the second slide.</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="images/11.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>Third slide label</h5>
        <p>Some representative placeholder content for the third slide.</p>
      </div>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</body>
</html>
