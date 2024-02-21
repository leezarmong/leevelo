<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE HTML>
<html lang="ko">
<head>
<title>leeveloper</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<!-- jquery -->
	
	<script src="resources/js/product.js" charset="UTF-8"></script>
	<!-- js -->
	
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<!-- swal -->
	
	<link rel="stylesheet" type="text/css" href="resources/css/productList.css">
	<!-- css -->
	
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script>
	function list(page) {
		location.href="productList?curPage="+page;
	}
	function searchPrd2() {
		var sea = $("#sPrd2").val();
		self.location = "searchPrd2?sPrd2=" + sea;
	}	
</script>			

</head>
<body>
	<%@ include file="../include/header.jsp" %>
	<section><br><br><br><br><br>
		
		<div id="search" align="center">
			<input type="text" name="sPrd2" id="sPrd2" placeholder="굿즈 검색" onkeypress="if(event.keyCode == 13) {searchPrd2(); return;}">
			<button type="button" id="searchBtn" onclick="searchPrd2()" style="cursor: pointer;">
				<strong>검색</strong>
			</button>
		</div>
		<h2 align="center" style="color: red; font-size: 18px;">이미지를 누르면 수정 등록 가능합니다.</h2><br><br>
		<form name="f3rm" id="f3rm" enctype="multipart/form-data">
			<table align="center">
				<tr>
					<th style="font-size: 20px;height:50px; width: 200px; color:white; background-color:#15b400;">카테고리</th>
					<th style="font-size: 20px; width: 200px; color:white; background-color:#15b400;">이미지</th>
					<th style="width: 150px; font-size: 20px; color:white; background-color:#15b400;">모델</th>
					<th style="width: 150px; font-size: 20px; color:white; background-color:#15b400;">모델 번호</th>
					<th style="font-size: 20px; width: 200px; color:white; background-color:#15b400;">가격</th>
					<th style="font-size: 20px; width: 200px; color:white; background-color:#15b400;">상품 삭제</th>
				</tr>
				<hr><br><br><br>
		<c:forEach begin="0" end="${(fn:length(map.list))}" var="i">
			<c:set var="product" value="${map.list[i]}" />
			<c:if test="${not empty product}">
				<tr>
					<td>${product.cate_id}</td>
					<td>
						<a href="modifyproduct?prd_id=${product.prd_id}"  style="width: 200px;">
							<img src="${product.prd_img}" width="200" height="100" class="product-image">
						</a>
					</td>
					<td style=" text-align: center;">${product.prd_name}</td>
					<td style=" text-align: center;">${product.prd_id}</td>
					<td style=" text-align: center;">${product.prd_price}</td>
					<td style=" text-align: center;">
						<img src="resources/img/image/close.png" class="${product.prd_id}"  id="delId" name="${product.prd_img}"  onclick="delp(this)" style="width: 30px; cursor: pointer;"  title="삭제">
					</td>
				</tr>
			</c:if>
		</c:forEach>
				<tr>
					<td colspan="7" align="center">
						<c:if test="${map.pager.curBlock > 1}">
							<a href="#" onclick="list('1')">[처음]</a>
						</c:if>
						<c:if test="${map.pager.curBlock > 1}">
							<a href="#" onclick="list('${map.pager.prevPage}')">[이전]</a>
						</c:if>
						<c:forEach var="num" begin="${map.pager.blockBegin}" end="${map.pager.blockEnd}">
							<c:choose>
								<c:when test="${num == map.pager.curPage}">
									<span style="color:red; ">${num}</span>
								</c:when>
								<c:otherwise>
									<a href="#" onclick="list('${num}')">${num}</a>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:if test="${map.pager.curBlock < map.pager.totBlock}">
							<a href="#" onclick="list('${map.pager.nextPage}')">[다음]</a>
						</c:if>
						<c:if test="${map.pager.curBlock < map.pager.totPage}">
							<a href="#" onclick="list('${map.pager.totPage}')">[끝]</a>
						</c:if>
					</td>
				</tr>
			</table>				
		</form><br><br><br>
	</section>
	<%@ include file="../include/footer.jsp" %>
</body>
</html>