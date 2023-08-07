/**
 * 
 */



$("#kakaopage").click(function(){
	
	$.ajax({
		url : "kakao",
		dataType : "json",
		success : function(data){
			alert(data.tid);
		},
		error : function(error){
			alert(error); 
		}
	
	});
	
});