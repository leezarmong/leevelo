<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<script src="resources/js/signup.js" charset="UTF-8"></script>
<!-- signup js --> 

<link rel="stylesheet" href="resources/css/login.css">
<!-- css --> 

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<!-- 카카오 지도 라이브러리 -->

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<!-- swal -->

<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<!-- jquery -->
 
<title>Login</title>
</head>
<body>
<%@ include file="../include/header.jsp" %> 

		
	 <div class="login-wrap">
    <div class="login-html">
      <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">로그인</label>
      <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">회원가입</label>
      <div class="login-form">
        <div class="sign-in-htm">
        
        <!-- 1page -->
        <form id="loginForm" method="post">
          <div class="group">
            <label for="user" class="label">아이디</label>
            <input id="user" type="text" class="input" name="member_id">
          </div>
          <div class="group">
            <label for="pass" class="label">비밀번호</label>
            <input id="pass" type="password" class="input" name="member_pwd">
          </div>
         
          <div class="group">
            <input type="submit" class="button" id="loginBtn" value="Sign In">
          </div>
          <div class="hr"></div>
          <div class="foot-lnk">
          </div>
          </form>
       
        </div>
        <div class="sign-up-htm">
        
        <!-- 2page 회원가입-->
        
        
          <div class="group">  
		
			
			<label for="name">아이디</label>
			<input type="text" id="member_id" class="input" placeholder="id" required="required">
			<label id="idCheck"></label><br><br>
			<input type="button" class="button" value="중복검사" onclick="checkID()">
			
			
			
          </div>
          
          <div class="group">
            <label for="pass" class="label">비밀번호</label>
            <input type="password" class="input" id="member_pwd" placeholder="password" required="required">
          </div>
          <div class="group">
            <label for="passCheck" class="label">비밀번호 확인</label>
            <input type="password" class="input" id="member_pwdTwo" placeholder="passwordCheck" required="required">
            <label id="check_password"></label><br><br><br>
          </div>
          <div class="group">
            <label for="name" class="label">이름</label>
            <input id="member_name" type="text" class="input" name="member_name">
            
          </div>
          <div class="group">
            <label for="phone" class="label">휴대폰 번호</label>
            
            <select id="NUMst" name="member_phone" style="width: 140px; height: 35px;" required>
				<option value="" size="50" selected>선택</option>
				<option value="010">010</option>
				<option value="011">011</option>
			</select> - 
			<input type="text" style="width: 140px; height: 35px;" id="NUMnd" name="member_phone" maxlength="4" size="15" onkeypress="onlyNumber()" /> - 
			<input type="text" style="width: 140px; height: 35px;" id="NUMrd" name="member_phone" maxlength="4" size="15" onkeypress="onlyNumber()" />
         
          </div>
          
          <div class="group">
            <label for="age" class="label">나이</label>
            <input id="member_age" type="number" class="input" name="member_age">
          </div>
          <div class="group">
            <label for="email" class="label">Email 주소</label>
           <!--  <input id="email" type="email" class="input" name="member_email"> -->
            
            <input type="text" style="width: 140px; height: 35px;" name="str_email01" id="str_email01" style="width: 110px;" required> @
			<input type="text" style="width: 140px; height: 35px;" name="str_email02" id="str_email02" style="width: 110px;"  disabled value="naver.com" required>
					<select  name="selectEmail" id="selectEmail" style="width: 140px; height: 35px;">
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
            
          </div>
          <div class="group">
            <label for="address" class="label">주소</label>
            <input type="text" name="member_addr" id="member_addr" class="input" readonly size="10">
            <br>
			<input type="button" class="button" onclick="searchPost()" style="cursor: pointer" value="우편번호 찾기"><br>
			<input type="text" name="member_faddr" id="member_faddr" class="input" size="50" readonly><br>
			<input type="text" name="member_laddr" id="member_laddr" class="input" size="50" placeholder="상세 주소를 입력하세요.">
         
          </div>
          <div class="group">
            <label for="key" class="label">주민등록번호</label>
            <input id="member_key" type="number" class="input" name="member_key">
          </div>
          <div class="group">
            <input type="button" class="button" id="signBtn" onclick="doSignup()" value="Sign Up">
          </div>
          <div class="hr"></div>
          <div class="foot-lnk">
          </div>
          
         
          
        </div>
        
      </div>
      
    </div>
    
  </div>
  
  
</body>
</html>