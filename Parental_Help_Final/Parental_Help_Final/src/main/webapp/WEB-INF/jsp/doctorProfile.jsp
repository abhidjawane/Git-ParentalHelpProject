<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ include file="common-css-js.jsp"%>
<%@ include file="common-header-doctor.jsp"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
	response.sendRedirect("http://localhost:8080/Doctregister");

	return;
}
%>
<script>
    history.forward();
</script>
<style>
.fa-cog {
	color: green;
}

.icon-cog {
	color: red;
}
</style>
<body class="bg-image">
	<br>
	<br>
	<br>
	<br>

	<div class="row">
		<div class="mx-auto">
			<center>
				<h4 style="color: black">
					<i class="fas fa-user-md "> Doctor Profile</i>
				</h4>


				<img src="/images/adminlogo.png" " alt="" width="100" height="100" />
			</center>
			</center>
			<table class="table table-striped border-dark table-bordered bg-table">



				<tr>
					<th><h5><i class="fas fa-users"> UserName</i></h5></th>

					<td>${doctor.drUsername}</td>
				</tr>

				<tr>
					<th><h5><i class="far fa-list-alt "><b> Name</b></i></h5></th>

					<td>${doctor.drName}</td>
				</tr>

				<tr>
					<th><h5><i class="fas fa-hand-sparkles"> Speciality</i></h5></th>

					<td>${doctor.drSpec}</td>
				</tr>



				<tr>
					<th><h5><i class="fas fa-envelope-square"> Email</i></h5></th>

					<td>${doctor.drEmail}</td>
				</tr>

				<tr>
					<th><h5><i class="fas fa-phone-square-alt "> Mobile</i></h5></th>

					<td>${doctor.drMobile}</td>
				</tr>



				<tr>
					<th>


						<form action="editDrStatus" method="get">
							<input type="hidden" name="drid" value="${doctor.drId}" readonly />
							<button class="btn btn-sm btn-dark" type="submit">
							<i class="fas fa-exchange-alt"> Change Status</i>
							</button>
						</form>

					</th>

					<td><c:if test="${doctor.drStatus==true}">
							<h5><i class="fas fa-shield-check fa-cog fa-lg"> </i>
							<b> Available</b></h5>
						</c:if> <c:if test="${doctor.drStatus==false}">
							<h5><i class="fas fa-times-circle icon-cog fa-lg"></i>
							<b> Not Available</b></h5>
						</c:if></td>
					</center>
				</tr>

			</table>

		</div>

	</div>




</body>
</html>