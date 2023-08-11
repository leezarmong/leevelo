/**
 * 로그인
 */
function memberCheck() {
	var member_id=$("#member_id").val();
	var member_password=$("#member_password").val();
	if (!member_id || !member_password) {
		swal("", "아이디 혹은 패스워드를 입력해주세요.", "error");
	} else {
		$.ajax({
			type : "POST",
			url : "checkMember",
			data : {
				"member_id" : member_id,
				"member_password" : member_password
			}, success : function(data) {
				if (data != 0) {
					$.ajax({
						type : "POST",
						url : "login",
						data : {
							"member_id" : member_id,
							"member_password" : member_password
						}, success : function() {
							window.location.href = "main";
						}
					});
				} else {
					swal("","아이디 혹은 패스워드를 확인해주세요.","warning")
				}
			}, error : function(data) {
				console.log(data);
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

function productCart() {
	var member_id=$("#member_id").val();
	document.frm.method="POST";
	document.frm.action="productCart";
	document.frm.submit();
}

function logout() {
	$.ajax({
		type : "GET",
		url : "logout",
		data : {},
		success : function(data) {
			swal("로그아웃", "완료", "success");
			location.href="main";
		}
	});
}

//마이페이지 클릭 이벤트
function mypBtn() {
	var member_id = $("#mymember_id").val();
	var myp = $("#myp").val();
	$.ajax({
		type : "GET",
		url : "mypL",
		data : {
			"member_id" : member_id,
			"myp" : myp
		}, success : function(data) {
			window.location.href = "mypage?member_id=" + member_id + "&myp=" + myp;
		}
	});
}

function checkFI() {
	var member_name =$("#member_name").val();
//	var member_phone = $("#member_phone").val();
	var member_phone = $("#member_phone1").val()+"-"+$("#member_phone2").val()+"-"+$("#member_phone3").val();
	var popupX = (window.screen.width / 2) - 200;
	var popupY = (window.screen.height / 2) - 125;	
	if (!member_name || !member_phone) {
		swal("", "이름과 전화번로를 입력해주세요", "error");
	} else {
		$.ajax({
			type : "POST",
			url : "findId",
			data : {
				"member_name" : member_name,
				"member_phone" : member_phone
			}, success : function(data) {
				if (data != 0) {
					$.ajax({
						type : "POST",
						url : "findId2",
						data : {
							"member_name" : member_name,
							"member_phone" : member_phone
						}, success : function() {
							window.open("foundID", "아이디 찾기", "status = no, width = 400, height = 250, left = " + popupX + ", top = " + popupY);
						}
					});
				} else {
					swal("","이름과 전화번호를 확인해주세요.","warning");
				}
			}, error : function(data) {
				console.log(data);
			}
		});
	}	
}

function checkFP() {
	member_id =$("#member_id").val();
	member_name =$("#member_name").val();
	/*var member_phone = $("#member_phone").val();*/
	var member_phone = $("#member_phone1").val()+"-"+$("#member_phone2").val()+"-"+$("#member_phone3").val();
	var popupX = (window.screen.width / 2) - 400;
	var popupY = (window.screen.height / 2) - 300;	
	if (!member_name || !member_phone) {
		swal("", "회원 정보를 입력해주세요", "error");
	} else {
		$.ajax({
			type : "POST",
			url : "findPw",
			data : {
				"member_id" : member_id,
				"member_name" : member_name,
				"member_phone" : member_phone
			}, success : function(data) {
				if (data != 0) {
					$.ajax({
						type : "POST",
						url : "findPw2",						
						data : {
							"member_id" : member_id,
							"member_name" : member_name,
							"member_phone" : member_phone
						}, success : function() {
							window.open("foundPW", "비밀번호 찾기", "status = no, width = 400, height = 300, left = " + popupX + ", top = " + popupY);
						}
					});
				} else {
					swal("","회원 정보를 확인해주세요.","warning");
				}
			}, error : function(data) {
				console.log(data);
			}
		});
	}	
}

function changePw(){
	var member_id = $("#member_id").val();
	var member_name = $("#member_name").val();
	var member_password=$("#member_password").val();
	var member_repassword=$("#member_repassword").val();
	if(!member_password || !member_repassword){
		swal("","비밀번호를 입력해 주세요.","warning");
	}else if(member_password != member_repassword){
		swal("","비밀번호를 일치시켜 주세요.","warning");
	}else{
		$.ajax({
			type : "POST",
			url : "cpw",
			data : {
				"member_id" : member_id,
				"member_name" : member_name,
				"member_password" : member_password
			},
			success : function(data) {
				swal("","비밀번호가 변경되었습니다","success")
				.then(function(isConfirm){
					$.ajax({
						type : "GET",
						url : "emptyss",
						success : function(data) {
							self.close();
							opener.top.location = "login";	
						}
					});
				});
			}
		});
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
	
	$("#member_repassword").keyup(function() {
		var checkText = $("#checkPasswd");
		if ($("#member_password").val() == "" || $("#member_repassword").val() == "") {
			checkText.css("color", "red");
			checkText.text("필수정보입니다.");
			checkPWD = false;
		} else if ($("#member_password").val() != $("#member_repassword").val()) {
			checkPWD = false;
			checkText.text("패스워드가 동일하지 않습니다.");
			checkText.css("color", "red");
		} else {
			checkPWD = true;
			checkText.text("패스워드가 동일합니다.");
			checkText.css("color", "green");
		}
	});
})


function fi_close(){
	$.ajax({
		type : "GET",
		url : "emptyss",
		success : function(data) {
			self.close();
			opener.top.location = "main";	
		}
	});	
}

function go_login(){
	$.ajax({
		type : "GET",
		url : "emptyss",
		success : function(data) {
			self.close();
			opener.top.location = "login";	
		}
	});	
}

function change_pw(){
	$.ajax({
		type : "GET",
		url : "emptyss",
		success : function(data) {
			self.close();
			opener.top.location = "find_pw";	
		}
	});	
}

