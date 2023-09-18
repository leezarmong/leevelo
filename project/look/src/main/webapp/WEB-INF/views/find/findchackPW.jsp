<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- jquesy -->
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<!-- login.js -->
<script src="resources/js/login.js" charset="UTF-8"></script>

<!-- css -->
<link rel="stylesheet" href="resources/css/foundPW2.css">

<title>본인 확인</title>
</head>
<body>

<br>
<br>
<br>
<br>

<div style="margin-left: 25%"><h1>아이디:  ${member.member_id}</h1></div><br><br>


		<input type="password" id="member_password" placeholder="비밀번호"><br><br>
		<input type="password" id="member_password_two" placeholder="비밀번호재입력"><br><br>
		<label id="check_password"></label>
		<input type="button" id="changepw" value="비밀번호 변경" onclick="changePwTwo()" >
		<input type="hidden" id="member_id" value="${member.member_id}">
		<input type="hidden" id="member_name" value="${member.member_name}">

</body>
</html>