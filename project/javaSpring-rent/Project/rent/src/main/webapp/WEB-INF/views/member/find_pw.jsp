<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<script src="http://code.jquery.com/jquery-1.10.1.js"></script>
	<script type="text/javascript" src="resources/js/login.js?12" charset="UTF-8"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<title>1team rent car</title>
<style>
	article{
		margin-top: 30px;
		display: flex;
		justify-content: center;     
	}
	input{
		margin-top: 20px;
		height: 30px;
		outline-color: rgb(31, 169, 255);
	}
	input[type=button]{
		width: 100px;
		border: 0px;
		border-radius: 4px;
		color: white;
		cursor: pointer;
		margin-left: 5px;       
	}
	span.log{
		font-size: 50px;
		margin-bottom: 30px;
	}
	/* --- 회원가입 효과--- */
	div#b2{
		margin-top: -350px;
		display: none;
		width: 500px;
		height: 60px;
		border: 0px;
		font-size: 15px;
		cursor: pointer;
		color: black;
		font-weight: bold;
	}
	/* 버튼 이미지 */
	#sub{
		border: 0px;
		border-radius: 5px;
		font-size: 15px;
		font-weight: bold;
		cursor: pointer;
		background-color: rgba(179, 179, 179, 0.6);
	}
	#sub{
		transition:0.3s;
		-webkit-transition: 0.3s;
		-moz-transition: 0.3s;
		-o-transition: 0.3s;
		-ms-transition:0.3s;
	}
	#sub:hover{
		font-size: 17px;
		background-color: rgba(131, 131, 131, 0.6);
	}
	h2{
		font-style: Gothic;
		color:rgb(31, 169, 255);
	}
    input[type=submit]{
		width: 400px;
		border: 0px;
		border-radius: 4px;
		background-color: rgba(179, 179, 179, 0.6);
		color: rgb(0, 0, 0);
		font-weight: bold;
		cursor: pointer;
		margin-left: 5px;   
	}
	input[type=submit]:hover{
		background-color: rgba(131, 131, 131, 0.6);
	}
	#lo {
		width: 170px;
	}
	#lo,.blog{
		transition:0.3s;
		-webkit-transition: 0.3s;
		-moz-transition: 0.3s;
		-o-transition: 0.3s;
		-ms-transition:0.3s;
		color:black;
	}
	#lo:hover{
		font-size: 16px;
		border: 1px solid rgb(31, 169, 255);
		background-color: rgb(31, 169, 255);
		color: #fff;
	}
</style>
</head>
<body>
	<%@ include file="../include/header.jsp" %>
	<article>  
		<dl>
			<h2>비밀번호 찾기</h2>
			<h3>등록한 회원정보 또는 본인인증으로 비밀번호를 찾을 수 있습니다.</h3>
			<form action="#" name="find-pw-info" id="find-pw-info" method="post">
				<h4>등록된 회원정보로 찾기</h4>
				<p>회원 가입 시 등록한 정보를 정확히 입력해주세요.</p>
					<!-- 아이디 -->
				<p>
					<label for="member_id">
						<input type="text" placeholder="아이디" name="member_id" id="member_id" required>
					</label>
				</p>
				<!-- 이름 -->
				<p>
					<label for="member_name">
						<input type="text" placeholder="이름" name="member_name" id="member_name" required>
					</label>
				</p>
				<!-- 전화번호 -->
				<p>
					<label for="member_phone">
						<select id="member_phone1" style="width: 70px; height: 35px;" required>
							<option value="" size="15" selected>선택</option>
							<option value="010">010</option>
							<option value="011">011</option>                    
						</select> -
			            <input type="text" name="member_phone" id="member_phone2" size="4" maxlength="4" onkeypress="onlyNumber()" required> -
			            <input type="text" name="member_phone" id="member_phone3" size="4" maxlength="4" onkeypress="onlyNumber()" required>            
					</label>
        			</p>
				<br><br><br>
				<!-- 비밀번호 찾기 -->
				<p><input id="lo" type="button" onclick="checkFP()" value="비밀번호 찾기"></p>
			</form><br><br>
			<p>위 방법으로 비밀번호를 찾을수 없는 경우 <a href="#" target="_blank">고객센터</a>에 문의해주세요.</p>
		</dl>
	</article>
	<%@ include file="../include/footer.jsp" %>
</body>
</html>