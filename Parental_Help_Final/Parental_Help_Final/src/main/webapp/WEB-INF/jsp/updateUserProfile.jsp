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

<style>
.content {
	max-width: 480px;
	margin: auto;
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


<body class="bg-image">
<!-- <div class="bg-image"> -->
<br>
<br>
<br>
<br>
	<div class=" row">
		
		<div class="mx-auto">

			<br> <br>
			<c:if test="${u==1 }">
				<div class=" alert alert-success mt-2">Profile Updated
					Successfully</div>

			</c:if>

			<c:if test="${u==0 }">
				<div class="alert alert-warning">Profile Update Failed</div>
			</c:if>

			<c:if test="${u==3 }">
				<div class="alert alert-success">Unable to update</div>
			</c:if>
		</div>
	</div>

	<div class="content">
		<c:if test="${u==2 || u==1 || u==0 }">

			<form action="upd-user" method="get" class="bg-table"
				style="border: 2px solid black; background-color: white; padding: 20px; border-radius: 20px">

				<div>
					<center>
						<h6>
							<i class="fas fa-user-edit fa-lg"> Update profile</i>
						</h6>
					</center>
				</div>
				<div>
					<input name="id" type="hidden" value="${user.ptId}" readonly />
				</div>
				<div>
					<input type="hidden" name="username" value="${user.ptUsername}"
						readonly />
				</div>
				<div>
					<input type="hidden" name="password" value="${user.ptPassword}"
						readonly />
				</div>
				<div class="mt-1">
					Name:<input name="ptName" class="form-control form-control-md"
						type="text" value="${user.ptName}" pattern="[A-Za-z\s]{1,40}"
						required autocomplete="off" title="only characters are allowed" />
				</div>
				<div class="mt-1">
					Age:<input name="age" class="form-control form-control-md"
						type="number" value="${user.ptAge}" Pattern="[0-9]{1,2}" required
						autocomplete="off" title="entered age not valid" />
				</div>
				<div class="mt-1">
					Email: <input name="ptGmail" class="form-control form-control-md"
						type="email" value="${user.ptGmail}"
						pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{3}$" required
						autocomplete="off" title="enter valid email" />
				</div>
				<div class="mt-1">
					Mobile: <input name="ptMobile" class="form-control form-control-md"
						type="text" value="${user.ptMobile}" Pattern="[789][0-9]{9}"
						required autocomplete="off" title="enter valid mobile no" />
				</div>

				<div class="mt-1">



					UserName: <input class="form-control form-control-md" type="text"
						name="ptUsername" value="${user.ptUsername}"
						pattern="[A-Za-z0-9]{1,15}" required autocomplete="off"
						title="Username only contains characters & numbers.." />
				</div>
				<%-- <div class="mt-1">
							Password<input class="form-control form-control-md"
								type="password" name="ptPassword" value="${user.ptPassword}"
								pattern="[A-Za-z0-9]{1,10}" required autocomplete="off"
								title="Password only contains characters & numbers.." />
						</div> --%>
			<!-- 	<div class="mt-2">
					<input class="btn btn-secondary btn-block" type="submit"
						value="Save" />
				</div>
				<div class="mt-2">
					<input class="btn btn-secondary btn-block" type="reset"
						value="Cancel" />
				</div> -->
				
				<div class="form-row mt-3">
					<button type="submit"
						class="btn btn-outline-secondary btn-sm col-md-6">Save</button>
					<button type="reset"
						class="btn btn-outline-secondary btn-sm col-md-6">Reset</button>
				</div>
			</form>
			


		</c:if>

	</div>


</div>
</body>
</html>