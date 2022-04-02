<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="common-css-js.jsp"%>
<jsp:include page="common-header-doctor.jsp"></jsp:include>


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

response.setHeader("Pragma","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Expires","0");
response.setDateHeader("Expires",-1);

if(session.getAttribute("my-auth")==null)
{
	response.sendRedirect("http://localhost:8080/Doctregister");
	
	
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
	<br>
	



	<div class="container">

		<div class=" mx-auto">
			<center>
				<h4 style="color: black">
					<i class="fas fa-calendar-check"> Appointment List </i>
				</h4>
			</center>
			<div class=" bg-table">
			<table class="table table-striped border-dark table-bordered">
				<tr>
					<th><i class="fas fa-sort-numeric-down"> Sr. No</i></th>
					<th><i class="far fa-list-alt "><b> Patient Name</b></i></th>
					<th> <i class="fas fa-clone"> Status</i></th>
					<th><i class="far fa-calendar-alt "><b> Date & Time</b></i></th>
					<th><i class="fas fa-times-circle"> Close Action</i></th>
					<!--  <th>Cancel Action</th> -->
				</tr>

				<c:forEach var="item" items="${appointments}" begin="0" end="10"
					varStatus="srno">
					<tr>
						<td>${srno.index+1 }</td>

						<td><c:forEach var="singlePt" items="${userList}">
								<c:if test="${singlePt.ptId==item.ptId}"> ${singlePt.ptName} </c:if>
							</c:forEach></td>

						<td><c:if test="${item.aptStatus==true}">
								<b>Booked</b>
							</c:if> <c:if test="${item.aptStatus==false}">
								<b>cancelled</b>
							</c:if></td>


						<td>${item.aptDate}</td>


						<td>
							<form action="AptCloseByDr" method="get">
								<input type="hidden" name="ptid" value="${item.ptId}" readonly />
								<input type="hidden" name="drid" value="${doctor.drId}" readonly />
								<button class="btn btn-sm btn-light" type="submit">
									<i class="fas fa-times-circle icon-cog fa-lg"></i> <b>Close<b></b>
								</button>
							</form>
						</td>

						<%--   <td>
               <form action="AptCancelByDr" method="post">
                 <input type="hidden" name="ptid" value="${item.ptId}" readonly />														
				<input type="hidden" name="drid" value="${doctor.drId}" readonly />								
				<button class="btn btn-sm btn-light" type="submit">Cancel</button>							    
	             </form>              
               </td> 
                          --%>
					</tr>

				</c:forEach>

			</table>
		</div>
	</div>


	<c:if test="${allPatAptlist==1 }">

		<div class="row">

			<div class=" mx-auto">
				<center>
					<h4 style="color: grey">Patients</h4>
				</center>
				<table class="table table-striped border-dark table-bordered bg-table">
					<tr>
						<th>Sr.No</th>
						<th>Patient Id</th>
						<th>Status</th>
						<th>Appointment Date</th>
					</tr>

					<c:forEach var="item" items="${AllpatAptlist}" begin="0" end="10"
						varStatus="srno">
						<tr>
							<td>${srno.index+1 }</td>
							<td>${item.ptId}</td>
							<td>${item.aptStatus}</td>
							<td>${item.aptDate}</td>

						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</c:if>

</body>
</html>