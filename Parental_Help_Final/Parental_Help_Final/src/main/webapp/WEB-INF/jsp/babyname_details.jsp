<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="common-css-js.jsp"%>
<jsp:include page="common-header.jsp"></jsp:include>
<html>
<head>
<style>
seachbar {
	border-style: solid;
	border-color: #bbbbbb; /* grey */
}

.bg-image {
	/* The image used */
	background-image:
		url("https://images.unsplash.com/photo-1581544291234-31340be4b1b8?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80");
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
<body class="bg-image">

	<br>
	<br>
	<br>
	<br>




	<div class="container">
		<center>
			<h2>
				<i class="fas fa-baby"> Baby Names</i>
			</h2>

			<form th:action="@{/}">
				<input type="text" name="keyword" id="keyword" size="50"
					class="seachbar" placeholder="Search" th:value="${keyword}"
					required /> &nbsp;
				<button class="text-primary">
					<i class="fas fa-search"> Search</i>
				</button>
				&nbsp;
				<!-- <button 
					href="babynamedetails"><i class="fas fa-sync-alt"> Clear</i> </button>
 -->
				<button type="button">
					<a href='babynamedetails' role='button' id="button" type="button"><i class="fas fa-sync-alt"> Clear</i></a>
				</button>
			</form>

		</center>
		<br>


	</div>

	<div class="container" id="babaydetails">
		<table class="table table-striped table-bordered bg-table">
			<thead>

				<th scope="row"><i class="far fa-list-alt "><b>
							Baby Names</b> </i></th>
				<th scope="row"><i class="fas fa-book "> Meaning</i></th>
				<th scope="row"><i class="fas fa-child "> Gender</i></th>
			</thead>
			<tbody>
				<c:forEach items="${babynames}" var="article">
					<tr>

						<td>${article.name }</td>
						<td>${article.meaning }</td>
						<td>${article.sex }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

	</div>
	</div>

</body>
</html>