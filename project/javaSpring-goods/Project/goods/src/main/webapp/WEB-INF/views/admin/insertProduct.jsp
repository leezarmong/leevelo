<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="ko">
<head>
<title>test</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="resources/js/product.js" charset="UTF-8"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script src="resources/ckeditor/ckeditor.js"></script>
	<link rel="stylesheet" type="text/css" href="resources/css/insertproduct.css">
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<%@ include file="../include/header.jsp"%>		
	<h2 align="center">차량 등록</h2>
	<section>
		<form action="/insertProduct" method="post" enctype="multipart/form-data">
			<table align="center">
				<tr>
					<th>카테고리</th>
					<td>
						<select name="cate_id" id="cate_id" >
							<option value="" selected>선택</option>
							<option value="IN20220926">인기차량</option>
							<option value="SO20220926">소/준중형</option>
							<option value="JO20220926">중형</option>
							<option value="DA20220926">대형</option>
							<option value="SU20220629">SUV/RV</option>						
						</select>
					</td>
				</tr>
				<tr>
					<th>모델 이름</th>
					<td>
						<input type="text" name="prd_name" id="prd_name" />
					</td>
				</tr>
	                  <div>
				<tr>
					<th>모델 번호</th>
					<td>
						<input type="text" name="prd_id" id="prd_id" />
						<input type="button" value="중복 확인" onclick="prdidChk()"><br/>
					</td>
				</tr>
	                  </div>
				<tr>
					<th>상품가격</th>
					<td>
						<input type="text" name="prd_price" id="prd_price" onkeypress="onlyNumber()" />
					</td>
				</tr>
				<tr>
					<th>배송비</th>
					<td>
						<input type="text" name="prd_delivery" id="prd_delivery" onkeypress="onlyNumber()" />
					</td>
				</tr>
				<tr>
					<th>재고</th>
					<td>
						<input type="text" name="prd_stock" id="prd_stock" onkeypress="onlyNumber()" />
					</td>
				</tr>
				<tr>
					<th>옵션</th>
					<td>
						<input type="text" name="prd_option" id="prd_option" />
					</td>
				</tr>
				<tr>
					<th>할인금액</th>
					<td>
						<input type="text" name="prd_discount" id="prd_discount" onkeypress="onlyNumber()" />			
						</td>
				</tr>
				<tr>
				
					<th>이미지</th>
					<td>
						<input type="file" name="uploadFile" id="uploadFile"/>
					</td>
				</tr>
			</table>
			<hr><br>
			<div align="center">
				<tr>
					<th style="font-size:20px;"><strong>모델 설명</strong><th><br><br>
					<td>
						<textarea name="prd_explain" id="prd_explain" cols="40" rows="15"></textarea>
<script>
	CKEDITOR.replace('prd_explain', {});
</script>
					</td>
				</tr><br>
				<tr>
					<td colspan="2" align="center">
							<input type="button" value="차량 등록" onclick="doInsertProduct()" style="margin-bottom: 40px;"/>
					</td>
				</tr>
			</div>
		</form>
	</section>
	<%@ include file="../include/footer.jsp"%>
</body>
</html>