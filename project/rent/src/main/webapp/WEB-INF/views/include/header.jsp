<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script src="resources/js/login.js" charset="UTF-8"></script>
	<link rel="stylesheet" href="resources/css/header.css">
</head>
<body>
	<header>  
		<ul class="gnb cf">
			<a href="main" title="홈으로">
				<img src="resources/car/CarLogo_image.png" style="width: 250px; height:120px; margin-top: -40px; margin-right: 50px;">
			</a>
			<li class="depth1">
          		<a href="vehicle">Oneteam차량</a>
        	</li>
			<li class="depth1">
				<a href="#">driving</a>
				<ul class="depth2">
					<li><a href="destinations">전국 여행</a></li>
					<li><a href="destinationstwo">서울 근교 여행</a></li>
				</ul>
			</li>
			<li class="depth1">
				<a href="#">회사소개</a>
				<ul class="depth2">
					<li><a href="aboutus">대표인사</a></li>
					<li><a href="map">오시는길</a></li>
				</ul>
			</li>
			<li class="depth1">
				<a href="#">고객지원</a>
				<ul class="depth2">
					<li><a onclick="location.href='board'" style="cursor: pointer;">공지사항</a></li>
					<li><a href="faq">FaQ</a></li>
				</ul>
			</li>
			<c:choose>		
				<c:when test="${member.member_id eq 'oneteam'}">
					<li class="depth1">
						<a onclick="location.href='memberList'" style="color: red; cursor: pointer;">회원 관리</a>
					</li>
				</c:when>
			</c:choose>
		</ul>
		<input type="hidden" id="myp" value="${myp}" />
		<input type="hidden" id="mymember_id" value="${member.member_id}" >
		<c:choose>
			<c:when test="${member.member_id eq 'oneteam'}">
				<div id="icon">
					<!-- 상품등록 페이지 -->
					<img style="cursor: pointer;" onclick="location.href='prdinsert'" src="./resources/image/plus.png" width="50px" title="차량 등록"><!-- 관리자 용 상품 목록 -->
					<img style="cursor: pointer;" onclick="location.href='productList'" src="./resources/image/list.png" width="50px" title="차량 목록">				
					<a href="logout" style="text-decoration: none;">
					<img onclick="location.href='logout'" src="./resources/image/logout.png" width="50px" title="로그아웃"></a>
				</div>
			</c:when>			
			<c:when test="${member.member_id == null}">
				<div id="icon">
					<a href="login" style="text-decoration: none;">
					<img src="./resources/image/login.png" width="50px" title="로그인"></a>
				</div>
			</c:when>
			<c:when test="${member.member_password == null}">
				<div id="icon">
		  			<a href="login" style="text-decoration: none;">
		  			<img src="./resources/image/login.png" width="50px" title="로그인"></a>
				</div>
			</c:when>			
			<c:otherwise>
				<div id="icon">
		        	<img style="cursor: pointer;" onClick="mypBtn()" src="./resources/image/my1.png" width="50px" title="마이페이지">		
		        	<a href="logout" style="text-decoration: none;"><!-- 자동차 예약 링크 -->
		        	<img onclick="location.href='logout'" src="./resources/image/logout2.png" width="50px" title="로그아웃"></a>
				</div>    
				<div id="user"><b>${member.member_name}</b>님이 로그인 하셨습니다.</div>
			</c:otherwise>
		</c:choose>
		<hr style="width: 100%; margin-top: -30px;">
	</header>
</body>
</html>