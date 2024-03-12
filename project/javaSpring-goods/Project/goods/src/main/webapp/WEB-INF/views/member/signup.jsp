<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
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


    <style>
        body {
            background-color: #f8f9fa;
            margin-top: 200px;
        }

        .card {
            border: none;
            border-radius: 15px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .card-header {
            background-color: #007bff;
            border-radius: 15px 15px 0 0;
        }

        .card-header h4 {
            color: #fff;
            margin-bottom: 0;
        }

        .form-control {
            border-radius: 8px;
            border: 1px solid #ced4da;
        }

        .btn-primary {
            border-radius: 8px;
            padding: 10px 20px;
            background-color: #007bff;
            border: none;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }
    </style>
</head>

<body>
   <%@ include file="../include/header.jsp" %>
    <div class="container mt-6">
        <div class="row justify-content-center">
            <div class="col-md-7">
                <div class="card">
                    <div class="card-header">
                        <h4 class="text-center mb-0">Sign Up</h4>
                    </div>
                    <div class="card-body">
                        <form id="signupForm">

                            <!-- id -->
                            <div class="form-group">
                                <input type="text" class="form-control" id="member_id" placeholder="id" required>
                                <label id="idCheck"></label>
                                <button type="button" class="btn btn-primary btn-block" onclick="checkID()">중복검사</button>
                            </div><br>

                            <!-- password -->
                            <div class="form-group">
                                <input type="password" class="form-control" id="member_pwd" placeholder="password"
                                    required="required"><br>
                                <input type="password" class="form-control" id="member_pwdTwo"
                                    placeholder="passwordCheck" required="required">
                                <label id="check_password"></label><br><br>
                            </div>
                             <script>
                                //비밀번호 체크
                                $(document).ready(function () {


                                    $("#member_pwdTwo").keyup(function () {
                                        //.keyup(function()) = 상황(조건)이 됐을때 이벤트를 바로 발생시켜주는것.
                                        var check_password = $("#check_password");

                                        if ($("#member_pwd").val() == "" || $("#member_pwdTwo").val() == "") {
                                            check_password.css("color", "red");
                                            check_password.text("필수정보입니다.");

                                        } else if ($("#member_pwd").val() != $("#member_pwdTwo").val()) {

                                            check_password.text("패스워드가 동일하지 않습니다.");
                                            check_password.css("color", "red");

                                        } else {

                                            check_password.text("패스워드가 동일합니다.");
                                            check_password.css("color", "green");
                                        }
                                    });

                                });
                            </script>
                            

                            <!-- name -->
                            <div class="form-group">
                                <input type="tel" class="form-control" id="member_name" placeholder="Name" required><br>
                            </div>
                            

                            <!-- phone -->
                            <div class="form-group row">
                                <div class="col-sm-3">
                                    <select id="NUMst" class="form-control" name="member_phone">
                                        <option value="" selected>Phone</option>
                                        <option value="010">010</option>
                                        <option value="011">011</option>
                                    </select>
                                </div>
                                <div class="col-sm-0">
                                    <span>-</span>
                                </div>
                                <div class="col-sm-4">
                                    <input type="text" class="form-control" id="NUMnd" name="member_phone" maxlength="4"
                                        size="13" onkeypress="onlyNumber()">
                                </div>
                                <div class="col-sm-0">
                                    <span>-</span>
                                </div>
                                <div class="col-sm-4">
                                    <input type="text" class="form-control" id="NUMrd" name="member_phone" maxlength="4"
                                        size="13" onkeypress="onlyNumber()">
                                </div>
                            </div><br>

                            <!-- age -->
                            <div class="form-group">
                                <input type="number" id="member_age" class="form-control" id="age" placeholder="Age"
                                    required><br>
                            </div>

                            <!-- email -->
                            <div class="form-group row">
                                <div class="col-sm-3">
                                    <input type="text" class="form-control" name="str_email01" id="str_email01"
                                        placeholder="E-mail" required>
                                </div>
                                <div class="col-sm-0">
                                    <span>@</span>
                                </div>
                                <div class="col-sm-4">
                                    <input type="text" class="form-control" name="str_email02" id="str_email02" disabled
                                        value="naver.com" required>
                                </div>
                                <div class="col-sm-4">
                                    <select name="selectEmail" class="form-control" id="selectEmail">
                                        <option value="" selected>::선택하세요::</option>
                                        <option value="naver.com">naver.com</option>
                                        <option value="gmail.com">gmail.com</option>
                                        <option value="hanmail.net">hanmail.net</option>
                                        <option value="nate.com">nate.com</option>
                                        <option value="1">직접입력</option>
                                    </select>
                                </div>
                            </div>
                            <script type="text/javascript">
                                $('#selectEmail').change(function () {
                                    $("#selectEmail option:selected").each(function () {
                                        if ($(this).val() == '1') { //직접입력일 경우
                                            $("#str_email02").val(''); //값 초기화
                                            $("#str_email02").attr("disabled", false); //활성화
                                        } else { //직접입력이 아닐경우
                                            $("#str_email02").val($(this).text()); //선택값 입력
                                            $("#str_email02").attr("disabled", true); //비활성화
                                        }
                                    });
                                });
                            </script><br>

                            <!-- addr -->
                            <div class="form-group">
                                <input type="text" class="form-control" name="member_addr" id="member_addr"
                                    class="input" placeholder="Address" readonly size="10">
                                <br>
                                <input type="button" class="btn btn-primary btn-block" onclick="searchPost()"
                                    style="cursor: pointer" value="우편번호 찾기"><br>
                                <input type="text" class="form-control" name="member_faddr" id="member_faddr"
                                    class="input" size="50" readonly><br>
                                <input type="text" class="form-control" name="member_laddr" id="member_laddr"
                                    class="input" size="50" placeholder="상세 주소를 입력하세요.">
                            </div><br><br>


                            <button type="button" class="btn btn-primary btn-block" onclick="doSignup()">Sign Up</button>
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