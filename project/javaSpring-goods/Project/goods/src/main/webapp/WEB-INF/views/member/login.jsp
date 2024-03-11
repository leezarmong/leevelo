<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login</title>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <!-- bootstrap -->

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


    </head>

   <body style="margin-top: 200px;">
        <%@ include file="../include/header.jsp" %>

        <div class="container">
            <div class="row justify-content-center mt-5">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header bg-primary text-white">
                            <h4 class="mb-0">Login</h4>
                        </div>
                        <div class="card-body">
                            <form id="loginForm" method="post">
                                <div class="form-group">
                                    <label for="username">Username</label>
                                    <input id="user" type="text" class="form-control" name="member_id" placeholder="Enter username">
                                </div>
                                <div class="form-group">
                                    <label for="password">Password</label>
                                    <input id="pass" type="password" class="form-control" name="member_pwd" placeholder="Enter password">
                                </div><br>
        
                                <input type="submit" class="btn btn-primary btn-block" id="loginBtn" value="Login"><br>
                                
                                <!-- 부가 버튼 -->
                                <div class="row justify-content-between mt-1">
                                    <div class="col-sm-4">
                                        <button  class="btn btn-primary btn-block">아이디찾기</button>
                                    </div>
                                    <div class="col-sm-4">
                                        <button  class="btn btn-primary btn-block">비밀번호 찾기</button>
                                    </div>
                                    <div class="col-sm-4">
                                        <a href="signup"  class="btn btn-primary btn-block">회원가입</a>
                                </div>

                            </form>
                        </div>
                    </div>

                </div>
            </div>
        </div>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        
    </body>

    </html>