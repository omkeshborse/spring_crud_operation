<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f5f5f5;
	padding: 20px;
}

.container {
	max-width: 800px;
	margin: 0 auto;
	background-color: #fff;
	border-radius: 8px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	padding: 20px;
}

.title {
	font-size: 24px;
	margin-bottom: 20px;
	color: #333;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-bottom: 20px;
}

table th, table td {
	padding: 12px;
	border: 1px solid #ddd;
	text-align: left;
}

table th {
	background-color: #f2f2f2;
	color: #333;
}

table tr:nth-child(even) {
	background-color: #f9f9f9;
}

table tr:hover {
	background-color: #f1f1f1;
}

.btn {
	display: inline-block;
	padding: 10px 20px;
	font-size: 16px;
	color: #fff;
	background-color: #007bff;
	border: none;
	border-radius: 5px;
	text-decoration: none;
	text-align: center;
}

.btn:hover {
	background-color: #0056b3;
}

.btn-back {
	background-color: #6c757d;
}

.btn-back:hover {
	background-color: #5a6268;
}
</style>
</head>
<body>
	<div class="container">
		<div class="title">User Information</div>

		<table>
			<tr>
				<th>ID</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Password</th>
				<th>Gender</th>
				<th>Email</th>
				<th>Phone Number</th>
				<th>Postal Code</th>
			</tr>
			<tr>
				<c:forEach items="${singlePersonData}" var="e">
					<td>${e.id}</td>
					<td>${e.first_name}</td>
					<td>${e.last_name}</td>
					<td>${e.password}</td>
					<td>${e.gender}</td>
					<td>${e.email}</td>
					<td>${e.phone_number}</td>
					<td>${e.postal_code}</td>
				</c:forEach>
			</tr>
		</table>

		<a href="/CRUD_opration_spring/welcome" class="btn btn-back">Back to List</a>
	</div>

</body>
</html>