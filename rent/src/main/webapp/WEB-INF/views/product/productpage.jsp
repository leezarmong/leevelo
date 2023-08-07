<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script type="text/javascript" src="resources/js/product.js" charset="UTF-8"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" type="text/css" href="resources/css/productpage.css">
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<title>1team rent car</title>
<style type="text/css">
	p.logname{
		color:  rgb(31, 169, 255);
		font-size: 30px;
		font-weight: bold;
	}
</style>
</head>
<body>		
<script>
	$("#buy_quantity").keyup(function(e){
		var regNumber = /^([0-9]{2})$/;
		var str = $(this).val();
		if(!regNumber.test(str)) {
			var res = str.substring(0, str.length-1);
			$(this).val(res);
		}
	});
	function mxNum(object) {
		if (object.value.length > object.maxLength) {
			object.value = object.value.slice(0, object.maxLength);
		}
	}
</script>

	<%@ include file="../include/header.jsp"%>

	<br><br><br>
	<p class="logname">${member.member_name} 님의 예약상품<p><br><br>
	<div class="productdetail" style="margin-top: 30px;">
		<form>
			<img class="productLeft" src="${product.prd_img}">
			<div class="productRight"> 
				<table id="selected">
					<tbody>
						<tr>
							<th width="150" height:"50">상품명</th>
							<td>${product.prd_name}</td>
						</tr>
						<tr>
							<th width="150" height:"50">가격</th>
							<td><fmt:formatNumber value="${product.prd_price}" pattern="#,###"/>원</td>
						</tr>
						<tr>
							<th width="150" height:"50">상품코드</th>
							<td>${product.prd_id}</td>
						</tr>
						<tr>
							<th width="150" height:"50">수량</th>
							<td><input style="border:0; padding-left: 50px; height:40;" text-align="center" type="number" id="buy_quantity" min="1" maxlength="2" max="99" value="1" oninput="mxNum(this)" /></td>
						</tr>
						<tr>
							<th width="150" height:"50">보험선택</th>
							<td>${bt.bt_name}</td>
						</tr>
					</tbody>
				</table><br><br><br>
				<input type="hidden" name="prd_img" id="prd_img" value="${product.prd_img}" />
				<input type="hidden" name="member_id" id="member_id" value="${member.member_id}" />
				<input type="hidden" name="prd_id" id="prd_id" value="${product.prd_id}" />
				<input type="hidden" name="prd_opt" id="prd_opt" value="${bt.bt_name}" />
				<p align="left">
					<input type="button" name="buy" id="buy" onclick="buyProduct()" value="예약하기" />&nbsp;&nbsp;&nbsp;
					<input type="hidden" name="hiddenbtn" id="hiddenbtn" value="prdpage" />
				</p>
			</div>
		</form>
	</div>
	<div class="detail">
		<table style="width: 700px;">
			<tr>
				<th>차량 옵션 설명</th>
			</tr>
			<tr>
				<td>${product.prd_explain}</td>
			</tr>
		</table>
	</div><br><br>
<%@ include file="../include/footer.jsp"%>
</body>
</html>