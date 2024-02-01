<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
	<meta charset="UTF-8">

<!-- jquesy -->
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>

<!-- css -->
<link rel="stylesheet" href="resources/css/foundPW.css">

<!-- login.js -->
<script src="resources/js/login.js" charset="UTF-8"></script>

<title>비밀번호 변경</title>

</head>

	<body>
		<label id="foundPW">
		
		<!-- 아이디 는 알고있고 비밀번호를 찾아야 하는 경우 . -->
		<!-- 본인 아이디 확인 후 이름 을 확인 하고.  -->
		<h1>본인 확인</h1><br><br>
			
			<input type="text" id="member_id" placeholder="아이디 입력"><br><br>
			<input type="text" id="member_name" placeholder="이름 입력"><br><br><br>
			
			<input type="button" id="changepw" value="본인 확인" onclick="changePw()" >
			
			
			<input type="hidden" id="member_id" value="${member.member_id}">
			<input type="hidden" id="member_name" value="${member.member_name}">
	
		</label>
	
	</body>
	
<!-- 엔터 스크립트 -->
<script type="text/javascript">
$("#foundPW").keypress(function(e){
	if(e.keyCode == 13) {
		changePw();
	}
});
</script>
	
</html>

