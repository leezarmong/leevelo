<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<!-- jquery -->

<link rel="stylesheet" href="resources/css/login.css">
<!-- css -->

<script type="text/javascript" src="resources/js/signup.js"></script>
<!-- signup js -->  

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
 <!-- 이모티콘 -->
 
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<!-- 카카오 지도 라이브러리 -->
 
<title>Login</title>
</head>
<body>
<%@ include file="../include/header.jsp" %>

		<!-- 1page -->
	 <div class="login-wrap">
    <div class="login-html">
      <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">로그인</label>
      <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">회원가입</label>
      <div class="login-form">
        <div class="sign-in-htm">
        
        
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
            <label for="user" class="label">아이디</label>
            <input id="member_id" type="text" class="input" name="member_id"><br>
            
            <button type="button"class="button" id="checkID" onClick="idCheck">중복검사</button>
          </div>
          <div class="group">
            <label for="pass" class="label">비밀번호</label>
            <input id="member_pwd" type="password" class="input" name="member_pwd">
          </div>
          <div class="group">
            <label for="passCheck" class="label">비밀번호 확인</label>
            <input id="member_pwdTwo" type="password" class="input">
            
            <span id="checkPasswd"></span>
          </div>
          <div class="group">
            <label for="name" class="label">이름</label>
            <input id="member_name" type="text" class="input" name="member_name">
            
          </div>
          <div class="group">
            <label for="phone" class="label">휴대폰 번호</label>
            <input id="member_phone" type="text" class="input" name="member_phone">
          </div>
          
          <div class="group">
            <label for="age" class="label">나이</label>
            <input id="member_age" type="number" class="input" name="member_age">
          </div>
          <div class="group">
            <label for="email" class="label">Email 주소</label>
           <!--  <input id="email" type="email" class="input" name="member_email"> -->
            
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
            
          </div>
          <div class="group">
            <label for="address" class="label">주소</label>
            <input id="member_addr" type="text" class="input" name="member_addr">
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