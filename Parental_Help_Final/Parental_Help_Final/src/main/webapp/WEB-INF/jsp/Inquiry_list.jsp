
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="common-css-js.jsp"%>
<jsp:include page="AddDetails.jsp"></jsp:include>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Inquiries</title>

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
	<div class="container-fluid"></div>
	<div class="container">
		<center>
			<h4><i class="fas fa-envelope-square fa-lg text-white">  Inquiries</i></h4>
		</center>
		<br>
		<table class="table table-striped table-bordered bg-table">
			<thead>

				<th scope="row"><i class="far fa-list-alt "><b> Name</b></i></th>
				<th scope="row"><i class="fas fa-phone-square-alt "> Mobile</i></th>
				<th scope="row"><i class="fas fa-envelope-square"> Email</i></th>
				<th scope="row"><i class="fas fa-trash-alt"> Subject</i></th>
				<th scope="row"><i class="fas fa-book-open"> Description</i></th>
				<th scope="row"><i class="fas fa-trash-alt"> Action</i></th>
			</thead>

			<tbody>
				<c:forEach items="${articleList }" var="article">
					<tr>

						<td>${article. users_name }</td>
						<td>${article.email }</td>
						<td>${article.mobile}</td>
						<td>${article.subject}</td>
						<td>${article.detail_Description}</td>
						<td><spring:url value="/deleteinquiry/${article.id }"
								var="deleteURL" /> <a class="btn btn-danger"
							href="${deleteURL }" role="button"><i
								class="fas fa-trash-alt"> Delete</i></a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>