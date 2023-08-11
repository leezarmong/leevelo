<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>1team rent car</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script type="text/javascript" src="resources/js/product.js" charset="UTF-8"></script>
	<link rel="stylesheet" href="./resources/css/introduction.css">
<style>
	/* 버튼 */
	input.btn_reserve {
		background-color: #c0c0c0;
		border: 0px;
		color: rgb(46, 46, 46);
		font-weight: bold;
		border-radius: 4px;
		align-items: right;
		width: 200px;
		height: 40px;
	}
	input.btn_reserve:hover {
		background-color: rgb(31, 169, 255);
		color: white;
		transition: 0.3s;
		-webkit-transition: 0.3s;
		-moz-transition: 0.3s;
		-o-transition: 0.3s;
		-ms-transition: 0.3s;
	}
	#imgb {
		display: none; 
	}	
	#imgb+label{
		border-radius: 4px;
		border: 1px solid black;
		display: inline-block;
		cursor: pointer;
		height: 120px;
		width: 450px;
		margin-top: 12px;
		margin-left: 20px;
		line-height: 24px;
		text-align: center;
		font-size:13px;	  
		/* 그라데이션 */
		transition:0.3s;
		-webkit-transition: 0.3s;
		-moz-transition: 0.3s;
		-o-transition: 0.3s;
		-ms-transition:0.3s;
	}	
	#imgb:checked+label.imgbl{
		border: 3px solid rgb(31, 169, 255);	
	}
	img.it{
		float:left;
		width: 250px ;
		height:50 px;
		cursor: pointer;		 
	}	
	span.imgfont{
		font-size: 23px;	
	}	
</style>
<script>
	function list(cate_id, page) {
		location.href="category?cate_id="+cate_id+"&curPage="+page;
	}
</script>
</head>
<body>
	<%@ include file="../include/header.jsp"%>
	<section style="margin-top: 100px;">
		<section class="line">
			<article>
				<form action="productpage.jsp" method="post">
					<p class="name">차량손해면책제도(보험) 선택</p>
					<div id="radio">
						<input type="radio" id="select" name="seoul"  value="ac">
						<label for="select">
							<p style="color: rgb(31, 169, 255); font-size: 25px;">완전 자차</p><br>
							<p style="color: rgb(92, 92, 92); font-size: 17px; margin-top: -13px;">고객 부담금 0 원</p>
						</label><br>
						<input type="radio" id="select2" name="seoul"  value="no1">
						<label for="select2">
						<p style="color: rgb(31, 169, 255); font-size: 25px;">일반 자차 1</p><br>
						<p style="color: rgb(92, 92, 92); font-size: 17px; margin-top: -13px;">고객 부담금 30 만원</p>
						</label><br>
						<input type="radio" id="select3" name="seoul"  value="no2">
						<label for="select3">
							<p style="color: rgb(31, 169, 255); font-size: 25px;">일반 자차 2</p><br>
							<p style="color: rgb(92, 92, 92); font-size: 17px; margin-top: -13px;">고객 부담금 70 만원</p>
						</label><br>
					</div>				
				</form>
			</article>
			<article class="right_article">
				<ul>
					<li onclick="location.href='category?cate_id=IN20220926'" class="list" data-filter="category1">인기차량</li>
					<li onclick="location.href='category?cate_id=SO20220926'" class="list" data-filter="category2">소/준중형</li>
					<li onclick="location.href='category?cate_id=JO20220926'" class="list" data-filter="category3">중형</li>
					<li onclick="location.href='category?cate_id=DA20220926'" class="list" data-filter="category4">대형</li>
					<li onclick="location.href='category?cate_id=SU20220629'" class="list" data-filter="category5">SUV/RV</li>
				</ul>
				<c:if test="${(fn:length(map.list)) eq 0}">
					준비된 차량이 없습니다.
				</c:if>
				<c:forEach begin="0" end="${(fn:length(map.list) + 3) / 4 - 1}" var="row">
					<c:forEach begin="0" end="3" var="col">
						<c:set var="item" value="${map.list[row * 4 + col]}" />
						<c:if test="${not empty item}">
							<div style="cursor: pointer; height: 120px;">  									
								<label class="imgbl">
									<input type="radio" id="imgb" name="car" value="productpage?prd_id=${item.prd_id}" >				
									<img  class="it" src="${item.prd_img}"><br>
									<span class="imgfont">${item.prd_name}<br><fmt:formatNumber value="${item.prd_price}" pattern="#,###,###"/>원 </span>
								</label>					
							</div>
						</c:if>
					</c:forEach>
				</c:forEach>		
			</article>
		</section>
	</section>	
	<section style="margin-top: 30px; margin-bottom: 50px;" ></section>
	<%@ include file="../include/footer.jsp"%>
</body>
</html>