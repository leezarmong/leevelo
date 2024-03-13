<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>leeveloper</title>
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Custom CSS -->
    <link rel="stylesheet" href="resources/css/custom.css">

    <!-- JavaScript -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script type="text/javascript" src="resources/js/login.js"></script>
    
    <style type="text/css">
    /* Custom CSS */

/* Add your custom styles here */
.card {
    margin-top: 50px; /* Adjust the margin as per your design */
}

.btn {
    margin-right: 10px; /* Add some space between buttons */
}
    
    </style>
    
</head>
<body>
<div class="container">
    <div class="row justify-content-center mt-5">
        <div class="col-md-6">
            <div class="card">
                <div class="card-body">
                    <p>${member.member_name} 회원님의 아이디는 <b style="color: red;">${member.member_id}</b> 입니다.</p>
                    <button type="button" class="btn btn-primary" onclick="go_login()">로그인 하기</button>
                    <button type="button" class="btn btn-primary" onclick="change_pw()">비밀번호 찾기</button>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>