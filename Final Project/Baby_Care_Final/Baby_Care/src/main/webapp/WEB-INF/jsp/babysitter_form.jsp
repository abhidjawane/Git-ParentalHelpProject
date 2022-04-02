<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ include file="common-css-js.jsp"%>
<%@ include file="AddDetails.jsp"%>

<html>
<head>
<title>BabySitter</title>

<style>
.content {
	max-width: 480px;
	margin: auto;
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
<div class="container"></div>

<body class="bg-image">
	<br>
	<br>
	<br>
	<br>
	<div class="content">
		<div class="babyname">
			<spring:url value="/savebabysitter" var="saveURL" />

			<form:form modelAttribute="articleForm" method="get" class=" bg-table"
				style="border: 2px solid black; background-color: white; padding: 20px; border-radius: 20px"
				action="${saveURL }" cssClass="form">
				<center>
					<h2>
						<i class="fas fa-baby-carriage"> BabySitter</i>
					</h2>
				</center>
				<form:hidden path="id" />
				<div class="form-group">
					<label>BabySitter Name</label>
					<form:input path="name" cssClass="form-control" id="name" pattern="[A-Za-z\s]{1,40}" title="Only characters are allowed.."/>
								
								
					
				</div>
				<div class="form-group">
					<label>Address</label>
					<form:input path="address" cssClass="form-control" id="address" />
				</div>
				<div class="form-group">
					<label>Year Of Experiance</label>
					<form:input path="years" cssClass="form-control" id="years" type="number"  Pattern= "[0-9]{1,2}" title="Age must be number.." />
				</div>
				<div class="form-group">
					<label>Mobile</label>
					<form:input path="mobile" cssClass="form-control" id="mobile"  Pattern= "[789][0-9]{9}" title="Mobile number should be 10 digit.." />
				</div>
				<div class="form-group">
					<label>Fees</label>
					<form:input path="fees" cssClass="form-control" id="fees" Pattern= "[0-9]{1,5}" title="Fees must be in number.." />
				</div>
				<!-- <center>
					<button type="submit" class="btn btn-secondary">Save</button>
					</a> <a href='list' class='btn btn-secondary' role='button' id="button">Back</a>
				</center> -->

				<div class="form-row mt-3">
					<button type="submit"
						class="btn btn-outline-secondary btn-sm col-md-6">Save</button>
					</a> <a href='list'
						class="btn btn-outline-secondary btn-sm col-md-6" role='button'
						id="button">Back</a>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>

