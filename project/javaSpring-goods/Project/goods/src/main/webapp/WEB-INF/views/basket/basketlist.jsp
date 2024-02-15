<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE>
<html>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<!-- jquery -->

<link rel="stylesheet" href="resources/css/basketlist.css"/>
<!-- css -->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>장바구니</title>
</head>

<body class="basketlist">
<%@ include file="../include/header.jsp" %>
<h1>장바구니</h1>
<table>
    <thead>
    <tr>
        <th><input id="checkAll" type="checkbox" checked/></th>
        <th>아이디</th>
        <th>상품이름</th>
        <th>수량</th>
        <th>가격</th>
        <th>지우기</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${basketList}" var="basket">
        <tr>
            <td><input type="checkbox" name="chk" onclick="calCart()" value="${basket.prd_id}" checked/>
                <input type="hidden" name="prd_sum" value="${basket.basket_sum}"/>
                <input type="hidden" name="amt_sum" value="${basket.basket_amount}"/>
                <input type="hidden" id="member_id" value="${member.member_id}"/>
                <input type="hidden" name="prd_name" class="prd_name" value="${basket.prd_name}"/></td>
            <td>${member.member_id}</td>
            <td><a href='/basket/get?prd_id=${basket.prd_id}&member_id=${member.member_id}'>${basket.prd_name}</a></td>
            <td>${basket.basket_amount}</td>
            <td>${basket.basket_sum}</td>
            <td><a href="delbasket?prd_id=${basket.prd_id}&member_id=${member.member_id}">삭제</a>
            </td>
        </tr>
        <c:set var="totalCount" value="${totalCount+1}"></c:set>
    </c:forEach>
    <c:forEach items="${basketList}" var="basket">
        <c:set var="priceSum" value="${priceSum + basket.basket_sum}"/>
        <c:set var="amountSum" value="${amountSum + basket.basket_amount}"/>
    </c:forEach>
    </tbody>
</table>

<table>
    <h1>결제</h1>
    <table class="cart3" align="center">
        <tr align="center">
            <th colspan="2">총 상품 금액</th>
        </tr>
    </table>
    <tr>
        <td colspan="2">
            <h2 id="prd_sum">
                금액:<fmt:formatNumber value="${priceSum}" pattern="#,###"/>원
            </h2>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <h2 id="amt_sum">
                수량:<fmt:formatNumber value="${amountSum}" pattern="#,###"/>개
            </h2>
        </td>
    </tr>
    <tr>
        <td><input type="button" id="payCart" onclick="payCart()" value="결제하기"/>
			<input type="hidden" name="hiddenbtn" id="hiddenbtn" value="cartpage"/>
			<a href="goodsmall" id="home">취소</a></td>
    </tr>
</table>
<c:set var="count" value="${totalCount-1}"/>
<c:set var="prd_name" value="${basketList[0].prd_name}외 ${count}개"/>
<script>
    $(document)
        .ready(
            function () { // 최상단 체크박스 클릭
                $("#checkAll").click(
                    function () { // 클릭
                        if ($("#checkAll").prop("checked")) { // input tag name="chk" checked=true
                            $("input[name=chk]").prop(
                                "checked", true);
                        } else {
                            $("input[name=chk]").prop(
                                "checked", false);
                        }
                    })
                $("input[name=chk]")
                    .click(
                        function () {
                            if ($("input[name=chk]").length == $("input[name=chk]:checkbox:checked").length) {
                                $("#checkAll").prop(
                                    "checked", true);
                            } else {
                                $("#checkAll").prop(
                                    "checked", false);
                            }
                        })
            });

    function payCart() {

        var member_id = $("#member_id").val();
        var hiddenbtn = $("#hiddenbtn").val();

        if ($("input[name=chk]:checkbox:checked").length == 0) {
            alert("결제할 상품을 선택해주세요.");
        } else {
            $.ajax({
                type: "post",
                url: 'goodsPayment',
                data: {
                    "prd_name": '${prd_name}',
                    "order_amount": '${amountSum}',
                    "order_sum": '${priceSum}',
                    "member_id": '${member.member_id}',
                    "prd_id": '1',
                    "basket": 'basket'
                },
                success: function (data) {
                    var childWindow = window.open("goodsPayment", "",
                        "width=600,height=800,");

                    var checkChildWindow = setInterval(function () {
                        if (childWindow.closed) {
                            clearInterval(checkChildWindow);
                            location.href = "basketlist";
                        }
                    }, 1000);
                    // location.href = "goodsPayment";
                }
            });
        }
    }

    function calCart() {
        var prd_sum = 0;
        for (i = 0; i < $("input[name=chk]").length; i++) {
            if ($("input[name=chk]")[i].checked == true) {
                prd_sum += parseInt($("input[name=prd_sum]")[i].value);
            }
        }
        document.getElementById("prd_sum").innerHTML = numberWithCommas(prd_sum);
    }

    function numberWithCommas(x) {
        return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    }
</script>
</body>

</html>