<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<script src="http://code.jquery.com/jquery-1.10.1.js"></script>
	<script type="text/javascript" src="resources/js/login.js?129" charset="UTF-8"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="resources/css/foundID.css">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이디 찾기</title>
</head>
<body>
	<div id="foundID">
		${member.member_name} 	회원님의 아이디는 <b> ${member.member_id} <b> 입니다.<br>
		<input type="button" id="changeid" onclick="go_login()" value="로그인 하기" >
		<input type="button" id="changeid" onclick="change_pw()" value="비밀번호 찾기" >
	</div>
</body>
</html>