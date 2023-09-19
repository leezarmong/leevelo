<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login page</title>


<!-- jquery -->
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>

<!-- login.js -->
<script src="resources/js/login.js" charset="UTF-8"></script>

<!-- userlogin.css -->
<link rel="stylesheet" href="resources/css/userlogin.css">

</head>


<body>

<div id="login" style="margin-top: 200px">
	<div class="login-form">
        <h1>Login</h1>
       
			<form>
	          <label for="username">Username:</label>
	          <input type="text" id="member_id" placeholder="아이디" name="username" required>
	          
	          <label for="password">Password:</label>
	          <input type="password" id="member_password" placeholder="비밀번호" name="password" required>
	          
	          <input type="button" value="로그인" onclick="login()" style="cursor: pointer;">

             <input type="button" value="아이디 찾기" onclick="findID()" style="cursor: pointer; width: 49%;">
             <input type="button" value="비밀번호 찾기" onclick="findPW()" style="cursor: pointer; width: 49%;">
			</form>
	</div>


</div>

<!-- 엔터 스크립트 -->
<script type="text/javascript">
$("#login").keypress(function(e){
	if(e.keyCode == 13) {
		login();
	}
});
</script>

</body>
</html>