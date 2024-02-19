<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">

    <script src="https://kit.fontawesome.com/f84cdf215e.js" crossorigin="anonymous"></script>
    <!-- 이모티콘  -->

    <link rel="stylesheet" href="resources/css/header.css"/>
    <!-- css -->


</head>

<!-- 로그인 확인 (임시용) -->
<h3><b style="color: blue;">${member.member_id}</b> is logged in. (임시 input) </h3>

<header class="header">

    <div id="login">

        <!-- 멤버가아닐경우뜨는 페이지 -->
        <c:if test="${empty member }">
            <a href="login" title="로그인"><i class="fa-solid fa-right-to-bracket"></i></a>
        </c:if>

        <!-- 멤버일경우뜨는페이지 -->
        <c:if test="${not empty member }">

            <!-- 멤버가 관리자가 아닐경우 -->
            <c:if test="${member.member_id ne 'admin' }">
                <a href="basketlist" title="장바구니"><i class="fa-solid fa-cart-shopping"></i></a>
                <a href="mypage" title="개인정보"><i class="fa-solid fa-user"></i></a>
                <a href="logout" class="logout" title="로그아웃"><i class="fa-solid fa-right-from-bracket"></i></a>
                <br><br>
                <div class="loginbox">
                </div>
            </c:if>

            <!-- 멤버가 관리자일 경우 -->
            <c:if test="${member.member_id eq 'admin' }">
                <a href="basketlist" title="장바구니"><i class="fa-solid fa-cart-shopping"></i></a>
                <a href="mypage" title="개인정보"><i class="fa-solid fa-user"></i></a>
                <a href="memberpage" title="회원관리 페이지"><i class="fa-solid fa-users"></i></a>
                <a href="insertProduct" title="굿즈관리"><i class="fa-brands fa-goodreads"></i></a>
                <a href="productList" title="굿즈리스트"><i class="fa-solid fa-list"></i></a>
                <a href="logout" class="logout" title="로그아웃"><i class="fa-solid fa-right-from-bracket"></i></a>
            </c:if>
        </c:if>
    </div>

    <div class="six">
        <a href="goodsmall"><h1>Goods</h1></a>

    </div>

</header>


</html>