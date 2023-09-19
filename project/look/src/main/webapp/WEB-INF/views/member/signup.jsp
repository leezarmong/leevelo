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
			<div class="email-container">
			    <input type="email" class="email-input" id="member_email" placeholder="email" required="required">@
			    <input type="email" class="email-input" id="member_email2" disabled value="naver.com" required>
			</div>

			<select id="member_email3">
			    <option value="" selected>::선택하세요::</option>
			    <option value="naver.com">naver.com</option>
			    <option value="gmail.com">gmail.com</option>
			    <option value="hanmail.net">hanmail.net</option>
			    <option value="nate.com">nate.com</option>
			    <option value="1">직접입력</option>
			</select>
			
			<script type="text/javascript">  
			$('#member_email3').change(function(){
				$("#member_email3 option:selected").each(function () {
					if($(this).val()== '1'){						//직접입력일 경우
						$("#member_email2").val('');					//값 초기화
						$("#member_email2").attr("disabled",false);	//활성화
					}else{											//직접입력이 아닐경우
						$("#member_email2").val($(this).text());		//선택값 입력
						$("#member_email2").attr("disabled",true);	//비활성화
					}
				});
			});
			</script>		
						
			
			<input type="button" value="회원가입" onclick="insert()">
			<input type="button" value="취소" onclick="location.href='main'" style="background-color: rgb(255, 92, 92);">
		
		</form>
	
	</div>


</body>
</html>