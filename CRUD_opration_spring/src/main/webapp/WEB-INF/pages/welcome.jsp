<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"
	integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	crossorigin="anonymous"></script>
</head>
<body>
	<h1>welcome home</h1>
	<table class="table">
		<tr>
			<th>ID</th>
			<th>first_name</th>
			<th>last_name</th>
			<th>password</th>
			<th>gender</th>
			<th>email</th>
			<th>phone_number</th>
			<th>postal_code</th>
			<th>action </th>
		</tr>
		<c:forEach items="${kk}" var="e">
			<tr>
				<td>${e.id}</td>
				<td>${e.first_name}</td>
				<td>${e.last_name}</td>
				<td>${e.password}</td>
				<td>${e.gender}</td>
				<td>${e.email}</td>
				<td>${e.phone_number}</td>
				<td>${e.postal_code}</td>
				<td>
				 <a  class="btn btn-primary" href="editdata/${e.id}">Edit </a> |
				 <a class="btn btn-info" href="displayData/${e.id}">Details</a>| 
				 <a class="btn btn-danger" href="deleteData/${e.id}">delete</a> 
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>