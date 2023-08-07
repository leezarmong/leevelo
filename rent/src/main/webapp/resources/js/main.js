function getproduct(){
		var cd1 = $("input[name=cardate1]").val();				
		var cd2 = $("input[name=cardate2]").val();	
		var rh1 = $("select[name=hour]").val();
		var rm1 = $("select[name=min]").val();
		var rh2 = $("select[name=hour2]").val();
		var rm2 = $("select[name=min2]").val();	
		var dd1 = rh1 + ":" + rm1;
		var dd2 = rh2 + ":" + rm2;		
		var cardate1 = $("#cardate1").val();
		var cardate2 = $("#cardate2").val();
		
		if(cardate1>cardate2){
			swal("반납 날짜가 대여 날짜보다 빠릅니다");
		}else if(!$("input[name=local]:checked").val()){
			swal("지역을 선택해주세요");
		}else{
			var query = { 
					cd1: cd1,				
					cd2: cd2,
					local: $("input[name=local]:checked").val(),
					dd1: dd1,
					dd2: dd2
			};
			$.ajax({
				type: "POST",
				url: "introduction",
				data: query,
				success: function(data){
					location.href = "category?cate_id=IN20220926";
				}
			});
		}	
}
		
	
	