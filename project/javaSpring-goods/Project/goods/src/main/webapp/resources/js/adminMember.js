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