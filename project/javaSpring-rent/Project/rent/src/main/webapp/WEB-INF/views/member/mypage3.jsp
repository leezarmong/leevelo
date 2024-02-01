<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE htm>
<html lang="ko">
	<head>
		<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
		<script src="resources/js/mypage.js" charset="UTF-8"></script>
		<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
		<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
		<!-- <link rel="stylesheet" type="text/css" href="resources/css/mypage.css?"> -->
		<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />
<title>1team rent car</title>
<style>	
	#f1rm table{
		margin-top: 50px;
		margin-bottom: 40px;
	}

    #f1rm th{
		border-right: 1px solid #E1DCDC;
	}

	#f1rm th,td{
		border-top:1px solid #E1DCDC;
	}

	#a{
		border-bottom:1px solid #E1DCDC;
	}

	table{
		display: flex;
		justify-content: center; 
		margin-top: 50px;
		margin-bottom: 40px;  
	}

	h2{
		align: center;
		margin-top: 50px;
		font-style: Gothic;
		color:rgb(31, 169, 255);
	}
	
	input{
		margin-top: 5px;
		margin-bottom: 5px;
		height: 30px;
	}
	    
	input[type=button]{
		width: 120px;
		border: none;
		border-radius: 4px;
		color: black;
		background-color: rgba(179, 179, 179, 0.6); 
		cursor: pointer;
		margin-left: 5px; 
		text-align: center; 
		font-size: 15px;   
	}

	input[type=button]:hover{
		transition:0.3s;
		-webkit-transition: 0.3s;
		-moz-transition: 0.3s;
		-o-transition: 0.3s;
		-ms-transition:0.3s;
		font-size: 16px;
		color: white;
		background-color: rgb(31, 169, 255);
	}

	th{
		margin-left: 7%;
		font-weight: bold;    
	}

	td{
		size: 100px;
		placeholder:1900 required;
		padding: 20px;
	}  

	h2{
		font-style: Gothic;
		color:rgb(31, 169, 255);
	}

	select{
		height: 30px;
	}
	div{
		display: center;
		align-items: center;
	}
</style>
</head>
<body>
	<%@ include file="../include/header.jsp" %>
	<section>
		<div align="center">
			<form name="f1rm" id="f1rm">
				<h2>회원 정보 수정</h2>
				<table cellpadding="0" cellspacing="0">
					<tr>
						<th>아이디</th>
						<td>
							<label class="input" onFocus="">${member.member_id}</label><br>
							<input type="hidden"  id="member_id" value="${member.member_id}">
							<label id="idchk"></label>
						</td>
					</tr>
					<tr>
						<th>변경할 비밀번호</th>
						<td>
							<input type="password" id="member_password" class="input" maxlength="20" size="50" />
						</td>
					</tr>
					<tr>
						<th>비밀번호 확인</th>
						<td>
							<input type="password" id="chk_member_pwd" class="input" maxlength="20" size="50" />
						</td>
					</tr>
					<tr>				
						<td></td>			
						<td style="height: 70px;">
							<label id="checkPasswd"></label>
						</td>
					</tr>
					<tr>
						<th>이름</th>
						<td>
							<label id="member_name" class="input">${member.member_name}</label><br>
							<label id="chkname"></label>
						</td>
					</tr>
					<tr>
						<th>생년월일</th>
						<td>
						<label id="member_year" class="input">${member.member_year}</label><br>
						</td>
					</tr>
					<tr>
						<th>이메일(선택)</th>
						<td>
							<!-- email split해서 값 넣어주기 -->
							<!-- c:set 셋팅 -->
							<c:set var="m_email" value="${member.member_email}" />
							<c:set var="memail" value="${fn:split(m_email, '@') }" />
							<!-- 배열 인덱스로 불러옴 -->
							<input type="text" size="13" id="email_id" class="input" value="${memail[0] }"> @ 
							<input type="text" size="13" id="email_addr" class="input" value="${memail[1] }" disabled>
							<select id="email_select">
								<option value="" selected >::선택하세요::</option>
								<option value="naver.com">naver.com</option>
								<option value="gmail.com">gmail.com</option>
								<option value="hanmail.net">hanmail.net</option>
								<option value="nate.com">nate.com</option>
								<option value="1">직접입력</option>
							</select>
						</td>
					</tr>
					<tr>
						<th>연락처(선택)</th>
						<td>
							<!-- phone split해서 값 넣어주기 -->
							<!-- c:set 셋팅 -->
							<c:set var="m_phone" value="${member.member_phone}" />
							<c:set var="mphone" value="${fn:split(m_phone, '-') }" />
							<!-- 배열 인덱스로 불러옴 -->
							<select id="NUMst" style="width: 100px">
								<option value="${mphone[0]}" selected>${mphone[0]}</option>
								<option value="010" selected>010</option>
								<option value="011">011</option>
								<option value="016">016</option>
							</select> - 
							<input type="text" id="NUMnd" name="member_phone" class="input" maxlength="4" size="13" value="${mphone[1]}" onkeypress="onlyNumber()" /> - 
							<input type="text" id="NUMrd" name="member_phone" class="input" maxlength="4" size="13" value="${mphone[2]}" onkeypress="onlyNumber()" />
						</td>
					</tr>
					<tr>
						<th>주소</th>
						<td>
							<input type="text" name="member_zipcode" id="member_zipcode" class="input" readonly size="20" value="${member.member_zipcode}">
							<input type="buttons" onclick="searchPost()" style="cursor: pointer" value="우편번호 찾기"><br><br>
							<input type="text" name="member_faddr" id="member_faddr" class="input" size="50" value="${member.member_faddr}" readonly><br>
						</td>
			
					</tr>
						<th id="a">상세주소</th>
						<td id="a"><input type="text" name="member_laddr" id="member_laddr" class="input" size="50" value="${member.member_laddr}"></td>
					</tr>
					<tr>
						<th>면허 번호</th>
						<td>
							<input type="text" id="member_license" value="${member.member_license}" ><br>
						</td>
			
					</tr>
				</table>
			</form>
			<input type="button" onclick="myinfoUp()" style="cursor: pointer" value="수정" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="button" onClick="mypBtn()" style="cursor: pointer" value="취소" /><br><br><br>
		</div>
	</section>
	<%@ include file="../include/footer.jsp" %>
</body>
</html>