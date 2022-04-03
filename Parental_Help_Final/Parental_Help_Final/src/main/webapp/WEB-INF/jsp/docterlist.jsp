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
<title>BabySitters</title>


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
				<i class="fas fa-fa fa-user-md" style="font-size:36px text-Blue"> Doctor</i>
			</h2>
		</center>
		<table class="table table-striped table-bordered bg-table">
			<thead>

				<th scope="row"><i class="fas fa-fa fa-user-md "> Doctor Name</i></th>
				
				<th scope="row"><i class="fas fa-envelope "> Email</i></th>
				
				<th scope="row"><i class="fas fa-phone-square-alt "> Mobile</i></th>
				
				<th scope="row"><i class="fas fa-calendar-week "> Year Of Experience</i></th>
				
				<th scope="row"><i class="fas fa-rupee-sign "> Fees</i></th>
				
				<th scope="row"><i class="fas fa-trash-alt"> Delete Action</i></th>
			</thead>
			<tbody>
				<c:forEach items="${articleList }" var="article">
					<tr>

						<td>${article.drName }</td>
						<td>${article.drEmail }</td>
						<td>${article.drMobile }</td>
						<td>${article.drExperience }</td>
						<td>${article. drFees }</td>
					
					
					
						<td><spring:url value="/deletedoc/${article.drId }"
								var="deleteURL" /> <a class="btn btn-danger"
							href="${deleteURL }" role="button"><i
								class="fas fa-trash-alt"> Delete</i></a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
			</div>


		
			<br>
		</table>
</body>
</html>