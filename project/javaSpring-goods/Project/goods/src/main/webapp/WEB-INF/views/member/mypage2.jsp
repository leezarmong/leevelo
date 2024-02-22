<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE htm>
<html lang="ko">
<head>
<title>leeveloper</title>
		<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <!-- jquery -->
		
		<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
		<link rel="stylesheet" type="text/css" href="resources/css/mypage.css">
		<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script>
	// 마이페이지2 비밀번호 확인
	function mypg2() {
		var member_id = $("#member_id").val();
		var member_pwd = $("#member_pwd").val();
	
		if (!member_id || !member_pwd) {
			swal("", "패스워드를 입력해주세요.", "error");
		} else {
			$.ajax({
				type : "POST",
				url : "checkMember",
				data : {
					"member_id" : member_id,
					"member_pwd" : member_pwd
				}, success : function(data) {
					if (data != 0) {
						$.ajax({
							type : "POST",
							url : "mypage2",
							data : {
								"member_id" : member_id,
								"member_pwd" : member_pwd
							}, success : function() { window.location.href = "mypage3"; }
						});
					} else {
						swal("", "패스워드를 확인해주세요.", "warning")
					}
				}, error : function(data) {
					console.log(data);
				}
			});
		}
	}
</script>
<style type="text/css">
	section{
		display: flex;
		justify-content: center;
	}
	ul{
		margin-top:80px;
		list-style: none;
	}
	li{
		font-size: 20px;
	}
	input[type=text]{
		height: 40px;
		outline-color:rgb(31, 169, 255); ;
	}
	input[type=password]{
		height: 40px;
		outline-color:rgb(31, 169, 255); ;
	}		
</style>
</head>
<body>
	<%@ include file="../include/header.jsp" %>
	<section>	
	<div style="width: 500px;">
	<br> <br>
		<ul>
			<li style="height: 100px;">
				<p style="font-size: 50px; font-weight: bold;">비밀번호 확인</p> 
			</li>
			<li>회원 아이디</li>
			<li style="margin-top: 20px;">
				<input type="text" id="member_id" value="${member.member_id}" size="50">
			</li>
			<li style="margin-top: 30px;">
				비밀 번호
			</li>
			<li style="margin-top: 20px;">
				<input type="password" value="" size="50" id="member_pwd" placeholder="비밀번호 확인">
			</li>
		</ul>	
		</div>
	</section>
	<div class="checkbtn" align="center" style="margin-right: 25px;">
		<br><br><br>
		
			<!-- 회원 비밀번호 체크 -->
			<input type="button" class="confirm" value="확인" onClick="mypg2()" style="height: 30px; border-radius: 4px; width: 180px;" /> &nbsp;&nbsp;
			<input type="button" class="cancel" value="취소" onClick="location.href='mypage'"  style="height: 30px; border-radius: 4px; width: 180px;"/>
	</div>
	
		<%@ include file="../include/footer.jsp" %>
	
</body>
</html>