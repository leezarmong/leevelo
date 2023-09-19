<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
	<meta charset="UTF-8">

<!-- jquesy -->
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>

<!-- css -->
<link rel="stylesheet" href="resources/css/foundID.css">

<!-- login.js -->
<script src="resources/js/login.js" charset="UTF-8"></script>

<title>아이디 조회</title>

</head>

	<body>
		<label id="foundID">
		
		<!-- 아이디 는 알고있고 비밀번호를 찾아야 하는 경우 . -->
		<!-- 본인 아이디 확인 후 이름 을 확인 하고.  -->
		<h1>본인 확인</h1><br><br>
			
			<input type="text" id="member_name" placeholder="이메일 입력"><br><br>
			<input type="text" id="member_email" placeholder="이름 입력"><br><br><br>
			
			<input type="button" id="changepw" value="본인 확인" onclick="changeId()" >
			
			
			<input type="hidden" id="member_name" value="${member.member_name}">
			<input type="hidden" id="member_email" value="${member.member_email}">
	
		</label>
	
	</body>
	
<!-- 엔터 스크립트 -->
<script type="text/javascript">
$("#foundID").keypress(function(e){
	if(e.keyCode == 13) {
		changeId();
	}
});
</script>
	
</html>

