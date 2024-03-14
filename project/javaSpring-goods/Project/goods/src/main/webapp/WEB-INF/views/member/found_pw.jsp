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

<!-- login.js -->

<!-- css -->
<!-- <link rel="stylesheet" href="resources/css/foundPW2.css"> -->

<title>본인 확인</title>
</head>
<body>

<br>
<br>
<br>
<br>

	<div id=changePT>


<div style="margin-left: 25%"><h1>아이디:  ${member.member_id}</h1></div><br><br>


		<input type="password" id="member_pwd" placeholder="비밀번호"><br><br>
		<input type="password" id="member_password_two" placeholder="비밀번호재입력"><br><br>
		<label id="check_password"></label>
		<input type="button" id="changepw" value="비밀번호 변경" onclick="changePwTwo()" >
		<input type="hidden" id="member_id" value="${member.member_id}">
		<input type="hidden" id="member_name" value="${member.member_name}">

	</div>
	
<!-- 엔터 스크립트 -->
<script type="text/javascript">
$("#changePT").keypress(function(e){
	if(e.keyCode == 13) {
		changePwTwo();
	}
});



function changePwTwo(){
	var member_id = $("#member_id").val();
	var member_name = $("#member_name").val();
	var member_pwd=$("#member_pwd").val();
	var member_password_two=$("#member_password_two").val();
	if(!member_pwd || !member_password_two){
		swal("","비밀번호를 입력해 주세요.","warning");
	}else if(member_pwd != member_password_two){
		swal("","비밀번호를 일치시켜 주세요.","warning");
	}else{
		$.ajax({
			type : "POST",
			url : "cpw",
			data : {
				"member_id" : member_id,
				"member_name" : member_name,
				"member_pwd" : member_pwd
			},
			success : function(data) {
				swal("","비밀번호가 변경되었습니다","success")
				.then(function(isConfirm){
					$.ajax({
						type : "POST",
						url : "emptyss",
						success : function(data) {
							self.close();
							 //window.close(); // 팝업 창 닫기
							opener.top.location = "login";	
						}
					});
				});
			}
		});
	}	
}



//비밀번호 체크
$(document).ready(function() {
	   

	   $("#member_password_two").keyup(function() {
		   //.keyup(function()) = 상황(조건)이 됐을때 이벤트를 바로 발생시켜주는것.
	      var check_password = $("#check_password");
	      
	      if ($("#member_pwd").val() == "" || $("#member_password_two").val() == "") {
	    	  check_password.css("color", "red");
	    	  check_password.text("필수정보입니다.");
	    	  
	      } else if ($("#member_pwd").val() != $("#member_password_two").val()) {
	    	  
	         check_password.text("패스워드가 동일하지 않습니다.");
	         check_password.css("color", "red");
	         
	      } else {    	
	    	  
	         check_password.text("패스워드가 동일합니다.");
	         check_password.css("color", "green");
	      }
	   });
	   
	});
</script>


</body>
</html>