<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="common-css-js.jsp"%>
<jsp:include page="common-header-user.jsp"></jsp:include>
<%@ page import="java.util.*"%>
<html>

<style>
seachbar {
	border-style: solid;
	border-color: #bbbbbb; /* grey */
}


.bg-table{
	background-color: white;
	opacity: 0.9;
	/*  box-shadow:20px 20px 50px 10px black; */
}

</style>

</head>
<%
/* response.setHeader("cache-control", "no-cache, no-store, must-revalidate");
response.setHeader("pragma", "no-cache");
response.setDateHeader("Expires", 0); */

response.setHeader("Pragma","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Expires","0");
response.setDateHeader("Expires",-1);

if(session.getAttribute("my-auth")==null)
{
	response.sendRedirect("http://localhost:8080/register");
	return;
}
%>
<script>
    history.forward();
</script>


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
			<!-- <form th:action="@{/}">
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

			</form> -->
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