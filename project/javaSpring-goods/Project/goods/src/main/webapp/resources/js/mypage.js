var checkPWD = false;
$(document).ready(function() {
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

	$("#email_select").change(function() {
		if ($("#email_select").val() == "1") {
			$("#email_addr").val("");
			$("#email_addr").prop("disabled", false);
		} else if ($("#email_select").val() == "") {
			$("#email_addr").val("");
			$("#email_addr").prop("disabled", true);
		} else {
			$("#email_addr").val($("#email_select").val());
			$("#email_addr").prop("disabled", true);
		}
	});
	
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

})

// 숫자입력
function onlyNumber(){
	if((event.keyCode<48)||(event.keyCode>57)) {
		event.returnValue=false;
	}
}

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
			document.getElementById('member_laddr').value = '';
		}
	}).open();
}

// 회원정보 수정


function myinfoUp() {
	var member_id = $("#member_id").val();
	var member_pwd = $("#member_password").val();
	var member_phone = $("#NUMst").val() + "-" + $("#NUMnd").val() + "-" + $("#NUMrd").val();
	var member_email = $("#email_id").val() + "@" + $("#email_addr").val();
	var member_addr = $("#member_addr").val();
	var member_faddr = $("#member_faddr").val();
	var member_laddr = $("#member_laddr").val();
	if(!member_pwd || !member_phone || !member_email || !member_addr || !member_faddr || !member_laddr){
		alert("필수 항목이 비어 있습니다.");
	}else{
		$.ajax({
			type : "POST",
			url : "mypage3",
			data : {
				"member_id" : member_id,
				"member_pwd" : member_pwd,
				"member_phone" : member_phone,
				"member_email" : member_email,
				"member_addr" : member_addr,
				"member_faddr" : member_faddr,
				"member_laddr" : member_laddr
			},
			success : function(data) {
				alert("수정 완료");
				window.location.href="mypage";
			}
		});
	}
}





//function myinfoUp() {
//	  var member_id = $("#member_id").val();
//	  var member_pwd = $("#member_password").val();
//	  var member_email = $("#email_id").val() + "@" + $("#email_addr").val();
//	  var member_phone = $("#NUMst").val() + "-" + $("#NUMnd").val() + "-" + $("#NUMBER").val();
//
//	  if ((member_pwd === "" || member_pwd === null) && ($("#chk_member_pwd").val() === "" || $("#chk_member_pwd").val() === null)) {
//	    swal({
//	      icon: "warning",
//	      text: "무엇을 생각하십니까?",
//	      closeOnClickOutside: false,
//	      closeOnEsc: false,
//	      buttons: ["돌아가기", "수정 완료!"],
//	    }).then(function(isConfirm) {
//	      if (isConfirm) {
//	    	  swal('수정 완료!', '회원정보 수정을 완료했습니다.^^', 'success').then(function(isConfirm) {
//	          $.ajax({
//	            type: "POST",
//	            url: "mypage3",
//	            data: {
//	              "member_id": member_id,
//	              "member_pwd": member_pwd,
//	              "member_email": member_email,
//	              "member_phone": member_phone
//	            },
//	            success: function(data) {
//	              location.href = "mypage";
//	            }
//	          });
//	        });
//	      }
//	    });
//	  }
//	}


//회원 주문 취소
function dely(v){
	var idv = $(v).attr("class");
	 console.log(idv);
	swal({
		icon : "warning",
		text : "정말 취소 하시겠습니까?",
		closeOnClickOutside : false,
		closeOnEsc : false,
		buttons : [ "돌아가기", "삭제하기" ],
	}).then(function(isConfirm) {
		if (isConfirm) {
			$.ajax({
				type : "POST",
				url : "delMyp",
				data : { "payment_id" : idv},
				dataType : "JSON",
				success : function(data) {
					swal("", "주문이 취소 되었습니다.", "success").then(function(isConfirm){
						location.reload();
					});
				}		
			});	
		}
	})
}
