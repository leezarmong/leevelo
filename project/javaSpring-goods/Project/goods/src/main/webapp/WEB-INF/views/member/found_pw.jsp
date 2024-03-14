<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	  <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
        <!-- jquery -->
        
	 <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <!-- swal -->
    
    <script type="text/javascript" src="resources/js/login.js" charset="UTF-8"></script>
    <!-- js -->
	
<title>비밀번호 변경</title>
</head>
<body>
	<label id="foundPW">
		아이디: <b> ${member.member_id}<b><br><br>
		<input type="password" id="member_pwd" placeholder="비밀번호"><br>
		<input type="password" id="member_pwdTwo" placeholder="비밀번호재입력"><br>
		<label id="check_password"></label>
		<input type="button" id="changepw" value="비밀번호 변경" onclick="changePw()" >
		<input type="hidden" id="member_id" value="${member.member_id}">
		<input type="hidden" id="member_name" value="${member.member_name}">
	</label>
</body>
</html>

