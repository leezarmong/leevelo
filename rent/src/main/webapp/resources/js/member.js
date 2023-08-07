function delM(v){
	var idv = $(v).attr("name");
	
	swal({
		icon : "warning",
		text : "정말 삭제 하시겠습니까?",
		closeOnClickOutside : false,
		closeOnEsc : false,
		buttons : [ "돌아가기", "삭제하기" ],
	}).then(function(isConfirm) {
		if (isConfirm) {
				$.ajax({
					type : "POST",
					url : "delMem",
					data : { "member_id" : idv },
					dataType : "JSON",
					success : function(data) {
						swal("", "회원 정보가 삭제 되었습니다.", "success").then(function(isConfirm){
							location.reload();
						});
					}		
				});	
		}
	})
}

function doModifyMember(){	
	var member_id = $("#member_id").val();
	var member_name = $("#member_name").val();
	var member_license = $("#member_license").val();
	var member_phone = $("#NUMst").val() + "-" + $("#NUMnd").val() + "-" + $("#NUMrd").val();
	var member_zipcode = $("#member_zipcode").val();
	var member_faddr = $("#member_faddr").val();
	var member_laddr = $("#member_laddr").val();
	console.log(member_phone);
	
	swal({
		icon : "warning",
		text : "정말 수정 하시겠습니까?",
		closeOnClickOutside : false,
		closeOnEsc : false,
		buttons : [ "돌아가기", "수정하기" ],
	}).then(function(isConfirm) {
		if (isConfirm) {
			$.ajax({
				type : "POST",
				url : "modifyMember2",
				data : {
				"member_id" : member_id,
				"member_name" : member_name,
				"member_license" : member_license,
				"member_phone" : member_phone,
				"member_zipcode" : member_zipcode,
				"member_faddr" : member_faddr,
				"member_laddr" : member_laddr			
				},
				success : function(data) {
					swal("", "수정에 성공했습니다.", "success")
					.then(function(isConfirm) {
						if (isConfirm) {
							location.href = "memberList";
						}
					})					
				}
			});
		}
	})
	
}

