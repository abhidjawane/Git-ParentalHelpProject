<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ include file="common-css-js.jsp"%>
<jsp:include page="AddDetails.jsp"></jsp:include>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style>
.content {
	max-width: 480px;
	margin: auto;
}

.bg-image {
	/* The image used */
	background-image:
		url("https://images.unsplash.com/photo-1615631648086-325025c9e51e?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80");
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	max-width: 100%;
	height: auto;
	/* Add the blur effect */
	background-color: transparent;
}

.bg-table {
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
<body class="bg-image">

	<br>
	<br>
	<br>
	<br>
	<div class="container-fluid"></div>

	<div class="content">
		<div class="babyname">
			<spring:url value="/savevaccination" var="saveURL" />



			<form:form modelAttribute="articleForm" method="get" class="bg-table"
				action="${saveURL }" cssClass="form"
				style="border: 2px solid black; background-color: white; padding: 20px; border-radius: 20px">
				<form:hidden path="id" />
				<center>
					<h2>
						<i class="fas fa-prescription-bottle-alt"> Vaccination Form</i>
					</h2>
				</center>
				<div class="form-row">
					<div class="form-group col-md-12 mb-3">
						<label>Vaccination Name</label>
						<form:input path="vaccination_name" cssClass="form-control"
							pattern="[A-Za-z\s]{1,40}" id="vaccination_name"
							title="Only characters are allowed.." />
					</div>
					<div class="form-row">
						<div class="col-md-6 mb-3">
							<label>Vaccination Age Group</label>
							<form:input path="age_group" cssClass="form-control"
								Pattern="[0-9]{1,2}" id="age_group" title="Age must be number.." />

						</div>
						<br>



						<div class="form-group col-md-6">
							<label>Description</label>
							<form:input path="vaccination_description"
								cssClass="form-control" id="vaccination_description" />
						</div>
					</div>



					<div class="form-row">
						<div class="form-group col-md-6">
							<label>Location</label>
							<form:input path="vaccination_camp_place" cssClass="form-control"
								id="vaccination_camp_place" />
						</div>
						<div class="form-group col-md-6">
							<label>Camp By</label>
							<form:input path="vaccination_camp_by" cssClass="form-control"
								id="vaccination_camp_by" />
						</div>
					</div>
				</div>
				<div class="form-row">
					<div class="col-md-3 mr-3 mb-3">
						<label> Date</label>
						<td><input type="date" id="vaccination_date"
							name="vaccination_date" cssClass="form-control">
					</div>

					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

					<div class="col-md-3 mr-3 mb-3">
						<label> Time</label>
						<td><input type="time" id="vaccination_time"
							name="vaccination_time" cssClass="form-control">
					</div>

				</div>

				<div class="form-row mt-3">
					<button type="submit"
						class="btn btn-outline-secondary btn-sm col-md-6">Save</button>
					</a> <a href='vaccinationlist'
						class="btn btn-outline-secondary btn-sm col-md-6" role='button'
						id="button">Back</a>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>

