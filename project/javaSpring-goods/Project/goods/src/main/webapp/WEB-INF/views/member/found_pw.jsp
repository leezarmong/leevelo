<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>leeveloper</title>

<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<!-- Bootstrap CSS -->

<script type="text/javascript" src="resources/js/login.js" charset="UTF-8"></script>
<!-- js -->

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<!-- swal -->

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<!-- jquery -->

</head>
<body>

<div class="container mt-5">
    <div class="card">
        <div class="card-body">
            <h5 class="card-title">비밀번호 변경</h5>
            <form id="changePasswordForm">
                <div class="form-group">
                    <label for="member_id">아이디:</label>
                    <input type="text" class="form-control" id="member_id" value="${member.member_id}" disabled>
                </div>
                <div class="form-group">
                    <label for="member_pwd">비밀번호 확인:</label>
                    <input type="password" class="form-control" id="member_pwd" placeholder="비밀번호 확인">
                </div>
                <div class="form-group">
                    <label for="member_password_two">비밀번호 재확인:</label>
                    <input type="password" class="form-control" id="member_password_two" placeholder="비밀번호 재확인">
                </div>
                <div class="form-group">
                    <label id="check_password" class="text-danger"></label><br> <!-- Password check label -->
                </div>
                <button type="button" class="btn btn-primary mt-3" id="changepw" onclick="changePass()">비밀번호 변경</button>
                <input type="hidden" id="member_name" value="${member.member_name}">
            </form>
        </div>
    </div>
</div>

<!-- Bootstrap JS and jQuery -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<script>
    $(document).ready(function(){
        $(".container").keypress(function (e) {
            if (e.keyCode == 13) {
                changePass();
            }
        });

        $("#member_password_two").keyup(function() {
            var check_password = $("#check_password");
            
            if ($("#member_pwd").val() == "" || $("#member_password_two").val() == "") {
                check_password.css("color", "red");
                check_password.text("필수 정보입니다.");
                
            } else if ($("#member_pwd").val() != $("#member_password_two").val()) {
                
                check_password.text("패스워드가 동일하지 않습니다.");
                check_password.css("color", "red");
                
            } else {    
                
                check_password.text("패스워드가 동일합니다.");
                check_password.css("color", "green");
            }
        });
    });
</script>


</body>
</html>
