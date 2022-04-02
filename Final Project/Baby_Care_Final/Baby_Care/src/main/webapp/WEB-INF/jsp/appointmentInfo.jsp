<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="common-css-js.jsp"%>
<jsp:include page="common-header-user.jsp"></jsp:include>



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
<style>
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
		<br>
		<div class="mx-auto">


			<c:if test="${c==1}">
				<div class="alert alert-warning mt-2">Appointment cancelled</div>
			</c:if>
			<c:if test="${c==0}">
				<div class="alert alert-warning mt-2">Appointment not
					Cancelled. Try again...</div>
			</c:if>

		</div>
	</div>



	<!-- display appointment list for cancel appointment-->




	<div class="container">

		<center>
			<h4 style="color: black">
				<i class="fas fa-info-circle fa-sm"> Appointment Information</i>
			</h4>
	</div>
	</center>
	<br>

	<div class="container">
		<div class="mx-auto">
			<table
				class="table table-striped border-dark table-bordered bg-table">
				<tr>
					<th><i class="fas fa-sort-numeric-down"> Sr. No</i></th>
					<th><i class="far fa-list-alt "><b> Doctor Name</b></i></th>
					<th><i class="fas fa-hospital"> Hospital Name</i></th>
					<th><i class="fas fa-copy"> Status</i></th>
					<th><i class="fas fa-calendar-week"> Date & Time </i></th>
					<th><i class="fas fa-times-circle"> Cancel Action</i></th>

				</tr>

				<c:forEach var="item" items="${appointments}" begin="0" end="100"
					varStatus="srno">
					<tr>
						<td>${srno.index+1 }</td>

						<%-- <td>${item.aptId}</td> --%>

						<td><c:forEach var="singledr" items="${drList}">
								<c:if test="${singledr.drId==item.drId}"> ${singledr.drName} </c:if>
							</c:forEach></td>

						<td><c:forEach var="singledr" items="${drList}">
								<c:if test="${singledr.drId==item.drId}"> ${singledr.clName} </c:if>
							</c:forEach></td>

						<td><c:if test="${item.aptStatus==true}">
								<b> Booked</b>
							</c:if> <c:if test="${item.aptStatus==false}">
								<b> cancelled</b>
							</c:if></td>
						<td>${item.aptDate}</td>





						<td>
							<form action="aptCancel" method="get">
								<input type="hidden" name="drid" value="${item.drId}" readonly />
								<input type="hidden" name="ptid" value="${user.ptId}" readonly />
								<c:if test="${item.aptStatus==true}">
									<button class="btn btn-sm btn-light" type="submit">
										<i class="fas fa-window-close  icon-cog"> </i><b> Cancel
											Appointment</b>
									</button>
								</c:if>

							</form>
						</td>

					</tr>
				</c:forEach>

			</table>
		</div>
	</div>








</body>
</html>