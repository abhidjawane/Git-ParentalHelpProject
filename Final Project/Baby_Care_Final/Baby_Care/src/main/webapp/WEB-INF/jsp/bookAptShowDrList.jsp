<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="common-css-js.jsp"%>
<jsp:include page="common-header-user.jsp"></jsp:include>


<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
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
<style>
</style>
<body class="bg-image">
	<br>
	<br>
	<br>
	<br>


	<div class="row">
		<br>
		<div class="mx-auto">


			<c:if test="${b==1}">
				<div class="alert alert-warning mt-2">Appointment Book
					Successfully...!!!</div>
			</c:if>
			<%-- <c:if test="${b!=1}">
				<div class="alert alert-success mt-2">Appointment Book
					Unsuccessfully...!!!</div>
			</c:if> --%>

		</div>
	</div>




	<!-- display doctor list -->

	<div class="container">

		<center>
			<h2>
				<i class="fas fa-user-md fa-sm"> Doctors List</i>
			</h2>
		</center>
		<br>
		<div class="container">
			<div class="mx-auto">
				<table class="table table-striped table-bordered  bg-table">
					<tr>


						<th scope="row"><i class="fas fa-sort-numeric-down"> Sr.
								No</i></th>
						<th scope="row"><i class="far fa-list-alt "><b>
									Doctor Name</b></i></th>

						<th scope="row"><i class="fas fa-hospital"> Clinic Name</i></th>
						<th scope="row"><i class="fas fa-clinic-medical"> Address</i></th>
						<th scope="row"><i class="fas fa-hand-sparkles">
								Speciality</i></th>
						<th scope="row"><i class="fas fa-envelope-square"> Email</i></th>
						<th scope="row"><i class="fas fa-phone-square-alt ">
								Mobile</i></th>

						<th scope="row"><i class="fas fa-copy"> Status</i></th>
						<th scope="row"><i class="fas fa-calendar-week"> Select
								Date & Time</i></th>
						<th scope="row"><i class="fas fa-bookmark "> book Action</i></th>
					</tr>


					<c:forEach var="item" items="${drList}" begin="0" end="100"
						varStatus="srno">
						<tr>


							<th>${srno.index+1 }</th>
							<th>${item.drName}</th>
							<th>${item.clName}</th>
							<th>${item.clAdd}</th>
							<th>${item.drSpec}</th>
							<th>${item.drEmail}</th>
							<th>${item.drMobile}</th>

							<th><c:if test="${item.drStatus==true}"> Available</c:if> <c:if
									test="${item.drStatus==false}"> Not Available</c:if></th>

							<form action="aptBooking" method="get">
								<!-- 		<td><input type="date" id="loc" name="appdate" value=""
									min="tdate" placeholder="" tabindex="3" required="required" />
								</td>
							 -->
								<td><input type="datetime-local" id="loc" name="appdate">

								</td>

								<td><input type="hidden" name="drid" value="${item.drId}"
									readonly /> <input type="hidden" name="ptid"
									value="${user.ptId}" readonly />
									<button class="btn btn-sm btn-light" type="submit">
										<i class="fas fa-bookmark "> Book Here</i>
									</button>
							</form>
					</c:forEach>

				</table>

			</div>
		</div>
</body>
</html>