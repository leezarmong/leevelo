<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script src="http://code.jquery.com/jquery-1.10.1.js"></script>
	<script type="text/javascript" src="resources/js/login.js?12" charset="UTF-8"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="resources/css/foundPW.css">
<title>비밀번호 변경</title>
</head>
<body>
	<label id="foundPW">
		아이디: <b> ${member.member_id}<b><br><br>
		<input type="password" id="member_password" placeholder="비밀번호"><br>
		<input type="password" id="member_repassword" placeholder="비밀번호재입력"><br>
		<label id="checkPasswd"></label>
		<input type="button" id="changepw" value="비밀번호 변경" onclick="changePw()" >
		<input type="hidden" id="member_id" value="${member.member_id}">
		<input type="hidden" id="member_name" value="${member.member_name}">
	</label>
</body>
</html>

