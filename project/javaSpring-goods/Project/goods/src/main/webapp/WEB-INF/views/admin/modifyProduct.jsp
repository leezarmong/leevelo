<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE HTML>
<html lang="ko">
<head>
<title>leeveloper</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <!-- jquery -->
	<script src="resources/js/product.js" charset="UTF-8"></script>
	<!-- js -->
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	
	<link rel="stylesheet" type="text/css" href="resources/css/insertproduct.css">
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<%@ include file="../include/header.jsp"%>		
	<h2 align="center">차량 등록</h2>
	<section>
		<form id="fileForm" action="insertProduct" method="POST" enctype="multipart/form-data">
			<table align="center">
				<tr>
					<th>카테고리</th>
					<td>
						<select name="cate_id" id="cate_id" >
							<option value="" selected>선택</option>
					<c:choose>							
						<c:when test="${product.cate_id eq 'IN20220926'}">
							<option value="IN20220926" selected>인기차량</option>
							<option value="SO20220926">소/준중형</option>
							<option value="JO20220926">중형</option>
							<option value="DA20220926">대형</option>
							<option value="SU20220629">SUV/RV</option>
						</c:when>
						<c:when test="${product.cate_id eq 'SO20220926'}">
							<option value="IN20220926">인기차량</option>
							<option value="SO20220926" selected>소/준중형</option>
							<option value="JO20220926">중형</option>
							<option value="DA20220926">대형</option>
							<option value="SU20220629">SUV/RV</option>
						</c:when>
						<c:when test="${product.cate_id eq 'JO20220926'}">
							<option value="IN20220926">인기차량</option>
							<option value="SO20220926">소/준중형</option>
							<option value="JO20220926" selected>중형</option>
							<option value="DA20220926">대형</option>
							<option value="SU20220629">SUV/RV</option>
						</c:when>
						<c:when test="${product.cate_id eq 'DA20220926'}">
							<option value="IN20220926">인기차량</option>
							<option value="SO20220926">소/준중형</option>
							<option value="JO20220926">중형</option>
							<option value="DA20220926" selected>대형</option>
							<option value="SU20220629">SUV/RV</option>
						</c:when>
						<c:otherwise>
							<option value="IN20220926">인기차량</option>
							<option value="SO20220926">소/준중형</option>
							<option value="JO20220926">중형</option>
							<option value="DA20220926">대형</option>
							<option value="SU20220629" selected>SUV/RV</option>
						</c:otherwise>
					</c:choose>
						</select>
					</td>
				</tr>
				<input type="hidden" name="prd_id" id="prd_id" value="${product.prd_id}" />
				<tr>
					<th>모델 이름</th>
					<td>
						<input type="text" name="prd_name" id="prd_name" value="${product.prd_name}" />
					</td>
				</tr>
				<tr>
					<th>상품가격</th>
					<td>
						<input type="text" name="prd_price" id="prd_price" value="${product.prd_price}"  />
					</td>
				</tr>
				<tr>
					<th>이미지</th>
					<td>
						<img src="${product.prd_img}" width="200" height="100" >
					</td>
				</tr>
				<tr>
					<th>모델 설명</th>
					<td>
						<input type="text" name="prd_explain" id="prd_explain" value="${product.prd_explain}"/>
					</td>
				</tr>
			</table>
			<hr><br>			
			<div align="center">
			<%-- 	<tr><th style="font-size:20px;"><strong>모델 설명</strong><th><br><br>
					<td>
						<c:set var="exp_length" value="${fn:length(product.prd_explain)}"/>
						<input type="hidden" name="exp_length" id="exp_length" value="${exp_length}" />	
						<textarea name="prd_explain" id="prd_explain" cols="40" rows="15" >${product.prd_explain}</textarea>
<script>
	CKEDITOR.replace('prd_explain', {});
</script>
						
					</td>
				</tr> --%><br>
				<tr>
					<td colspan="2" align="center">
						<input type="button" value="차량 등록" onclick="doModifyProduct()" style="margin-bottom: 40px;"/>
					</td>
				</tr>
			</div>
		</form>
	</section>
	<%@ include file="../include/footer.jsp"%>
</body>
</html>