<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login</title>

<!-- login.js -->
<script src="resources/js/login.js" charset="UTF-8"></script>

<!-- index css -->
<link rel="stylesheet" href="resources/css/index.css">

</head>
<body>


<!-- 로그인이 안되어 있을때  -->
<c:if test="${empty member}"> 

	<div class="container">
      <h1>look 입니다.</h1>
      	<div class="buttons">
        	<button class="login-btn" onclick="location.href='userlogin'">Login</button>
        	<button class="signup-btn" onclick="location.href='signup'">Signup</button>
      </div>
    </div>

</c:if>
  
  
  <!-- 로그인이 되어 있을때 -->
<c:if test="${not empty member}">
	
	
	<div class="container">
      <h1>look 입니다.</h1>
      <h1><b style="color: blue;">${member.member_id}</b> 님이 로그인 했습니다. </h1> <br>
      	<div class="buttons">
        	<button class="login-btn" onclick="location.href='insert'">Insert</button>
        	<button class="signup-btn" onclick="location.href='list'">List</button>
        	<button class="signup-btn" onclick="location.href='logout'">Logout</button>
        	
        	<!-- 운영자 일 경우 -->
        	<c:if test="${member.member_id eq 'admin'}">
        	<button class="adsignup-btn" onclick="location.href='goodsEnroll'">admin_goodsEnroll</button>
        	</c:if>
        	
      </div>
    </div>

</c:if>



</body>
</html>