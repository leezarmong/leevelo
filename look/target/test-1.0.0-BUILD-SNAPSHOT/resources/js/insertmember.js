

//회원가입
function insert(){
	var member_id = $("#member_id").val();
	var member_password = $("#member_password").val();
	var member_name = $("#member_name").val();
	var member_email = $("#member_email").val();
	
	if(!$("#member_id").val() || !$("#member_password").val() || !$("#member_name").val() || !$("#member_email").val())
	
	{
		alert("필수항목이 비어있습니다. 입력해주세요.");		
	}else{
		$.ajax({
			type : "POST",
			url : "endsignup",
			data : {
				"member_id" : member_id,
				"member_password" :member_password,
				"member_name" : member_name,
				"member_email" : member_email
			},
			success : function(data) {
				alert("회원가입 완료..!");
				window.location.href="main";
			}
		});
	}
}


//아이디 중복체크
//jackson-databind <dependency> 추가 후 1111 오류 없어짐......
//Jackson 특징 : Stream 형식으로 데이터를 분석/생성하여 성능이 좋다
function checkID() {
	var member_id = $("#member_id").val();
	var checkid = $("#checkid");
	if (!member_id) {
		alert("아이디를 입력해주세요.");
	} else {
		$.ajax({
			type : "POST",
			url : "chackid",
			data : {
				"member_id" : member_id
			},
			success : function(data) {
				if (data == 0) {
					//$("#member_id").attr("disabled", true);
					//.attr("disabled", true); = true 일 경우 사용 못하게 막아주는 역할
					checkid.css("color", "green");
					checkid.text("사용 가능한 아이디입니다.");
					
				} else {
					checkid.css("color", "red");
					checkid.text("이미 존재하는 아이디입니다.");
					
				} 
			}
		});
	}
}


//비밀번호 체크
$(document).ready(function() {
	   

	   $("#member_password_two").keyup(function() {
		   //.keyup(function()) = 상황(조건)이 됐을때 이벤트를 바로 발생시켜주는것.
	      var check_password = $("#check_password");
	      
	      if ($("#member_password").val() == "" || $("#member_password_two").val() == "") {
	    	  check_password.css("color", "red");
	    	  check_password.text("필수정보입니다.");
	    	  
	      } else if ($("#member_password").val() != $("#member_password_two").val()) {
	    	  
	         check_password.text("패스워드가 동일하지 않습니다.");
	         check_password.css("color", "red");
	         
	      } else {    	
	    	  
	         check_password.text("패스워드가 동일합니다.");
	         check_password.css("color", "green");
	      }
	   });
	   
	})
	
	
	