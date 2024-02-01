$(document).ready(function() {	// 최상단 체크박스 클릭	
	
	$("input[name=member_phone], input[name=ccard]").on('click', function (){
	      $(this).val("");
	});
	$("input[name=member_phone], input[name=ccard]").on('keyup', function () {
		var charLimit = $(this).prop("maxlength");
		if ($(this).val().length >= charLimit) {
			$(this).next('input[name=member_phone], input[name=ccard]').focus();
			$(this).next('input[name=member_phone], input[name=ccard]').val("");
			return false;
		}
	});
	
	$("#checkAll").click(function() {	// 클릭
		if ($("#checkAll").prop("checked")) {	// input tag name="chk" checked=true
			$("input[name=chk]").prop("checked", true);
		} else {
			$("input[name=chk]").prop("checked", false);
		}
	})
	
	$("input[name=chk]").click(function() {
		if ($("input[name=chk]").length == $("input[name=chk]:checkbox:checked").length) {
			$("#checkAll").prop("checked", true);
		} else {
			$("#checkAll").prop("checked", false);
		}
	})
	
	$("input[type=radio][name=choice]").change(function() {
		if(this.value == "sameaddr") {
			$("input[name=sn_member_name]").val($("#hidden_member_name").val());
			$("input[name=sn_member_name]").attr("readonly", true);
			$("input[name=sn_member_zipcode]").val($("#hidden_member_zipcode").val());
			$("input[name=sn_member_zipcode]").attr("readonly", true);
			$("input[name=sn_member_faddr]").val($("#hidden_member_faddr").val());
			$("input[name=sn_member_faddr]").attr("readonly", true);
			$("input[name=sn_member_laddr]").val($("#hidden_member_laddr").val());
			$("input[name=sn_member_laddr]").attr("readonly", true);
			$("select[name=member_phone]").val($("#hp0").val()).prop("selected", true);
			$("#member_phone2").val($("#hp1").val());
			$("#member_phone3").val($("#hp2").val());
			$("input[name=sn_member_phone]").attr("readonly", true);
			$("input[name=nn_searchPost]").css("visibility", "hidden");
		} else if (this.value == "newaddr") {
			$("input[name=sn_member_name]").val("");
			$("input[name=sn_member_name]").attr("readonly", false);
			$("input[name=sn_member_zipcode]").val("");
			$("input[name=sn_member_zipcode]").attr("readonly", true);
			$("input[name=sn_member_faddr]").val("");
			$("input[name=sn_member_faddr]").attr("readonly", true);
			$("input[name=sn_member_laddr]").val("");
			$("input[name=sn_member_laddr]").attr("readonly", false);
			$("select[name=member_phone]").val("").prop("selected", true);
			$("input[name=member_phone]").val("");
			$("input[name=nn_searchPost]").css("visibility", "visible");
		}
	});
})

function termChk() {
	var chk1 = $("#chk1").is(":checked");
	var chk2 = $("#chk2").is(":checked");
	var member_id = $("#member_id").val();
	var buy_quantity = $("#buy_quantitiy").val();
	var prd_id = $("#prd_id").val();
	var prd_opt = $("#prd_opt").val();
	var member_phone = $("#member_phone1").val()+"-"+$("#member_phone2").val()+"-"+$("#member_phone3").val();
	console.log(member_phone);
	var member_zipcode = $("input[name=sn_member_zipcode]").val();
	var member_faddr = $("input[name=sn_member_faddr]").val();
	var member_laddr = $("input[name=sn_member_laddr]").val();
	var credit_number = $("#credit1").val()+"-"+$("#credit2").val()+"-"+$("#credit3").val()+"-"+$("#credit4").val();
	var prd_sum = $("#prd_sum").val();
	var chkbox = $("input[name=chkbox]");
	
	if (chk1 == true && chk2 == true && $("#credit1").val() != "" && $("#credit2").val() != "" && $("#credit3").val() != "" && $("#credit4").val() != "") {
			swal({
			icon : "info", 
			text : "결제를 진행 하시겠습니까?", 
			closeOnClickOutside : false, 
			closeOnEsc : false, 
			buttons : [ "취소", "결제" ],
		}).then(function(isConfirm) {
			if (isConfirm) {
				swal("결제 성공", "결제를 완료했습니다.", "success").then(function(isConfirm) {
					$.ajax({
						type : "POST", 
						url : "decopay", 
						data : {
							"member_id" : member_id,
							"buy_quantity" : buy_quantity,
							"prd_id" : prd_id,
							"prd_opt" : prd_opt,
							"member_phone" : member_phone,
							"member_zipcode" : member_zipcode,
							"member_faddr" : member_faddr,
							"member_laddr" : member_laddr,
							"member_phone" : member_phone,
							"credit_number" : credit_number,
							"prd_sum" : prd_sum
						}, success : function(data) { window.location.href = "main"; }
					});
				});
			}
		});
	} else if (chk1 == false || chk2 == false) {
		swal("", "약관에 동의해야 합니다.", "info");
	} else {
		swal("", "카드번호를 입력해주세요.", "info");
	}
}

// 카드번호 숫자입력
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
			$("input[name=sn_member_zipcode]").val(data.zonecode);
			console.log($("input[name=sn_member_zipcode]").val());
			// document.getElementById('sn_member_zipcode').value = data.zonecode;
			$("input[name=sn_member_faddr]").val(fullAddr);
			// document.getElementById('sn_member_faddr').value = fullAddr;
			$("input[name=sn_member_laddr]").focus();
			// document.getElementById('sn_member_laddr').focus();
		}
	}).open();
}