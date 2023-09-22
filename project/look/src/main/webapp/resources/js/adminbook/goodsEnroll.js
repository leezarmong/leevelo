

function bookinsert(){
	
	var params = {
			 BOOKNAME : $("#BOOKNAME").val(),
			 AUTHORID : $("#AUTHORID").val(),
			 PUBLEYEAR : $("#PUBLEYEAR").val(),
			 PUBLISHER : $("#PUBLISHER").val(),
			 CATECODE : $("#CATECODE").val(),
			 BOOKPRICE : $("#BOOKPRICE").val(),
			 BOOKSTOCK : $("#BOOKSTOCK").val(),
			 BOOKDISCOUNT : $("#BOOKDISCOUNT").val(),
			 BOOKINTRO : $("#BOOKINTRO").val(),
			 BOOKCONTENTS : $("#BOOKCONTENTS").val()				
	};

	if(!$("#BOOKNAME").val() || !$("#AUTHORID").val() || !$("#PUBLEYEAR").val() || !$("#PUBLISHER").val() || !$("#CATECODE").val() || !$("#BOOKPRICE").val()
			|| !$("#BOOKSTOCK").val() || !$("#BOOKDISCOUNT").val() || !$("#BOOKINTRO").val() || !$("#BOOKCONTENTS").val())
	
	{
		alert("필수항목이 비어있습니다. 입력해주세요.");		
	}else{
		$.ajax({
			type : "POST",
			url : "insertbook",
			data : params,
			success : function(data) {
				alert("입력 완료..!");
				window.location.href="goodsEnroll";
			}
		});
	}
}
