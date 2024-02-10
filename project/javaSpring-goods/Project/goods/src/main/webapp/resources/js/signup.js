

//회원 가입 아이디 중복 체크
function checkID() {
	var member_id = $("#member_id").val();
	var idCheck = $("#idCheck");
	console.log(member_id);
	if (!member_id) {
		swal("","회원 정보를 다시 입력해 주세요.","warning");
	} else {
		$.ajax({
			type : "POST",
			url : "checkID",
			data : {
				"member_id" : member_id
			},
			success : function(data) {
				if (data == 0) {
					//$("#member_id").attr("disabled", true);
					//.attr("disabled", true); = true 일 경우 사용 못하게 막아주는 역할
					idCheck.css("color", "green");
					idCheck.text("사용 가능한 아이디입니다.");
					
				} else {
					idCheck.css("color", "red");
					idCheck.text("이미 존재하는 아이디입니다.");
					
				} 
			}
		});
	}
}




$(document).ready(function(){
  
  //form 로그인 버튼
  $("#loginBtn").click(function(){
	 $.ajax({
		 type : 'post',
		 url : 	'checkMember',
		 data : $("#loginForm").serialize(),
		 success : function(data){
			 if(data == 0){
				 swal("","회원 정보를 다시 입력해 주세요.","warning");
					location.href="login";
			 }else{
					$.ajax({
						type : 'post',
						url : 'login',
						data : $('#loginForm').serialize(),
						success : function(){
							swal("","로그인 완료!","success");
							location.href = 'goodsmall';
						}
					});
			 }
		 }
	 }); 
  });
  
});




//비밀번호 체크
$(document).ready(function() {
	   

	   $("#member_pwdTwo").keyup(function() {
		   //.keyup(function()) = 상황(조건)이 됐을때 이벤트를 바로 발생시켜주는것.
	      var check_password = $("#check_password");
	      
	      if ($("#member_pwd").val() == "" || $("#member_pwdTwo").val() == "") {
	    	  check_password.css("color", "red");
	    	  check_password.text("필수정보입니다.");
	    	  
	      } else if ($("#member_pwd").val() != $("#member_pwdTwo").val()) {
	    	  
	         check_password.text("패스워드가 동일하지 않습니다.");
	         check_password.css("color", "red");
	         
	      } else {    	
	    	  
	         check_password.text("패스워드가 동일합니다.");
	         check_password.css("color", "green");
	      }
	   });
	   
	});


//회원 가입
function doSignup() {
	var member_id = $("#member_id").val();
	var member_pwd = $("#member_pwd").val();
	var member_name = $("#member_name").val();
	var member_phone = $("#NUMst").val() + "-" + $("#NUMnd").val() + "-" + $("#NUMrd").val();
	var member_age = $("#member_age").val();
	var member_email = $("#str_email01").val() + "@" + $("#str_email02").val();
	var member_addr = $("#member_addr").val()+$("#member_faddr").val()+$("#member_laddr").val();
	var member_key = $("#member_key").val();
	
	if(!$("#member_id").val() || !$("#member_pwd").val() || !$("#member_name").val()
			|| !$("#member_addr").val())
	
	{
		alert("필수항목이 비어있습니다. 입력해주세요.");		
	}else{
		$.ajax({
			type : "POST",
			url : "sign",
			data : {
				"member_id" : member_id,
				"member_pwd" : member_pwd,
				"member_name" : member_name,
				"member_phone" : member_phone,
				"member_age" : member_age,
				"member_email" : member_email,
				"member_addr" : member_addr,
				"member_key" : member_key
				
			},
			success : function(data) {
				alert("가입 완료.");
				window.location.href="main";
			}
		});
	}
}

//숫자입력
function onlyNumber(){
	if((event.keyCode<48)||(event.keyCode>57)) {
		event.returnValue=false;
	}
}



//주소 검색
function searchPost() {
	new daum.Postcode({
		oncomplete : function(data) {
			var fullAddr = '';
			var extraAddr = '';

			if (data.userSelectedType == 'R') {
				fullAddr = data.roadAddress;
			} else {
				fullAddr = data.jibunAddress;
			}
			if (data.userSelectedType == 'R') {
				if (data.bname !== '') {
					extraAddr += data.bname;
				}
				if (data.buildingName !== '') {
					extraAddr += (extraAddr !== '' ? ', ' + data.buildingName
							: data.buildingName);
				}
				fullAddr += (extraAddr !== '' ? '(' + extraAddr + ')' : '');
			}
			document.getElementById('member_addr').value = data.zonecode;
			document.getElementById('member_faddr').value = fullAddr;
			document.getElementById('member_laddr').focus();
		}
	}).open();
}

