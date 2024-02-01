<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

<title>아이디 조회</title>

</head>

	<body>
		<label id="foundID">
		
		<!-- 아이디 는 알고있고 비밀번호를 찾아야 하는 경우 . -->
		<!-- 본인 아이디 확인 후 이름 을 확인 하고.  -->
		<h1>본인 확인</h1><br><br>
			
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
			<br><br>
			
			<input type="text" id="member_name" placeholder="이름 입력"><br><br><br>
			
			<input type="button" id="changepw" value="본인 확인" onclick="chackId()" >
			
			
			<input type="hidden" id="member_email" value="${member.member_email}">
			<input type="hidden" id="member_name" value="${member.member_name}">
			
	
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

