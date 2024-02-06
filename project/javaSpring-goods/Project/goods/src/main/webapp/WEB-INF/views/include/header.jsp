<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,700&display=swap"
	rel="stylesheet" />

<script src="https://kit.fontawesome.com/f84cdf215e.js" crossorigin="anonymous"></script>
<!-- 이모티콘 -->

<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<!-- jquery -->

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
<!-- stylesheet -->

<link rel="stylesheet" href="resources/css/header.css" />
<!-- css -->

</head>

<header class="header">
<div class="mobile">
	<i class="fa fa-bars"></i>
</div>
<div id="login">


	<!-- 멤버가아닐경우뜨는 페이지 -->
	<c:if test="${empty member }">
		
		<a href="login" title="로그인"><i class="fa-solid fa-right-to-bracket"></i></a>
		<input type="hidden" id="member_id" value="${member.member_id}"/>
	</c:if>
	
	<!-- 멤버일경우뜨는페이지 -->
	<c:if test="${not empty member }">
		<!-- 멤버가 관리자가 아닐경우 -->
		<c:if test="${member.member_id ne 'admin' }"> 
		<a href="basketlist" title="장바구니"><i class="fa-solid fa-cart-shopping" ></i></a>
		<a href="mypage" title="개인정보"><i class="fa-solid fa-user"></i></a>
		<a href="#" class="logout" title="로그아웃"><i class="fa-solid fa-right-from-bracket"></i></a>
		</c:if>
		
		<!-- 멤버가 관리자일 경우 -->
		<c:if test="${member.member_id eq 'admin' }">
		<a href="basketlist" title="장바구니"><i class="fa-solid fa-cart-shopping"></i></a>
		<a href="mypage" title="개인정보">개인정보</a>
		<a href="insert">굿즈관리</a>	
		<a href="memberpage"><i class="fa-solid fa-users"></i></a>
		<a href="#" class="logout" title="로그아웃"><i class="fa-solid fa-right-from-bracket"></i></a>
	</c:if>
</c:if>
</div>

<div class="six">
	<a href="main"><h1>Goods</h1></a>
	
</div>
</header>

<script src="resources/js/header.js"></script>
</html>