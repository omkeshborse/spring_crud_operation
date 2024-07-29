<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
@import
	url('https://fonts.googleapis.com/css?family=Montserrat:400,700&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Montserrat', sans-serif;
}

body {
	background: #fec107;
	padding: 0 10px;
}

.wrapper {
	max-width: 500px;
	width: 100%;
	background: #fff;
	margin: 50px auto;
	box-shadow: 2px 2px 4px rgba(0, 0, 0, 0.125);
	padding: 30px;
}

.wrapper .title {
	font-size: 24px;
	font-weight: 700;
	margin-bottom: 25px;
	color: #fec107;
	text-transform: uppercase;
	text-align: center;
}

.wrapper .form {
	width: 100%;
}

.wrapper .form .inputfield {
	margin-bottom: 15px;
	display: flex;
	align-items: center;
}

.wrapper .form .inputfield label {
	width: 200px;
	color: #757575;
	margin-right: 10px;
	font-size: 14px;
}

.wrapper .form .inputfield .input, .wrapper .form .inputfield .textarea
	{
	width: 100%;
	outline: none;
	border: 1px solid #d5dbd9;
	font-size: 15px;
	padding: 8px 10px;
	border-radius: 3px;
	transition: all 0.3s ease;
}

.wrapper .form .inputfield .textarea {
	width: 100%;
	height: 125px;
	resize: none;
}

.wrapper .form .inputfield .custom_select {
	position: relative;
	width: 100%;
	height: 37px;
}

.wrapper .form .inputfield .custom_select:before {
	content: "";
	position: absolute;
	top: 12px;
	right: 10px;
	border: 8px solid;
	border-color: #d5dbd9 transparent transparent transparent;
	pointer-events: none;
}

.wrapper .form .inputfield .custom_select select {
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	outline: none;
	width: 100%;
	height: 100%;
	border: 0px;
	padding: 8px 10px;
	font-size: 15px;
	border: 1px solid #d5dbd9;
	border-radius: 3px;
}

.wrapper .form .inputfield .input:focus, .wrapper .form .inputfield .textarea:focus,
	.wrapper .form .inputfield .custom_select select:focus {
	border: 1px solid #fec107;
}

.wrapper .form .inputfield p {
	font-size: 14px;
	color: #757575;
}

.wrapper .form .inputfield .check {
	width: 15px;
	height: 15px;
	position: relative;
	display: block;
	cursor: pointer;
}

.wrapper .form .inputfield .check input[type="checkbox"] {
	position: absolute;
	top: 0;
	left: 0;
	opacity: 0;
}

.wrapper .form .inputfield .check .checkmark {
	width: 15px;
	height: 15px;
	border: 1px solid #fec107;
	display: block;
	position: relative;
}

.wrapper .form .inputfield .check .checkmark:before {
	content: "";
	position: absolute;
	top: 1px;
	left: 2px;
	width: 5px;
	height: 2px;
	border: 2px solid;
	border-color: transparent transparent #fff #fff;
	transform: rotate(-45deg);
	display: none;
}

.wrapper .form .inputfield .check input[type="checkbox"]:checked ~
	.checkmark {
	background: #fec107;
}

.wrapper .form .inputfield .check input[type="checkbox"]:checked ~
	.checkmark:before {
	display: block;
}

.wrapper .form .inputfield .btn {
	width: 100%;
	padding: 8px 10px;
	font-size: 15px;
	border: 0px;
	background: #fec107;
	color: #fff;
	cursor: pointer;
	border-radius: 3px;
	outline: none;
}

.wrapper .form .inputfield .btn:hover {
	background: #ffd658;
}

.wrapper .form .inputfield:last-child {
	margin-bottom: 0;
}

@media ( max-width :420px) {
	.wrapper .form .inputfield {
		flex-direction: column;
		align-items: flex-start;
	}
	.wrapper .form .inputfield label {
		margin-bottom: 5px;
	}
	.wrapper .form .inputfield.terms {
		flex-direction: row;
	}
}
</style>
</head>
<body>
	<c:forEach items="${singleRecord}" var="e">
		<form action="updateuserinfo/${e.id}" method="post">
			<div class="wrapper">
				<div class="title">Update information Form</div>
				<div class="form">
					<!--<input type="hidden" value="${e.id}" name="id" class="input">-->
					<div class="inputfield">
						<label>First Name</label> <input type="text"
							value="${e.first_name}" name="first_name" class="input">
					</div>
					<div class="inputfield">
						<label>Last Name</label> <input type="text" value="${e.last_name}"
							name="last_name" class="input">
					</div>
					<div class="inputfield">
						<label>Password</label> <input type="text" value="${e.password}"
							name="password" class="input">
					</div>
					<div class="inputfield">
						<label>Confirm Password</label> <input type="text"
							value="${e.password}" name="confirm_password" class="input">
					</div>
					<div class="inputfield">
						<label>Gender</label>
						<div class="custom_select">
							<select name="gender">
								<option value="male">Male</option>
								<option value="female">Female</option>
								<option value="other">Other</option>
							</select>
						</div>
					</div>
					<div class="inputfield">
						<label>Email Address</label> <input type="text"
							value="${e.email }" name="email" class="input"
							disabled="disabled">
					</div>
					<div class="inputfield">
						<label>Phone Number</label> <input type="text"
							value="${e.phone_number}" name="phone_number" class="input">
					</div>

					<div class="inputfield">
						<label>Postal Code</label> <input type="text"
							value="${e.postal_code}" name="postal_code" class="input">
					</div>

					<div class="inputfield">
						<input type="submit" value="Update" class="btn">
					</div>
				</div>
			</div>
		</form>
	</c:forEach>
</body>
</html>

