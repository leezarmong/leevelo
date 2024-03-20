<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>leeveloper</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="resources/js/cart.js" charset="UTF-8"></script>
    
    <link rel="stylesheet" type="text/css" href="resources/css/goodsInfo.css">
	<!-- css -->
	
	 <style>
    .row {
        min-height: 30vh; /* 스크롤 값 */
    }
</style>
     
</head>
<body>

<%@ include file="../include/header.jsp" %>

<div class="container" style="margin-top: 200px;">
    <h1>leeveloper</h1>
    <p class="logname">${member.member_id} 님의 예약상품</p>
    <div class="productdetail">
        <form>
            <img class="product-img" src="${goods.prd_img}">
            <table>
                <tr>
                    <th>상품명</th>
                    <td>${goods.prd_name}</td>
                </tr>
                <tr>
                    <th>가격</th>
                    <td><fmt:formatNumber value="${goods.prd_price}" pattern="#,###"/>원</td>
                </tr>
                <tr>
                    <th>상품코드</th>
                    <td>${goods.prd_id}</td>
                </tr>
                <tr>
                    <th>수량</th>
                    <td><input type="number" id="basket_amount" min="0" max="99" value="1"/></td>
                </tr>
                <tr>
                    <th>총 가격</th>
                    <td><input type="number" name="basket_sum" id="basket_sum" value="${goods.prd_price}" readonly/></td>
                </tr>
            </table>
            <div class="btn-container">
                <input type="button" class="btn-buy" onclick="buyGoods()" value="구매하기"/>
                <input type="button" class="btn-cart" onclick="insertCart()" value="장바구니"/>
            </div>
            <input type="hidden" name="prd_img" id="prd_img" value="${goods.prd_img}"/>
            <input type="hidden" name="member_id" id="member_id" value="${member.member_id}"/>
            <input type="hidden" name="prd_id" id="prd_id" value="${goods.prd_id}"/>
            <input type="hidden" name="prd_name" id="prd_name" value="${goods.prd_name}"/>
            <input type="hidden" name="hiddenbtn" id="hiddenbtn" value="prdpage"/>
        </form>
    </div>
</div>

<script>
    //수량이 늘어날 때 마다 가격을 늘려준다.
    $(document).ready(function () {

        var basketAmountInput = $('#basket_amount'); //수량
        var basketSumInput = $('#basket_sum'); //총 가격

        basketAmountInput.on('input', function () {
            var basketAmount = parseInt(basketAmountInput.val()) *${goods.prd_price};
            basketSumInput.val(basketAmount);
        });
    });

    function buyGoods() {
    	var member_id = $("#member_id").val();
        var basket_amount = parseInt($("#basket_amount").val());
        var basket_sum = $("#basket_sum").val();
        if (basket_amount == 0) {
            alert("수량을 선택해 주세요");
        }else if(!member_id){
        	swal({
        		icon : "warning",
        		text : "비회원은 이용하실 수 없습니다.",
        		closeOnClickOutside : false,
        		closeOnEsc : false,
        		/* buttons : [ "돌아가기", "회원가입" ], */
        		buttons: {
                    cancel: "돌아가기",
                    confirm: {
                        text: "회원가입",
                        value: "signup",
                    },
                },
        	}).then((value)=>{
        		if(value=="signup"){
        			window.location.href ="login";
        		}
        	});
        	
        }else {
            var check = confirm("주문 하시겠습니까?");
            if (check) {
                $.ajax({
                    type: "post",
                    url: 'goodsPayment',	/* goodsPayment 로 데터 전송.session에서 데이터 출력 가능. */
                    data: {
                        "prd_name": '${goods.prd_name}',
                        "order_amount": basket_amount,
                        "order_sum": basket_sum,
                        "member_id": '${member.member_id}',
                        "prd_id": '${goods.prd_id}',
                        "prd_img": '${goods.prd_img}'
                    }, success: function (data) {
                        window.open("goodsPayment", "", "width=600,height=800,");
                        /* location.href = "goodsPayment"; */
                    }
                });
            } else {
                alert("취소하셨습니다.");
            }
        }
    }
</script>

<%@ include file="../include/footer.jsp" %>
</body>
</html>
