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



<body class="bg-image ">
	<br>
	<br>
	<br>
	<br>

	
	<div class="container">
		<center>
			<h2>
				<i style="background-color: white;" class="fas fa-baby-carriage"> BabySitter</i>
			</h2>
			<!-- <form th:action="@{/}">
				<input type="text" name="keyword" id="keyword" size="50" 
					class="seachbar " placeholder="Search" th:value="${keyword}"
					required /> &nbsp;
				<button class="text-primary">
					<i class="fas fa-search"> Search</i>
				</button>
				&nbsp;
				
				<button type="button">
					<a href='babysiterdetails' role='button' id="button" type="button"><i class="fas fa-sync-alt"> Clear</i></a>
				</button>
		</center>
		</form> -->
		<br>



		<div class="container bg-table" id="babaydetails" >
			<table class="table table-striped table-bordered">
				<thead>

					<th scope="row"><i class="fas fa-baby-carriage ">
							BabySitter Name</i></th>
					<th scope="row"><i class="fas fa-home "> Address</i></th>
					<th scope="row"><i class="fas fa-phone-square-alt ">
							Mobile</i></th>
					<th scope="row"><i class="fas fa-calendar-week ">
							Year Of Experience</i></th>
					<th scope="row"><i class="fas fa-rupee-sign "> Fees</i></th>

				</thead>
				<tbody>
					<c:forEach items="${Poollist}" var="article">
						<tr>

							<td>${article.name }</td>
							<td>${article.address }</td>
							<td>${article.mobile }</td>
							<td>${article.years }</td>
							<td>${article.fees }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>