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
		url("https://images.pexels.com/photos/3771811/pexels-photo-3771811.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940");
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
				src="/images/babycare.jpg" /> </a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarCollapse" aria-controls="navbarCollapse"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarCollapse">

				<form action="showUserProf" method="get">
					<div>

						<input type="hidden" name="ptid" value="${user.ptId}" readonly />
						<button class="btn btn-sm btn-white mr-3  text-white"
							type="submit">
							<i class="fas fa-id-card"> Profile</i>
						</button>
					</div>
				</form>



				<form action="update-opt" method="get">
					<div>
						<input type="hidden" name="ptid" value="${user.ptId}" readonly />
						<button class="btn btn-sm btn-white  mr-3  text-white"
							type="submit">
							<i class="fas fa-user-edit "> Update Profile</i>
						</button>
					</div>
				</form>


				<form action="drList" method="get">
					<div>
						<!--  <input type="date" id="loc" name="appdate" value="" placeholder="" tabindex="3" required="required" />  -->
						<input type="hidden" name="ptid" value="${user.ptId}" readonly />
						<button class="btn btn-sm btn-white mr-3  text-white"
							type="submit">
							<i class="fas fa-calendar-check "> Book Appointment</i>
						</button>
					</div>
				</form>

				<form action="appointmentInfo" method="get">
					<div>
						<input type="hidden" name="ptid" value="${user.ptId}" readonly />
						<button class="btn btn-sm btn-white mr-3  text-white"
							type="submit">
							<i class="fas fa-info-circle "> Appointment Information</i>
						</button>
					</div>
				</form>


				<a class="btn btn-sm btn-white mr-3  text-white" align="right"
					href="/logout" role="button"> <i
					class="fas fa-sign-out-alt "> LogOut</i>
				</a>
			</div>





			</div>
		</nav>
	</header>
</body>
</html>