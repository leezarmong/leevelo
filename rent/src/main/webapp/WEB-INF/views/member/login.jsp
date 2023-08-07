<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8"> 
	<script src="http://code.jquery.com/jquery-1.10.1.js"></script>
	<script type="text/javascript" src="resources/js/login.js?129" charset="UTF-8"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<title>1team rent car</title>
<script>
	$(document).ready(function(){
		$("#box").fadeIn('1000',function(){
		});
	});
</script>
<style>  
	section{
		display: flex;
		justify-content: center;
	}
	article{
		margin-top: 80px;
		border: 0px;
		width: 500px;
		height: 340px;
	}
	div.cen{
		display: flex;
		justify-content: center;
	}
	input{
		margin-top: 20px;
		height: 30px;
	}
	input[type=button]{
		width: 430px;
		border: 0px;
		border-radius: 4px;
		background-color: rgba(179, 179, 179, 0.6);
		color: rgb(0, 0, 0);
		font-weight: bold;
		cursor: pointer;
		margin-left: 5px;
	}
	input[type=button]:hover{
		background-color: rgba(131, 131, 131, 0.6);
	}
	span.title_login {
		font-size: 50px;
		font-weight: bold;
		color: black;
	}
	/* 비로그인 */
	div.non-member_login{
		margin-top: 40px;
		float: right;
	}
	span.non-member_login{
		font-size: 17px;
		font-weight: bold;
		color:rgb(31, 169, 255);	   
	}
	span.non-member_login:hover{
		font-size: 18px;
	}
	/* - 로그인 글자 */
	#btn_member-login,.blog{
		transition:0.3s;
		-webkit-transition: 0.3s;
		-moz-transition: 0.3s;
		-o-transition: 0.3s;
		-ms-transition:0.3s;
	}
	#btn_member-login:hover{
	    font-size: 16px;
	}
	#find_wrap{
	   text-align: center;
	   font-size: 17px;
	}
	#box{
		display: none;
	}
</style>
</head> 
<body>
	<%@ include file="../include/header.jsp" %>
	<section>
		<div id="box">
			<article>
				<div class="cen">
					<div style="margin-top: 50px; ">
						<div id="login">
							<span class="title_login">로그인 </span><br>
							<input style="border-radius: 5px; font-size: 15px;" type="text" name="member_id" id="member_id" size="50" placeholder="아이디 입력"><br>
							<input style="border-radius: 5px; font-size: 15px;" type="password" name="member_password" id="member_password" size="50" placeholder="비밀번호 입력" onclick="enterkey()"><br><br><br>    
							<div style="float: center-right;">
								<input id="btn_member-login" value="로그인"  type="button" onclick="memberCheck()"><br><br>
							</div>               
<!-- 로그인 엔터 -->
<script type="text/javascript">
	$("#login").keypress(function(e) {
		if (e.keyCode === 13) {
			memberCheck();
		}
	}); 
</script>
						</div>
						<div id="find_wrap">
							<a href="find_id" style="color: rgb(0, 0, 0); text-decoration: none; font-weight: bold;">아이디 찾기</a> |
							<a href="find_pw" style="color: rgb(0, 0, 0); text-decoration: none; font-weight: bold;">비밀번호 찾기</a> |
							<a href="conditions" style="color: rgb(0, 0, 0); text-decoration: none; font-weight: bold;">회원가입</a><br>
						</div>
					</div>
				</div> 
			</article>
		</div>
	</section>
	<footer style="margin-top: 310px;">
		<%@ include file="../include/footer.jsp" %>
	</footer>
</body>
</html>