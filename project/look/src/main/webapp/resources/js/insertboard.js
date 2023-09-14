

function insert(){
	var title = $("#title").val();
	var content = $("#content").val();
	
	if(!$("#title").val() || !$("#content").val())
	
	{
		alert("필수항목이 비어있습니다. 입력해주세요.");		
	}else{
		$.ajax({
			type : "POST",
			url : "end",
			data : {
				"title" : title,
				"content" : content
			},
			success : function(data) {
				alert("입력 완료..!");
				window.location.href="main";
			}
		});
	}
}





