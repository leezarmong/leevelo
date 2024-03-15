<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>leeveloper</title>

	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
  	<!-- jquery -->
        
   <script type="text/javascript" src="resources/js/login.js" charset="UTF-8"></script>
   <!-- js -->
   
   <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <!-- swal -->
   
</head>
<body>


    <div id=changePT>

        아이디 : ${member.member_id}

        <input type="password" id="member_pwd" placeholder="비밀번호 확인">
        <input type="password" id="member_password_two" placeholder="비밀번호 재확인">
        <label id="check_password"></label><br>

        <input type="button" id="changepw" value="비밀번호 변경" onclick="changePass()">

        <input type="hidden" id="member_id" value="${member.member_id}">
        <input type="hidden" id="member_name" value="${member.member_name}">

    </div>

    <script>

        $("#changePT").keypress(function (e) {
            if (e.keyCode == 13) {
            	changePass();
            }
        });

    </script>

</body>
</html>