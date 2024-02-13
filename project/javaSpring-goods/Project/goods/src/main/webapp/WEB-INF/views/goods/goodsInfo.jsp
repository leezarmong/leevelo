<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <!-- jquery -->

    <link rel="stylesheet" type="text/css" href="resources/css/goodsInfo.css">
    <!-- css -->

	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <!-- swal -->

    <style type="text/css">
        p.logname {
            color: rgb(31, 169, 255);
            font-size: 30px;
            font-weight: bold;
        }
    </style>
</head>
<body>
<script>
    $("#buy_quantity").keyup(function (e) {
        var regNumber = /^([0-9]{2})$/;
        var str = $(this).val();
        if (!regNumber.test(str)) {
            var res = str.substring(0, str.length - 1);
            $(this).val(res);
        }
    });

    function mxNum(object) {
        if (object.value.length > object.maxLength) {
            object.value = object.value.slice(0, object.maxLength);
        }
    }
</script>


<br><br><br>
<p class="logname">${member.member_id} 님의 예약상품
<p><br><br>
    <div class="productdetail" style="margin-top: 30px;">
        <form>
            <img class="productLeft" src="${goods.prd_img }">
            <div class="productRight">
                <table id="selected">
                    <tbody>
                    <tr>
                        <th width="150" height=
                        "50">상품명</th>
                        <td>${goods.prd_name}</td>
                    </tr>
                    <tr>
                        <th width="150" height:
                        "50">가격</th>
                        <td><fmt:formatNumber value="${goods.prd_price}" pattern="#,###"/>원</td>
                    </tr>
                    <tr>
                        <th width="150" height:
                        "50">상품코드</th>
                        <td>${goods.prd_id}</td>
                    </tr>
                    <tr>
                        <th width="150" height:
                        "50">수량</th>
                        <td><input type="number" id="basket_amount" min="0" maxlength="2" max="99" value="1"/></td>
                    </tr>
                    <tr>
                        <th width="150" height:
                        "50">총 가격</th>
                        <td><input type="number" name="basket_sum" id="basket_sum" value="${goods.prd_price}" readonly/>
                        </td>
                    </tr>
                    </tbody>
                </table>
                <br><br><br>
                <input type="hidden" name="prd_img" id="prd_img" value="${goods.prd_img}"/>
                <input type="hidden" name="member_id" id="member_id" value="${member.member_id}"/>
                <input type="hidden" name="prd_id" id="prd_id" value="${goods.prd_id}"/>
                <input type="hidden" name="prd_name" id="prd_name" value="${goods.prd_name}"/>
<p align="left">
    <input type="button" name="buy" id="buy" onclick="buyGoods()" value="구매하기"/>&nbsp;&nbsp;&nbsp;
    <input type="button" name="cart" id="buy" onclick="insertCart()" value="장바구니"/>
    <input type="hidden" name="hiddenbtn" id="hiddenbtn" value="prdpage"/>
</p>
</div>
</form>
</div>


<script type="text/javascript" src="resources/js/cart.js" charset="UTF-8"></script>

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