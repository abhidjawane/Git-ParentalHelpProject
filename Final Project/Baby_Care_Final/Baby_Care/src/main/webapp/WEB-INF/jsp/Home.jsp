<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="common-css-js.jsp"%>
<jsp:include page="common-header.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>


<style>
.about-section {
	padding: 50px;
	text-align: center;
	background-color: yellowgreen;
	color: white;
}

.about-section1 {
	padding: 50px;
	text-align: center;
	background-color: white;
	color: yellowgreen;
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

.bg-primary {
	background-color: #343a40 !important;
}
</style>
</head>
<body>



	<main role="main">

		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class=""></li>
				<li data-target="#myCarousel" data-slide-to="1" class=""></li>
				<li data-target="#myCarousel" data-slide-to="2" class="active"></li>
			</ol>
			<div class="carousel-inner">
				<div class="carousel-item">
					<img src="images/101.jpg" alt=".." width="1545" height="640">
					<div class="container">
						<div class="carousel-caption text-left">
							<h1>First step towards Motherhood..!</h1>

							<p>
								<a class="btn btn-sm  btn-outline-dark text-light"
									href="/register">Sign up Today</a>
							</p>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<img src="images/102.jpg" alt=".." width="1545" height="645">
					<div class="container">
						<div class="carousel-caption">
							<h1>
								9 MONTH <br> Preparing to fall in love for a Lifetime..!
							</h1>
							<p>
								<a class="btn btn-sm  btn-outline-dark" href="/tips">Learn
									more</a>
							</p>
						</div>
					</div>
				</div>
				<div class="carousel-item active">
					<img src="images/103.jpg" alt=".." width="1545" height="640">
					<div class="container">
						<div class="carousel-caption text-right">
							<h1>At your side, Every step of the way..!</h1>
							<br> <br> <br> <br>
							<p></p>
							<!-- <p><a class="btn btn-md btn-primary" href="#">Browse gallery</a></p> -->
						</div>
					</div>
				</div>
			</div>
			<a class="carousel-control-prev" href="#myCarousel" role="button"
				data-slide="prev"> <span class="carousel-control-prev-icon"
				aria-hidden="true"></span> <span class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#myCarousel" role="button"
				data-slide="next"> <span class="carousel-control-next-icon"
				aria-hidden="true"></span> <span class="sr-only">Next</span>
			</a>
		</div>


		<!-- Marketing messaging and featurettes
  ================================================== -->
		<!-- Wrap the rest of the page in another container to center all the content. -->

		<div class="container marketing">




			<!-- START THE FEATURETTES -->

			<hr class="featurette-divider">

			<div class="row featurette">
				<div class="col-md-7">
					<br> <br>
					<h2 class="featurette-heading">
						Who we are <span class="text-muted">??</span>
					</h2>
					<p class="lead">We put our passion and expertise to use day
						after day to support parents and make sure that every single one
						of those moments can be enjoyed in complete serenity.</p>
				</div>
				<div class="col-md-5">
					<img
						class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto"
						src="images/202.jpg" width="350" height="350" role="img"
						aria-label="Placeholder: 500x500"
						preserveAspectRatio="xMidYMid slice" focusable="false">
					<title>Placeholder</title>
					<rect width="100%" height="50%" fill="#eee"></rect>
					</img>

				</div>
			</div>

			<hr class="featurette-divider">

			<div class="row featurette">
				<div class="col-md-7 order-md-2">
					<br> <br>
					<h2 class="featurette-heading">
						Our Mission <br> <span class="text-muted"><h4>One
								step for your Baby care..!</h4></span>
					</h2>
					<p class="lead">
						To provide Childcare Services at your ease and also on your
						doorstep, by <b> providing trusted quality products and
							professionals.</b> Our aim is to connect customers to professionals
						with ease, also providing required healthcare products at their
						doorstep.
					</p>

				</div>
				<div class="col-md-5 order-md-1">
					<img
						class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto"
						src="images/201.jpg" width="350" height="350" role="img"
						aria-label="Placeholder: 500x500"
						preserveAspectRatio="xMidYMid slice" focusable="false">
					<title>Placeholder</title>
					<rect width="100%" height="100%" fill="#eee"></rect>
					</img>

				</div>
			</div>

			<hr class="featurette-divider">

			<div class="row featurette">
				<div class="col-md-7 ">
					<br> <br>
					<h2 class="featurette-heading">
						Our Values <br> <span class="text-muted">
							<h4>Professionalism and Expertise</h4>
						</span>
					</h2>


					<p class="lead">
						We take what we do extremely seriously. <b>We take care to
							ensure that our products are safe</b>, reliable and meet high quality
						standards.<br>
					</p>
				</div>
				<div class="col-md-5">
					<img
						class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto"
						src="images/204.jpg" width="350" height="350" role="img"
						aria-label="Placeholder: 500x500"
						preserveAspectRatio="xMidYMid slice" focusable="false">
					<title>Placeholder</title>
					<rect width="100%" height="100%" fill="#eee"></rect>
					</img>

				</div>
			</div>


			<hr class="featurette-divider">
			<div class="row featurette">
				<div class="col-md-7 order-md-2">
					<br> <br>
					<h2 class="featurette-heading">
						Our Focus <span class="text-muted"><br>
							<h4>Emotional Intelligence</h4></span>
					</h2>

					<p class="lead">
						We <b>listen</b> to the needs and emotions of parents and
						children. We <b>understand</b> them, we make them our own, and <b>we
							have made it our mission</b> to provide the best solutions for them.

					</p>
				</div>
				<div class="col-md-5">
					<img
						class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto"
						src="images/203.jpg" width="350" height="350" role="img"
						aria-label="Placeholder: 500x500"
						preserveAspectRatio="xMidYMid slice" focusable="false">
					<title>Placeholder</title>
					<rect width="100%" height="100%" fill="#eee"></rect>
					</img>

				</div>
			</div>


			<hr class="featurette-divider">
			<!-- /END THE FEATURETTES -->


			<center>
				<h2 class="featurette-heading">
					Team20 <span class="text-muted"><br>
						<h6><i><br>"The future belongs to those who <br> believe in the beauty of their dreams"</i></h6></span>
				</h2>

				<hr class="featurette-divider">
				<br>
			</center>

			<!-- 
			<div class="card-columns">
				<div class="card p-3">
					<img src="images/Team20/Swapnil.jpg" class="card-img-top "
						alt="..." >
					<div class="card-body">
					<br>
						<h5 class="card-title">Swapnil Supekar</h5>
						
						<p class="card-text"></p>
					</div>
				</div>
				<div class="card p-3">
					<img src="images/Team20/vikash.jpg" class="card-img-top " alt="...">
					<div class="card-body">
						<h5 class="card-title">Ekta Walavalkar</h5>
						<p class="card-text">.</p>
					</div>
				</div>
				<div class="card p-3">
					<img src="images/Team20/Ekta.jpg" class="card-img-top " alt="..."
						>
					<div class="card-body">
						<h5 class="card-title">Vikash Shukla</h5>
						<p class="card-text"></p>
					</div>
				</div>
				<div class="card p-3">
					<img src="images/Team20/shubham.jpg" class="card-img-top "
						alt="..." >
					<div class="card-body">
						<h5 class="card-title">Shubham Dhawle</h5>
						<p class="card-text"></p>
					</div>
				</div>
				<div class="card p-3">
					<img src="images/Team20/kamlesh.JPG" class="card-img-top " alt="..."
						>
					<div class="card-body">
					<br>
						<h5 class="card-title">Shital Patil</h5>
						<p class="card-text"></p>
					</div>
				</div>
				<div class="card p-3">
					<img src="images/Team20/shital.jpg" class="card-img-top "
						alt="...">
					<div class="card-body">
					<br>
						<h5 class="card-title">Kamlesh Singh</h5>
						<p class="card-text"></p>
					</div>
				</div> -->

			<!-- abve cool -->
			<!--  <div class="card p-3">
    <blockquote class="blockquote mb-0 card-body">
      <p>A well-known quote, contained in a blockquote element.</p>
      <footer class="blockquote-footer">
        <small class="text-muted">
          Someone famous in <cite title="Source Title">Source Title</cite>
        </small>
      </footer>
    </blockquote>
  </div>
  <div class="card">
    <img src="..." class="card-img-top" alt="...">
    <div class="card-body">
      <h5 class="card-title">Card title</h5>
      <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
    </div>
  </div>
  <div class="card bg-primary text-white text-center p-3">
    <blockquote class="blockquote mb-0">
      <p>Our Team,Our Journey</p>
      <footer class="blockquote-footer text-white">
        <small>
          Someone famous in <cite title="Source Title">Source Title</cite>
        </small>
      </footer>
    </blockquote>
  </div>
  <div class="card text-center">
    <div class="card-body">
      <h5 class="card-title">Card title</h5>
      <p class="card-text">This card has a regular title and short paragraphy of text below it.</p>
      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
    </div>
  </div>
  <div class="card">
    <img src="images/Team20/kamlesh.JPG" class="card-img" alt="...">
  </div>
  <div class="card p-3 text-right">
    <blockquote class="blockquote mb-0">
      <p>A well-known quote, contained in a blockquote element.</p>
      <footer class="blockquote-footer">
        <small class="text-muted">
          Someone famous in <cite title="Source Title">Source Title</cite>
        </small>
      </footer>
    </blockquote>
  </div>
  <div class="card">
    <div class="card-body">
      <h5 class="card-title">Card title</h5>
      <p class="card-text">This is another card with title and supporting text below. This card has some additional content to make it slightly taller overall.</p>
      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
    </div>
  </div>
</div> -->


			<!-- Round val bT -->
			<div class="row">
				<div class="col-lg-2">
					<img class="bd-placeholder-img rounded-circle" width="140"
						height="140" src="images/Team20/shital.jpg" role="img"
						aria-label="Placeholder: 140x140"
						preserveAspectRatio="xMidYMid slice" focusable="false">
					<title>Placeholder</title>
					<rect width="100%" height="100%" fill="#777"></rect>
					<text x="50%" y="50%" fill="#777" dy=".3em"></text>
					</img>

					<h6>
						<b>&nbsp; &nbsp;&nbsp; &nbsp;Shital Patil</b>
					</h6>
					<p>&nbsp; &nbsp;200940381094</p>

				</div>
				<!-- /.col-lg-2 -->
				<div class="col-lg-2">
					<img class="bd-placeholder-img rounded-circle" width="140"
						height="140" src="images/Team20/vikash.jpg" role="img"
						aria-label="Placeholder: 140x140"
						preserveAspectRatio="xMidYMid slice" focusable="false">
					<title>Placeholder</title>
					<rect width="100%" height="100%" fill="#777"></rect>
					<text x="50%" y="50%" fill="#777" dy=".3em"></text>
					</img>

					<h6>
						<b>&nbsp; &nbsp;Vikash Shukla</b>
					</h6>
					<p>&nbsp; &nbsp;200940381129</p>

				</div>
				<!-- /.col-lg-4 -->
				<div class="col-lg-2">
					<img class="bd-placeholder-img rounded-circle" width="140"
						height="140" src="images/Team20/Swapnil.jpg" role="img"
						aria-label="Placeholder: 140x140"
						preserveAspectRatio="xMidYMid slice" focusable="false">
					<title>Placeholder</title>
					<rect width="100%" height="100%" fill="#777"></rect>
					<text x="50%" y="50%" fill="#777" dy=".3em"></text>
					</img> <br>
					<h6>
						<b>&nbsp; &nbsp;Swapnil Supekar</b>
					</h6>
					<p>&nbsp; &nbsp;200940381118</p>

				</div>
				<!-- /.col-lg-4 -->
				<!--  next 3-->
				<div class="col-lg-2">
					<img class="bd-placeholder-img rounded-circle" width="140"
						height="140" src="images/Team20/Ekta.jpg" role="img"
						aria-label="Placeholder: 140x140"
						preserveAspectRatio="xMidYMid slice" focusable="false">
					<title>Placeholder</title>
					<rect width="100%" height="100%" fill="#777"></rect>
					<text x="50%" y="50%" fill="#777" dy=".3em"></text>
					</img>

					<h6>
						<b>&nbsp; &nbsp;Ekta Walavalkar</b>
					</h6>
					<p>&nbsp; &nbsp;200940581006</p>

				</div>
				<!-- /.col-lg-2 -->
				<div class="col-lg-2">
					<img class="bd-placeholder-img rounded-circle" width="140"
						height="140" src="images/Team20/shubham.jpg" role="img"
						aria-label="Placeholder: 140x140"
						preserveAspectRatio="xMidYMid slice" focusable="false">
					<title>Placeholder</title>
					<rect width="100%" height="100%" fill="#777"></rect>
					<text x="50%" y="50%" fill="#777" dy=".3em"></text>
					</img>

					<h6>
						<b>Shubham Dhawale</b>
					</h6>
					<p>&nbsp; &nbsp;200940381099</p>
				</div>
				<!-- /.col-lg-4 -->
				<div class="col-lg-2">
					<img class="bd-placeholder-img rounded-circle" width="140"
						height="140" src="images/Team20/kamlesh.JPG" role="img"
						aria-label="Placeholder: 140x140"
						preserveAspectRatio="xMidYMid slice" focusable="false">
					<title>Placeholder</title>
					<rect width="100%" height="100%" fill="#777"></rect>
					<text x="50%" y="50%" fill="#777" dy=".3em"></text>
					</img>

					<h6>
						<b>&nbsp; &nbsp;Kamlesh Singh</b>
					</h6>
					<p>&nbsp; &nbsp;200940381036</p>

				</div>
				<!-- /.col-lg-4 -->

			</div>


		</div>
		<hr class="featurette-divider">
		<!-- /.container -->


		<!-- FOOTER -->
		<!-- 		<footer class="container">
			<p class="float-right">
				<a href="#">Back to top</a>
			</p>
			<p>Copyright Â© 2021 CDAC,Mumbai. All rights reserved | Designed
				by Team20. Design For U</p>
		</footer> -->

		<div class="container-fluid bg-primary py-3">
			<div class="container">
				<div class="row py-3">
					<div class="col-md-12">
					
<center>
<div class="d-inline-block">
							<div class="bg-circle-outline d-inline-block">
								<a href="https://www.facebook.com/cdacmumbai" class="text-white"><i
									class="fab fa-facebook-square fa-lg"></i> </a>
							</div>

							<div class="bg-circle-outline d-inline-block">
								<a href="https://www.instagram.com/dac_cdacmumbai/"
									class="text-white"> <i class="fab fa-instagram fa-lg"></i></a>
							</div>
							<div class="bg-circle-outline d-inline-block">
								<a href="https://twitter.com/cdacindia?s=09" class="text-white"> <i
									class="fab fa-twitter-square fa-lg"></i></a>
							</div>
							<div class="bg-circle-outline d-inline-block">
								<a href="https://www.linkedin.com/in/c-dac-mumbai-4b26111ba/"
									class="text-white"> <i class="fab fa-linkedin-in fa-lg"></i></a>
							</div>
						<p class="text-white">Copyright © 2021 CDAC,Mumbai. All rights
							reserved | Designed by Team20. Design For U</p>
						
					</div>
	</center>
					<div class="col-md-3">
						<<!-- div class="d-inline-block">
							<div class="bg-circle-outline d-inline-block">
								<a href="https://www.facebook.com/cdacmumbai" class="text-white"><i
									class="fab fa-facebook-square fa-2x"></i> </a>
							</div>

							<div class="bg-circle-outline d-inline-block">
								<a href="https://www.instagram.com/dac_cdacmumbai/"
									class="text-white"> <i class="fab fa-instagram fa-2x"></i></a>
							</div>
							<div class="bg-circle-outline d-inline-block">
								<a href="#" class="text-white"> <i
									class="fab fa-twitter-square fa-2x"></i></a>
							</div>
							<div class="bg-circle-outline d-inline-block">
								<a href="https://www.linkedin.com/in/c-dac-mumbai-4b26111ba/"
									class="text-white"> <i class="fab fa-linkedin-in fa-2x"></i></a>
							</div> -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>

</body>
</html>