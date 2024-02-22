<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE htm>
<html lang="ko">
	<head>
		<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <!-- jquery -->
    
		<script src="resources/js/mypage.js" charset="UTF-8"></script>
		<!-- js -->
		
		<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <!-- swal -->
		
	
 <title>leeveloper</title>
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
			<form >
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
							<input type="password" id="chk_member_pwd" class="input" maxlength="20" size="50" autocomplete="new-password"/>
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
						<th>이메일(선택)</th>
						<td>
                    <label for="email" class="label">현재 Email 주소 : </label>
					 
					 <label id="member_email" class="input">${member.member_email}</label>
					 <label id="idchk"></label><br><br>
					 
                    <input type="text" style="width: 140px; height: 35px;" name="str_email01" id="str_email01"
                           style="width: 110px;" required> @
                    <input type="text" style="width: 140px; height: 35px;" name="str_email02" id="str_email02"
                           style="width: 110px;" disabled value="naver.com" required>
                    <select name="selectEmail" id="selectEmail" style="width: 140px; height: 35px;">
                        <option value="" selected>::선택하세요::</option>
                        <option value="naver.com">naver.com</option>
                        <option value="gmail.com">gmail.com</option>
                        <option value="hanmail.net">hanmail.net</option>
                        <option value="nate.com">nate.com</option>
                        <option value="1">직접입력</option>
                    </select>
                    <script type="text/javascript">
                        $('#selectEmail').change(function () {
                            $("#selectEmail option:selected").each(function () {
                                if ($(this).val() == '1') {						//직접입력일 경우
                                    $("#str_email02").val('');					//값 초기화
                                    $("#str_email02").attr("disabled", false);	//활성화
                                } else {											//직접입력이 아닐경우
                                    $("#str_email02").val($(this).text());		//선택값 입력
                                    $("#str_email02").attr("disabled", true);	//비활성화
                                }
                            });
                        });
                    </script>
					<td>
                
					</tr>
					<tr>
						<th>연락처(선택)</th>
						<td>
						 <label for="phone" class="label">휴대폰 번호</label>

                    <select id="NUMst" name="member_phone" style="width: 140px; height: 35px;" required>
                        <option value="" size="50" selected>선택</option>
                        <option value="010">010</option>
                        <option value="011">011</option>
                    </select> -
                    <input type="text" style="width: 140px; height: 35px;" id="NUMnd" name="member_phone" maxlength="4"
                           size="15" onkeypress="onlyNumber()"/> -
                    <input type="text" style="width: 140px; height: 35px;" id="NUMrd" name="member_phone" maxlength="4"
                           size="15" onkeypress="onlyNumber()"/>
						</td>
					</tr>
					
					
				</table>
			</form>
			<input type="button" onclick="myinfoUp()" style="cursor: pointer" value="수정" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="button" onClick="location.href='mypage'" style="cursor: pointer" value="취소" /><br><br><br>
		</div>
	</section>
	<%@ include file="../include/footer.jsp" %>
</body>
</html>