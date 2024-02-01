var checkID = false;
var checkPWD = false;
var checkYEAR = false;
var checkNAME = false;

//숫자입력
function onlyNumber(){
	if((event.keyCode<48)||(event.keyCode>57)) {
		event.returnValue=false;
	}
}

//비밀번호 중복체크
$(document).ready(function() {
	$("input[name=member_phone]").on('click', function (){
		$(this).val("");
	});
	$("input[name=member_phone]").on('keyup', function () {
		var charLimit = $(this).prop("maxlength");
        if ($(this).val().length >= charLimit) {
            $(this).next('input[name=member_phone]').focus();
            $(this).next('input[name=member_phone]').val("");
            return false;
        }
	}); 
	
	$("#member_password").keyup(function() {
		$("#checkPasswd").text("");
	});
	
	$("#chk_member_pwd").keyup(function() {
		var checkText = $("#checkPasswd");
		if ($("#member_password").val() == "" || $("#chk_member_pwd").val() == "") {
			checkText.css("color", "red");
			checkText.text("필수정보입니다.");
			checkPWD = false;
		} else if ($("#member_password").val() != $("#chk_member_pwd").val()) {
			checkPWD = false;
			checkText.text("패스워드가 동일하지 않습니다.");
			checkText.css("color", "red");
		} else {
			checkPWD = true;
			checkText.text("패스워드가 동일합니다.");
			checkText.css("color", "green");
		}
	});
	
	
	//이름 체크
	$("#member_name").blur(function() {
		checkName();
	});
	
})



//로그인 버튼
function doSignup() {
	var member_id = $("#member_id").val();
	var member_password = $("#member_password").val();
	var member_name = $("#member_name").val();
	var member_license = $("#member_license").val();
	var member_year = $("#birth_year").val() + "-" + $("#birth_month").val() + "-" + $("#birth_day").val();
	var member_phone = $("#NUMst").val() + "-" + $("#NUMnd").val() + "-" + $("#NUMrd").val();
	var member_zipcode = $("#member_zipcode").val();
	var member_faddr = $("#member_faddr").val();
	var member_laddr = $("#member_laddr").val();
	var member_email = $("#str_email01").val() + "@" + $("#str_email02").val();
	
	if(!$("#member_id").val() || !$("#member_password").val() || !$("#member_name").val()
			|| !$("#member_license").val())
	
	{
		swal("", "필수항목이 비어있습니다. 입력해주세요.", "warning");		
	}else{
		$.ajax({
			type : "POST",
			url : "join",
			data : {
				"member_id" : member_id,
				"member_password" : member_password,
				"member_name" : member_name,
				"member_license" : member_license,
				"member_year" : member_year,
				"member_phone" : member_phone,
				"member_zipcode" : member_zipcode,
				"member_faddr" : member_faddr,
				"member_laddr" : member_laddr,
				"member_email" : member_email
				
			},
			success : function(data) {
				window.location.href="main";
			}
		});
	}
}


//아이디 중복체크
function idChk() {
	var member_id = $("#member_id").val();
	var oMsg = $("#idchk");
	if (!member_id) {
		swal("", "아이디를 입력해주세요.", "error");
	} else {
		$.ajax({
			type : "POST",
			url : "checkID",
			data : {
				"member_id" : member_id
			},
			success : function(data) {
				if (data == 0) {
					$("#member_id").attr("disabled", true);
					oMsg.css("color", "green");
					oMsg.text("사용 가능한 아이디입니다.");
					checkID = true;
				} else if (data != 0) {
					$("#idchk").css("color", "red");
					$("#idchk").text("이미 존재하는 아이디입니다.");
					checkID = false;
				} else { console.log('ERROR'); }
			}, error : function(error) { swal("", member_id, "error"); }
		});
	}
}



//이름 체크
function checkName() {
	var oMsg = $("#chkname");
	var nonchar = /[^가-힣a-zA-Z0-9]/gi;
	
	var name = $("#member_name").val();
	if (name == "") {
		oMsg.css("color", "red");
		oMsg.text("필수정보입니다.");
		return false;
	}
	
	if (name != "" && nonchar.test(name)) {
		oMsg.css("color", "red");
		oMsg.text("한글과 영문 대 소문자를 사용하세요. (특수기호, 공백 사용 불가)");
		return false;
	}
	checkNAME = true;
	oMsg.text("");
	return true;
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
			document.getElementById('member_zipcode').value = data.zonecode;
			document.getElementById('member_faddr').value = fullAddr;
			document.getElementById('member_laddr').focus();
		}
	}).open();
}



