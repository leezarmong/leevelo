/**
 * 장바구니
 */	 
function insertCart() {
	var member_id = $("#member_id").val();
	var prd_id = $("#prd_id").val();
	var basket_amount = $("#basket_amount").val();
	var basket_sum = $("#basket_sum").val();	
	var prd_name = $("#prd_name").val();
	
	
	
	if (member_id == "admini") {
		alert("관리자 권한으로는 이용하실 수 없습니다.");
					} else if (!member_id) {
						alert("비회원은 장바구니를 이용하실 수 없습니다.");
							location.href="login";
					} else if (basket_amount == 0) {
						alert("수량을 선택해주세요");
					} else {
						
						$.ajax({
							type : "GET",
							url : "insertBasket",
							data : {
								"prd_name" : prd_name,
								"member_id" : member_id,
								"prd_id" : prd_id,
								"basket_sum": basket_sum,
								"basket_amount" : basket_amount
							},
								/*DB로 데이터를 넘길때는 key 와 value 의 컬럼 값이 같아야 오류를 줄일수있음.*/
							/*세션으로 파라미터를 넘길때에는 됐지만..?*/
							success : function() {
								alert("장바구니에 저장되었습니다.");
								location.href="goodsmall";
							}
						});
					}
				}
			

