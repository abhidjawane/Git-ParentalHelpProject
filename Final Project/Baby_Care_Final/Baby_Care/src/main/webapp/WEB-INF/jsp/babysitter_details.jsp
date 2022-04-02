<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="common-css-js.jsp"%>
<jsp:include page="common-header.jsp"></jsp:include>
<html>
<style>
seachbar {
	border-style: solid;
	border-color: #bbbbbb; /* grey */
}
.bg-image {
	/* The image used */
	background-image:
		url("https://images.pexels.com/photos/1116050/pexels-photo-1116050.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260");
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	max-width: 100%;
	height: auto;
	/* Add the blur effect */
	background-color: transparent;
}

.bg-table{
	background-color: white;
	opacity: 0.9;
	/*  box-shadow:20px 20px 50px 10px black; */
}

</style>
<body class="bg-image ">
	<br>
	<br>
	<br>
	<br>

	<!--  
	<div class="container">
		<center>
			<h2>BabySitter</h2>
			<form th:action="@{/}">
				Filter: <input type="text"  name="keyword" id="keyword" size="50"
					th:value="${keyword}" required /> &nbsp; <input  class="btn btn-success" type="submit"
					value="Search" /> &nbsp;
				<button type="button" class="btn btn-default" >
					<a href='babysiterdetails' role='button' id="button" type="button" class="btn btn-success">Clear</a>
				</button>

			</form>
		</center>
-->
	<div class="container">
		<center>
			<h2>
				<i class="fas fa-baby-carriage"> BabySitter</i>
			</h2>
			<form th:action="@{/}">
				<input type="text" name="keyword" id="keyword" size="50" 
					class="seachbar " placeholder="Search" th:value="${keyword}"
					required /> &nbsp;
				<button class="text-primary">
					<i class="fas fa-search"> Search</i>
				</button>
				&nbsp;
				<!-- <button href='babysiterdetails'><i class="fas fa-sync-alt"> Clear</i></button> -->
				<!-- <button type="button" class="btn btn-default">
					<a href='babysiterdetails' role='button' id="button" type="button"
						class="btn btn-success"><i class="fas fa-sync-alt"> Clear</i></a>
				</button> -->
				
				<button type="button">
					<a href='babysiterdetails' role='button' id="button" type="button"><i class="fas fa-sync-alt"> Clear</i></a>
				</button>
		</center>
		</form>
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