<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="common-css-js.jsp"%>
<jsp:include page="common-header.jsp"></jsp:include>
<html>

<style>
seachbar {
	border-style: solid;
	border-color: #bbbbbb; /* grey */
}
.bg-image{
	/* The image used */
	background-image:
		url("https://images.unsplash.com/photo-1615631648086-325025c9e51e?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80");
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	max-width: 100%;
	height: auto;
	/* Add the blur effect */
	background-color: transparent;
}

.bg-table{
	background-color: white;
	opacity: 0.9;
	/*  box-shadow:20px 20px 50px 10px black; */
}

</style>
<body class="bg-image">
	<br>
	<br>
	<br>
	<br>

	<div class="container ">

		<center>
			<h2>
				<i class="fas fa-prescription-bottle-alt text "> Vaccination Details</i>
			</h2>
			<form th:action="@{/}">
				<input type="text" name="keyword" id="keyword" size="50"
					class="seachbar" placeholder="Search" th:value="${keyword}"
					required /> &nbsp;

				<button class="text-primary">
					<i class="fas fa-search"> Search</i>
				</button>
				&nbsp;

				<button type="button ">
					<a href='vaccinationdetails' role='button' id="button"
						type="button"><i class="fas fa-sync-alt"> Clear</i></a>
				</button>

			</form>
		</center>
		<br>

		<div class="container bg-table" id="babaydetails" >
		
			<table class="table table-striped table-bordered">
				

					<th scope="row"><i class="fas fa-sort-numeric-down ">
							Age Group</i></th>
					<th scope="row"><i class="far fa-calendar-alt "><b>
								Date</b></i></th>
					<th scope="row"><i class="fas fa-stopwatch "> Time</i></th>
					<th scope="row"><i class="far fa-list-alt "><b>
								Vaccination Name</b></i></th>
					<th scope="row"><i class="fas fa-book-open ">
							Description</i></th>
					<th scope="row"><i class="fas fa-map-marker-alt ">
							Location</i></th>
					<th scope="row"><i class="fas fa-campground "> Camp
							By</i></th>
			
				<tbody>
					<c:forEach items="${articleList }" var="article">
						<tr>
							<td>${article.age_group}</td>
							<td>${article.vaccination_date}</td>
							<td>${article.vaccination_time}</td>
							<td>${article.vaccination_name}</td>
							<td>${article.vaccination_description }</td>
							<td>${article.vaccination_camp_place}</td>
							<td>${article.vaccination_camp_by }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>