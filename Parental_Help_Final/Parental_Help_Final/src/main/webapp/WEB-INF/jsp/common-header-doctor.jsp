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
.bg-image {
	/* The image used */
	background-image:
		url("https://images.pexels.com/photos/40568/medical-appointment-doctor-healthcare-40568.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260");
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
</style>
</head>

<body>


	<header>

		<nav
			class="navbar navbar-expand-md navbar-dark fixed-top row bg-dark ">
			<a class="navbar-band font-weight-bold ml-3" href="#"><img
				style="border-radius: 50%; width: 50px; height: 50px;"
				src="/images/ph.jpg" /> </a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarCollapse" aria-controls="navbarCollapse"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>



			<div class="collapse navbar-collapse" id="navbarCollapse">
				
					<form action="doctProfile" method="get">
						<input type="hidden" name="drid" value="${doctor.drId}" readonly />
						<button class="btn btn-sm btn-white mr-3  text-white"
							type="submit">
							<i class="fas fa-user-md "> Profile</i>
						</button>
					</form>


					<form action="editDrOpt" method="get">
						<input type="hidden" name="drid" value="${doctor.drId}" readonly />
						<button class="btn btn-sm btn-white mr-3  text-white"
							type="submit">
							<i class="fas fa-user-edit "> Update Profile</i>
						</button>
					</form>



					<form action="Appointuserlist" method="get">
						<input type="hidden" name="drid" value="${doctor.drId}" readonly />
						<button class="btn btn-sm btn-white mrs-3  text-white"
							type="submit">
							<i class="fas fa-calendar-check "> Appointments</i>
						</button>
					</form>




<!-- 
					<li class="navbar-band font-weight-bold mr-3 active"><a
						class="nav-link" href="/logout"> <i
							class="fas fa-sign-out-alt fa-lg"> LogOut</i></a></li> -->
							
					<a class="btn btn-sm btn-white mr-3  text-white navbar-band font-weight-bold active" href="/logout"
						role="button"> <i class="fas fa-sign-out-alt ">
							LogOut</i>
					</a>
			</div>


		</nav>

	</header>
</body>
</html>
