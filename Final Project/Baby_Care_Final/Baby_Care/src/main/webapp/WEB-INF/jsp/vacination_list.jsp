<%@ include file="common-css-js.jsp"%>
<%@ include file="AddDetails.jsp"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Vaccination Details</title>

</head>
<%
/* response.setHeader("cache-control", "no-cache, no-store, must-revalidate");
response.setHeader("pragma", "no-cache");
response.setDateHeader("Expires", 0); */

response.setHeader("Pragma", "no-cache");
response.setHeader("Cache-Control", "no-store");
response.setHeader("Expires", "0");
response.setDateHeader("Expires", -1);

if (session.getAttribute("my-auth") == null) {
	response.sendRedirect("http://localhost:8080/admin");
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


	<div class="container">
		<center>
			<h2>
				<i class="fas fa-prescription-bottle-alt text-black"> Vaccination Details</i>
			</h2>
		</center>
		<div class="container" id="babaydetails">
		<table class="table table-striped table-bordered bg-table">

			<thead>

				<th scope="row"><i class="fas fa-sort-numeric-down "> Age
						Group</i></th>
				<th scope="row"><i class="far fa-calendar-alt "><b>
							Date</b></i></th>
				<th scope="row"><i class="fas fa-stopwatch "> Time</i></th>
				<th scope="row"><i class="far fa-list-alt "><b>
							Vaccination Name</b></i></th>
				<th scope="row"><i class="fas fa-book-open"> Description</i></th>
				<th scope="row"><i class="fas fa-map-marker-alt "> Location</i></th>
				<th scope="row"><i class="fas fa-campground "> Camp By</i></th>
				<th scope="row"><i class="fas fa-edit"> Update Action</i></th>
				<th scope="row"><i class="fas fa-trash-alt"> Delete Action</i></th>
			</thead>
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
						<td><spring:url value="/updatevaccination/${article.id }"
								var="updateURL" /> <a class="btn btn-success"
							href="${updateURL }" role="button"><i class="fas fa-edit">Update</i></a></td>
						<td><spring:url value="/deletevaccination/${article.id }"
								var="deleteURL" /> <a class="btn btn-danger"
							href="${deleteURL }" role="button"><i
								class="fas fa-trash-alt">Delete</i></a></td>
					</tr>
				</c:forEach>
			</tbody>

			<div class="d-flex justify-content-sm-center">

				<spring:url value="/addvaccination" var="addURL" />

				<a class="btn btn-primary btn-group-toggle active "
					href="${addURL }" role="button"><i class="fas fa-sticky-note">
						Add Vaccination Details</i><a>
			</div>
			<br>
		</table>
</div>
	</div>
</body>
</html>