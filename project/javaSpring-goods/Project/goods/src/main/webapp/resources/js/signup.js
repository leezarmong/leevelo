
//var idCheck = false;
//var pwCheck = false;


//회원 가입 아이디 중복 체크
function checkID() {
	var member_id = $("#member_id").val();
	var idCheck = $("#idCheck");
	console.log(member_id);
	if (!member_id) {
		alert("아이디를 입력해주세요.");
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
  // 패스워드 확인
  $("#member_pwd").keyup(function() {
    $("#checkPasswd").text("");
  });

  $("#member_pwdTwo").keyup(function() {
    var checkText = $("#checkPasswd");
    if ($("#member_pwd").val() == "" || $("#member_pwdTwo").val() == "") {
      checkText.css("color", "red");
      checkText.text("필수 입력사항");
      pwCheck = false;
    } else if ($("#member_pwd").val() != $("#member_pwdTwo").val()) {
      pwCheck = false;
      checkText.text("비밀번호가 다릅니다.");
      checkText.css("color", "red");
    } else {
      pwCheck = true;
      checkText.text("동일한 비밀번호 입니다.");
      checkText.css("color", "green");
    }
  });


 
  //form 로그인 버튼
  $("#loginBtn").click(function(){
	 $.ajax({
		 type : 'post',
		 url : 	'checkMember',
		 data : $("#loginForm").serialize(),
		 success : function(data){
			 if(data == 0){
				alert("아이디 비밀번호를 확인해 주세요.");
					location.href="login";
			 }else{
				 alert("로그인 완료");
					$.ajax({
						type : 'post',
						url : 'login',
						data : $('#loginForm').serialize(),
						success : function(){
							location.href = 'goodsmall';
						}
					});
			 }
		 }
	 }); 
  });
  
  
  //회원가입 전 체크
//  $('#signBtn').click(function(event) {
//	    if (idCheck === false) {
//	     alert("중복검사를 해주세요");
//	    	event.preventDefault(); // prevent form submission
//	    }else if(pwCheck === false){
//	    	alert("비밀번호가 다릅니다.");
//	    	event.preventDefault();
//	    }else if($("#email").val().indexOf("@") == -1){
//	    	alert("이메일을 바르게 써주세요");
//	    	event.preventDefault();
//	    } else{
//	    	alert("회원가입 완료");
//	    	location.href="login";
//	    }
//	 });
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

