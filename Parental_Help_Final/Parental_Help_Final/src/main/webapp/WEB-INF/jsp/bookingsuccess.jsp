<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="common-css-js.jsp"%>

<%@ include file="common-header-user.jsp"%>
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
	response.sendRedirect("http://localhost:8080/register");
	return;
}
%> 
<script>
    history.forward();
</script>

<body>
<br><br><br>
<center>
<div class=" alert alert-success mt-2">Booking Successful...!!</div>
</center>
</body>
</html>