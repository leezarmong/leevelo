<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>1team rent car</title>	
	<meta charset="UTF-8">
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="resources/js/signup.js" charset="UTF-8"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />	
<script>
	$(document).ready(function(){
		$("#b2").delay(500).fadeIn('1000');
	});   
</script>
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
		color: black;
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
	#btn_sign-up{
		border: 0px;
		border-radius: 5px;
		font-size: 15px;
		font-weight: bold;
		cursor: pointer;
		background-color: rgba(179, 179, 179, 0.6);
		transition:0.3s;
		-webkit-transition: 0.3s;
		-moz-transition: 0.3s;
		-o-transition: 0.3s;
		-ms-transition:0.3s;
	}
	#btn_sign-up:hover{
		font-size: 17px;
		background-color: rgba(131, 131, 131, 0.6);
	}
	/* --- dl 면허 관련부분--- */
	dt{
		margin-left: 7%;
		font-weight: bold;
	}
	select.driver-license{
		width: 388px;
		height: 36px;
	}
	/* 구분선 */
	hr{
		width: 530px;
	}
	h2{
		font-style: Gothic;
		color:rgb(31, 169, 255);
	}
	pre{
		background-color: rgb(255, 235, 54);
		padding-top: 10px;
		font-weight: bold;
		width: 385px;
		margin-left: 40px;  
	}
</style>
</head> 
<body>
	<%@ include file="../include/header.jsp" %>
	<article>
		<dl>              
			<h2>회원가입</a></h2>
			<dl>
				<dt>아이디</dt>
					<dd><input type="text" id="member_id" size="50" required><input type="button" onClick="idChk()" style="cursor: pointer" value="중복확인" /></dd><br>
					<dd><label id="idchk"></label></dd>
				<dt>비밀번호</dt>
					<dd><input type="password" id="member_password" size="50" placeholder="10~16자로 입력해주세요." required></dd><br>
				<dt>비밀번호 재확인</dt>
					<dd><input type="password" id="chk_member_pwd" size="50" maxlength="20" required/></dd>
					<dd><label id="checkPasswd"></label></dd><br>
				<dt>이름</dt>
					<dd><input type="text" id="member_name" size="50" required></dd><br>
					<dd><label id="chkname"></label></dd>
				<dt>생년월일</dt>
					<dd>
						<select id="birth_year" style="width: 115px; height: 38px;">
							<option value="">년</option>
							<c:forEach var="i" begin="0" end="${2019-1900}">
								<c:set var="yearOption" value="${2019-i}" />
								<option value="${yearOption}">${yearOption}</option>
							</c:forEach>
						</select>
						<select id="birth_month" style="width: 115px; height: 38px;">
							<option value="">월</option>
							<c:forEach var="j" begin="0" end="${12-1}">
								<c:set var="monthOption" value="${12-j}" />
								<option value="${monthOption}">${monthOption}</option>
							</c:forEach>
						</select> 
						<input type="text" id="birth_day" size="15" class="input" maxlength="2" placeholder="일"/><br>
						<label id="birchk"></label>
					</dd><br>
				<dt>이메일</dt>
					<dd>
						<input type="text" name="str_email01" id="str_email01" style="width: 110px;" required> @
						<input type="text" name="str_email02" id="str_email02" style="width: 110px;"  disabled value="naver.com" required>
						<select  name="selectEmail" id="selectEmail" style="width: 120px; height: 38px;">
							<option value="" selected>::선택하세요::</option>
							<option value="naver.com">naver.com</option>
							<option value="gmail.com">gmail.com</option>
							<option value="hanmail.net">hanmail.net</option>
							<option value="nate.com">nate.com</option>
							<option value="1">직접입력</option>
						</select>
<script type="text/javascript">  
	$('#selectEmail').change(function(){
		$("#selectEmail option:selected").each(function () {
			if($(this).val()== '1'){						//직접입력일 경우
				$("#str_email02").val('');					//값 초기화
				$("#str_email02").attr("disabled",false);	//활성화
			}else{											//직접입력이 아닐경우
				$("#str_email02").val($(this).text());		//선택값 입력
				$("#str_email02").attr("disabled",true);	//비활성화
			}
		});
	});
</script>
					</dd><br>
				<dt>연락처</dt>
					<dd>
						<select id="NUMst" name="member_phone" style="width: 70px; height: 35px;" required>
							<option value="" size="15" selected>선택</option>
							<option value="010">010</option>
							<option value="011">011</option>
						</select> - 
						<input type="text" id="NUMnd" name="member_phone" maxlength="4" size="15" onkeypress="onlyNumber()" /> - 
						<input type="text" id="NUMrd" name="member_phone" maxlength="4" size="15" onkeypress="onlyNumber()" />
					</dd><br>      
				<dt>주소</dt>
					<dd>
						<input type="text" name="member_zipcode" id="member_zipcode" class="input" readonly size="10">
						<input type="button" onclick="searchPost()" style="cursor: pointer" value="우편번호 찾기"><br>
						<input type="text" name="member_faddr" id="member_faddr" class="input" size="50" readonly><br>
						<input type="text" name="member_laddr" id="member_laddr" class="input" size="50" placeholder="상세 주소를 입력하세요.">
					</dd><br>
				<hr>
				<h2>운전면허정보 등록</h2><br>
				<dt>면허 구분</dt><br>
					<dd>
						<select class="driver-license" name="licence" id="licence" required>
							<option value="국내">국내</option>
							<option value="해외">해외</option>
						</select>
					</dd><br>  
				<dt>운전면허 등록이름</dt>
					<dd><input type="text" size="50" required></dd><br>
				<dt>면허 종류</dt><br>
					<dd>
					<select class="driver-license" name="licence" id="licence"  required>
						<option value="">면허 종류를 선택해주세요.</option>
						<option value="2N">1종 보통면허</option>
						<option value="2N">2종 보통면허</option>
						<option value="1B">1종 대형면허</option>
						<option value="1S">1종 특수면허</option>
					</select>
					</dd><br>
				<dt>면허 번호</dt>
					<dd>
						<input type="text" id="member_license" size="50" placeholder="경기1381846970" required><br>
					</dd>
				<pre>
 예시)  
 (구)면허증: 서울 01-123456-00 → 서울0112345600
 (신)면허증: 11-01-123456-00 → 110112345600    
				</pre><br>
				<dt>만료일자</dt>		
					<dd>
						<input type="text" size="50" placeholder="적성검사 만료일을 입력해주세요  예)20250101" required>
					</dd><br>  
				<dt>발급일자</dt>
					<dd><input type="text" size="50" placeholder="20200101" required></dd><br><br><br>
					<dd><input id="btn_sign-up" type="button" onclick="doSignup()" value="회원가입" style="width: 388px; height: 36px;"></dd><br><br>
			</dl>
		</dl>
	</article>
	<%@ include file="../include/footer.jsp" %>
</body>
</html>