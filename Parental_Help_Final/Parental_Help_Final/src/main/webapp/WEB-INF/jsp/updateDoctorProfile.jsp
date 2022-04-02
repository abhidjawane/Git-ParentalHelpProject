<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="common-css-js.jsp"%>
<jsp:include page="common-header-doctor.jsp"></jsp:include>

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
	response.sendRedirect("http://localhost:8080/Doctregister");
	
	
	return;
}
%> 
<script>
    history.forward();
</script>

<body class="bg-image">


		<br><br><br><br>
		<div class="content">

			<div class="mx-auto">

				<c:if test="${drprofile==1 }">
					<div class="alert alert-success">doctor Profile Updated
						Successfully</div>
				</c:if>

				<c:if test="${drprofile==0 }">
					<div class="alert alert-warning">doctor Profile Updatation
						Failed</div>
				</c:if>


				<c:if test="${drprofile==2 }">

					<form action="updateDr" method="get" class=" bg-table"
						style="border: 2px solid black; background-color: white; padding: 20px; border-radius: 20px">

						<div class="mt-2">
							<center>
								<h6>
									<i class="fas fa-user-edit fa-lg"> Update Doctor Profile</i>
								</h6>
						</div>
						</center>
						<br>


						
						<div>
							<input name="id" type="hidden" value="${doctor.drId}" readonly />
						</div>





						<%-- <div class="form-group row"> 
					<label for="drname" class="col-sm-3 col-form-label"> Doctor Name</label> 
					     
					      <div class="col-sm-8"> <input name="drName" class="form-control form-control-sm"
							type="text" value="${drOldInfo.drName}"  pattern="[A-Za-z\s]{1,40}" required autocomplete="off" title="only characters are allowed"/>
							</div>
					</div> --%>


						<div class="form-group">
							Doctor Name <input name="drName"
								class="form-control form-control-sm" type="text"
								value="${doctor.drName}" pattern="[A-Za-z\s]{1,40}" required
								autocomplete="off" title="only characters are allowed" />
						</div>


						<div class="form-group">
							Specification <input name="drSpec"
								class="form-control form-control-sm" type="text"
								value="${doctor.drSpec}" pattern="[A-Za-z\s]{1,40}" required
								autocomplete="off" title="only characters are allowed" />
						</div>

						<div class="form-group">
							Email <input name="drEmail" class="form-control form-control-sm"
								type="email" value="${doctor.drEmail}"
								pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{3}$" required
								autocomplete="off" title="enter valid email" />
						</div>
						<div class="form-group">
							Mobile <input name="drMobile"
								class="form-control form-control-sm" type="number"
								value="${doctor.drMobile}" Pattern= "[789][0-9]{9}" required
								autocomplete="off" title="enter valid mobile no" />
						</div>
						<div class="form-group">
							UserName <input name="drUsername"
								class="form-control form-control-sm" type="text"
								value="${doctor.drUsername}" pattern="[A-Za-z0-9]{1,15}"
								required autocomplete="off"
								title="only 15 characters & numbers allowed" />
						</div>
					
						<!-- <div class="mt-2">
							<input class="btn btn-secondary btn-block" type="submit"
								value="Save" />
						</div>
						<div class="mt-2 mb-3">
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