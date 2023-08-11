<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>1team rent car</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="resources/js/member.js" charset="UTF-8"></script>
	<link rel="stylesheet" type="text/css" href="resources/css/product.css">
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script>
	function list(sPrd2, page) {
		location.href = "searchMem?sPrd2=" + sPrd2 + "&curPage=" + page;
	}
</script>		
<style type="text/css">
	div.lis{
		display: flex;
		justify-content: center;
	}
	.ove:hover{
		color: red;
		transition:0.3s;
		-webkit-transition: 0.3s;
		-moz-transition: 0.3s;
		-o-transition: 0.3s;
		-ms-transition:0.3s;
	}
</style>	
</head>
<body>
	<%@ include file="../include/header.jsp"%>
	<br><br><br>
	<div id="pdc">				
		<p style="text-align: center; font-size: 40px; color: rgb(31, 169, 255);">찾으시는 회원</p><br><br> 
		<h2 align="center" style="color: red; font-size: 18px;">회원 이름을 누르면 정보 수정 가능합니다.</h2><br><br>
		<table style="display: flex; justify-content: center; text-align: center;">
			<tr>
				<td style="font-weight:bold; font-size: 20px;height:50px; width: 200px; color:white; background-color:rgb(31, 169, 255);">회원 이름</td>
				<td style="width: 200px; font-weight:bold; font-size: 20px;height:50px;  color:white; background-color:rgb(31, 169, 255);">회원 정보 삭제</td>
			</tr>			
		<c:if test="${(fn:length(map.list)) eq 0}">
			<tr><td colspan="4">회원이 없습니다.</td></tr>
		</c:if>
		<c:forEach begin="0" end="${(fn:length(map.list) + 3) / 4 - 1}" var="row">
		<c:forEach begin="0" end="3" var="col">
			<c:set var="item" value="${map.list[row * 4 + col]}"/>
			<c:if test="${not empty item}">
				<tr>	
					<td>
						<div class="lis">
							<a href="modifyMember?member_id=${item.member_id}"  style="width: 200px;">
							<p class="ove" style="font-size: 20px; ">${item.member_name} 님</p></a>
						</div>	
					</td>								
					<td style=" text-align: center; width: 200px;">
						<img src="resources/image/close.png" name="${item.member_id}" onclick="delM(this)" style="width: 30px; cursor: pointer;" title="삭제">	
					</td>						
				</tr>
			</c:if>
		</c:forEach>
		</c:forEach>
			<c:if test="${(fn:length(map.list)) ne 0}">
				<tr>
					<td colspan="4" align="center">
					<c:if test="${map.pager.curBlock > 1}">
						<a href="#" onClick="list('${map.sPrd}', '1')">[처음]</a>
					</c:if>
					<c:if test="${map.pager.curBlock > 1}">
						<a href="#" onClick="list('${map.sPrd}', '${map.pager.prevPage}')">[이전]</a>
					</c:if>
					<c:forEach var="num" begin="${map.pager.blockBegin}" end="${map.pager.blockEnd}">
						<c:choose>
							<c:when test="${num == map.pager.curPage}">
								<br><br><br><br> <br><br><br><br>
								<span style="color: red; font-size: 20px;">${num}</span>
							</c:when>
							<c:otherwise>
								<a href="#" onClick="list('${map.sPrd}', '${num}')">${num}</a>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:if test="${map.pager.curBlock < map.pager.totBlock}">
						<a href="#" onClick="list('${map.sPrd}', '${map.pager.nextPage}')">[다음]</a>
					</c:if>
					<c:if test="${map.pager.curBlock < map.pager.totPage}">
						<a href="#" onClick="list('${map.sPrd}', '${map.pager.totPage}')">[끝]</a>
					</c:if>
					</td>
				</tr>
			</c:if>
		</table>
	</div>
	<div style="margin-top: 150px;">
	<%@ include file="../include/footer.jsp" %>
	</div>
</body>
</html>