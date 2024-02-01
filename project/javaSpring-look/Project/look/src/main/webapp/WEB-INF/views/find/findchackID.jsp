<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- jquesy -->
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>

<!-- swal -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<!-- css -->
<link rel="stylesheet" href="resources/css/foundID.css">

<!-- login.js -->
<script src="resources/js/login.js" charset="UTF-8"></script>

<title>본인 확인</title>
</head>
<body>

<br>
<br>
<br>
<br>

	<div id=changePT>


	<div style="margin-left: 25%"><h1>아이디:  ${member.member_id}  입니다.</h1></div><br><br>
	
		<input type="button" id="changepw" value="로그인" onclick="offID()" >
		
	</div>
	
	


</body>
</html>