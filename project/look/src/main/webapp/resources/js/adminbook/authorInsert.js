
function authorInsert() {

	let params = {
		authorName : $("#authorName").val(),
		nationId : $("#nationId").val(),
		authorIntro : $("#authorIntro").val()
	}
	
	console.log("authorName:", params.authorName);
    console.log("nationId:", params.nationId);
    console.log("authorIntro:", params.authorIntro);
	

	if (!params.authorName || !params.nationId || !params.authorIntro) {
		swal("","필수 항목이 비어있습니다.","warning");
	} else {

		$.ajax({

			type : "POST",
			url : "auInserting",
			data : params,
			success : function(data) {
				alert("등록이 완료 되었습니다.");
				window.location.href = "authorInsert";
			}
		});
	}

}