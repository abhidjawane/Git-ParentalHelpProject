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
<title>BabyNames</title>

</style>

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




	<div class="container"">
		<center>
			<h2>
				<i class="fas fa-baby text-black "> Baby Names</i>
			</h2>
		</center>

		<table class="table table-striped table-bordered bg-table">

			<thead>
				<th scope="row"><i class="far fa-list-alt "><b>
							Baby Names</b> </i></th>
				<th scope="row"><i class="fas fa-book "> Meaning</i></th>
				<th scope="row"><i class="fas fa-child"> Gender</i></th>
				<th scope="row"><i class="fas fa-edit"> Update Action</i></th>
				<th scope="row"><i class="fas fa-trash-alt"> Delete Action</i></th>
			</thead>
			<tbody>
				<c:forEach items="${babyname }" var="article">
					<tr>

						<td>${article.name }</td>
						<td>${article.meaning }</td>
						<td>${article.sex }</td>
						<td><spring:url value="/updatebabyname/${article.id }"
								var="updateURL" /> <a class="btn btn-success"
							href="${updateURL }" role="button"><i class="fas fa-edit">
									Update</i></a></td>
						<td><spring:url value="/deletebabyname/${article.id }"
								var="deleteURL" /> <a class="btn btn-danger"
							href="${deleteURL }" role="button"><i
								class="fas fa-trash-alt"> Delete</i></a></td>
					</tr>
				</c:forEach>
			</tbody>
			<div class="d-flex justify-content-sm-center">
				<spring:url value="/addbabyname" var="addURL" />

				<a class="btn btn-primary btn-group-toggle active "
					href="${addURL }" role="button"><i class="fas fa-sticky-note">
						Add Baby Names</i><a>
			</div>
			<br>

		</table>



	</div>


	</div>
</body>
</html>