function update(){
	var title = $("#title").val();
	var content = $("#content").val();
	var seq  = $("#seq").val();
	
	$.ajax({
		type : "POST",
		url : "update",
		data : {
			"title" : title,
			"content": content,
			"seq" : seq
		},success :function(data){
			alert("수정 완료했습니다..!!");
			location.href="detail?seq="+seq;
		}
	});
}