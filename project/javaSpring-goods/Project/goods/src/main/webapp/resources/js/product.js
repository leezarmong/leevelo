function buyProduct() {
	var member_id = $("#member_id").val();
	var prd_id = $("#prd_id").val();
	var buy_quantity = $("#buy_quantity").val();
	var prd_opt = $("#prd_opt").val();
	var hiddenbtn = $("#hiddenbtn").val();
	if (member_id == "Administrator") {
		swal("", "관리자 권한으로는 이용하실 수 없습니다.", "warning");
	} else if (!member_id) {
		swal("", "비회원은 이용하실 수 없습니다.", "error");
	} else if (buy_quantity == 0) {
		swal("", "수량을 선택해주세요", "error");
	} else {
		$.ajax({
			type : "POST",
			url : "payment",
			data : {
				"member_id" : member_id,
				"prd_id" : prd_id,
				"buy_quantity" : buy_quantity,
				"prd_opt" : prd_opt,
				"hiddenbtn" : hiddenbtn
			},
			success : function(data) {
				console.log(data);
				window.location.href="payment";
			}, error : function(data) {
				console.log(data);
			}
		});
	}
}

//숫자입력
function onlyNumber(){
	if((event.keyCode<48)||(event.keyCode>57)) {
		event.returnValue=false;
	}
}


//상품 등록
function doInsertProduct() {
	
	var cate_id = $("#cate_id").val();
	var prd_name = $("#prd_name").val();
	var prd_id = $("#prd_id").val();
	var prd_price = $("#prd_price").val();
	var prd_explain = $("#prd_explain").val();
	var uploadFile = $("#uploadFile")[0].files[0]; // Get the first file selected
	
	// Create a FormData object
	var formData = new FormData();
	
	// Append the values to the FormData object
	formData.append('cate_id', cate_id);
	formData.append('prd_name', prd_name);
	formData.append('prd_id', prd_id);
	formData.append('prd_price', prd_price);
	formData.append('prd_explain', prd_explain);
	formData.append('uploadFile', uploadFile);

	
	
	if (!cate_id) {
		swal("", "카테고리를 선택해주세요.", "error");
	} else {
		$.ajax({
			type : "POST",
			url : "insertProduct",
			data : formData,
			  processData: false, // Prevent jQuery from automatically processing the data
		      contentType: false, // Prevent jQuery from automatically setting the content type
			success : function(data) {
				swal("", "상품이 등록되었습니다.", "success")
				.then(function(isConfirm){
					location.href="insertProduct";
				});
			}, error : function(error) {
				swal("왜", "에러일까", "error");
			}
		});
	}
}



function prdidChk() {
	var prd_id=$("#prd_id").val();
	if (!prd_id) {
		swal("", "아이디를 입력해주세요.", "error");
	} else {
		type : "POST",
			$.ajax({
			url : "prdCheckID",
			data : { "prd_id" : prd_id },
			dataType : "JSON",
			success : function(data) {
				if (data == 0) {
					$("#prd_id").attr("disable", true);
					swal("", "사용가능한 아이디입니다.", "success");
				} else if (data != 0) {
					swal("", "이미 존재하는 아이디입니다.", "error");
				} else {
					swal("a", "a", "error");
				}
			}, error : function(error) {
				swal("", prd_id, "error");
			}
		});
	}
}

function pdp(){
	var prd_link=$("input[name=car]:checked").val();
	var ba = $("input[name=seoul]:checked").val();
	console.log(prd_link);
	if (!ba) {
		swal("", "보험을 선택해주세요.", "error");
	} else {
		type : "POST",
			$.ajax({
			url : "boc",
			data : { "bt_code" : ba },
			dataType : "JSON",
			success : function(data) {
				if (data != 0) {
					location.href = prd_link;
				} else {
					console.log(data);
				}
			}, error : function(data) {
				console.log(data);
			}
		});
	}
}

function delp(v){
	var idv = $(v).attr("class");
	 var imv = $(v).attr("name");
	 console.log(idv);
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
					url : "delPrd",
					data : { "prd_id" : idv,
							"prd_img" : imv},
					dataType : "JSON",
					success : function(data) {
						swal("", "상품이 제거 되었습니다.", "success").then(function(isConfirm){
							location.reload();
						});
					}		
				});	
		}
	})
}


$(document).ready(function(){ 
	$("input[name=car]").click(function(){ 
		pdp(); 
	});     	    
});

//function doModifyProduct(){
//	  var data ={
//	     cate_id :$("#cate_id").val(),
//		 prd_name :$("#prd_name").val(),
//		 prd_price :$("#prd_price").val(),
//		 prd_explain:$("#prd_explain").val()
//	  }
//
//	  if(!cate_id){
//	    swal("","카테고리를 선택해 주세요.","error");
//	  }else{
//	    swal({
//	      icon : "warning",
//				text : "정말 수정 하시겠습니까?",
//				closeOnClickOutside : false,
//				closeOnEsc : false,
//				buttons : [ "돌아가기", "수정하기" ],
//	    }).then(function(isConfirm){
//	        if(isConfirm){
//	          $.ajax({
//	              type :"POST",
//	              url : "modifyproduct2",
//	              data : data,
//	              success : function(data){
//	                swal("", "수정에 성공했습니다.", "success")
//	                .then(function(isConfirm){
//	                    if(isConfirm) {
//	                      location.href = "productList";
//	                    }
//	                });
//	              }
//	          });
//	        }
//	    });
//	  }
//	}