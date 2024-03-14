//숫자입력
function onlyNumber(){
	if((event.keyCode<48)||(event.keyCode>57)) {
		event.returnValue=false;
	}
}

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
						type : "GET",
						url : "findPw2",						
						data : {
							"member_id" : member_id,
							"member_name" : member_name,
							"member_phone" : member_phone
						}, success : function() {
							window.open("found_pw", "비밀번호 찾기", "status = no, width = 400, height = 300, left = " + popupX + ", top = " + popupY);
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

// 비밀번호 변경
function changePw() {
    var member_id = $("#member_id").val();
    var member_name = $("#member_name").val();
    var member_pwd = $("#member_pwd").val();
    var member_pwdTwo = $("#member_pwdTwo").val();

    if (!member_pwd || !member_pwdTwo) {
        swal("", "비밀번호를 입력해 주세요.", "warning");
    } else if (member_pwd != member_pwdTwo) {
        swal("", "비밀번호를 일치 시켜주세요.", "warning");
    } else {
        $.ajax({
            type: "GET",
            url : "cpw",
            data: {
                "member_id": member_id,
                "member_name": member_name,
                "member_pwd": member_pwd
            },
            success: function (data) {
                swal("", "비밀번호가 변경되었습니다.", "success")
                    .then(function (isConfirm) {
                        $.ajax({
                            type: "GET",
                            url: "logout",
                            success: function (data) {
                                self.close();
                                opener.top.location = "login";
                            }
                        });
                    });
            }
        });
    }
}

//로그인 화면 전환
function go_login(){
	$.ajax({
		type : "GET",
		url : "logout",
		success : function(data) {
			self.close();
			opener.top.location = "login";	
		}
	});	
}
