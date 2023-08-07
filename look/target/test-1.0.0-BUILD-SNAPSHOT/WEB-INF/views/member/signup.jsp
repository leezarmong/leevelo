<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Signup</title>

<!-- jquesy -->
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>

<!-- insertmember.js -->
<script src="resources/js/insertmember.js" charset="UTF-8"></script>

<!-- signup.css -->
<link rel="stylesheet" href="resources/css/signup.css">

</head>
<body>


	<div class="container" style="margin-top: 100px">
		
		<h1>Membership Signup</h1>
		
		<form action="#" method="post">
			<label for="name">Id</label>
			<input type="text" id="member_id" placeholder="id" required="required">
			<label id="checkid"></label><br>
			<input type="button" value="아이디 중복검사" onclick="checkID()">
			
			<label for="password">Password</label>
			<input type="password" id="member_password" placeholder="password" required="required">

			<label for="confirm-password">Confirm Password</label>
			<input type="password" id="member_password_two" placeholder="passwordCheck" required="required">
			<label id="check_password"></label><br>
			
			<label for="name">Name</label>
			<input type="text" id="member_name" placeholder="name" required="required">
			
			<label for="email">Email</label>
			<input type="email" id="member_email" placeholder="email" required="required">

			
			<input type="button" value="회원가입" onclick="insert()">
			<input type="button" value="취소" onclick="location.href='main'" style="background-color: rgb(255, 92, 92);">
		
		</form>
	
	</div>


</body>
</html>