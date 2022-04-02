<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="common-css-js.jsp"%>

<%@ include file="common-header-user.jsp"%>
<%@ page import="java.util.*"%>




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
	<br>
	<c:if test="${userProf==1}">

		<div class="row">
			<div class="mx-auto">
				<center>
					<h4 style="color: black">
						<i class="fas fa-id-card fa-sm"> Profile</i>
					</h4>
					<img src="/images/adminlogo.png" " alt="" width="100" height="100" />
				</center>
				<div class="bg-table">
					<table class="table table-striped border-dark table-bordered">

						<tr>
							<th><h5>
									<i class="fas fa-users"> UserName</i>
								</h5></th>
							<td>
								<h6>${user.ptUsername}</h6>
							</td>
						</tr>
						<tr>
							<th><h5>
									<i class="far fa-list-alt "><b> Name</b></i>
								</h5></th>
							<td>
								<h6>${user.ptName}</h6>
							</td>
						</tr>
						<tr>
							<th>
								<h5>
									<i class="fas fa-sort-numeric-down "> Age</i>
								</h5>
							</th>
							<td>
								<h6>${user.ptAge}</h6>
							</td>
						</tr>
						<tr>
							<th>
								<h5>
									<i class="fas fa-envelope-square"> Email</i>
								</h5>
							</th>
							<td>
								<h6>${user.ptGmail}</h6>
							</td>
						</tr>
						<tr>
							<th>
								<h5>
									<i class="fas fa-phone-square-alt "> Mobile</i>
								</h5>
							</th>
							<td>
								<h6>${user.ptMobile}</h6>
							</td>
						</tr>


					</table>
				</div>
			</div>
		</div>

	</c:if>

</body>
</html>