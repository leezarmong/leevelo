<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>leeveloper</title>
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <!-- jquery -->
    <script src="resources/js/mypage.js" charset="UTF-8"></script>
    <!-- js -->
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <!-- swal -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Bootstrap CSS -->
    <style>
        /* Custom CSS styles can be retained here */
    </style>
</head>
<body>
<%@ include file="../include/header.jsp" %>
<section>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <form>
                    <h2 class="text-center mb-4">회원 정보 수정</h2>
                    <table class="table">
                        <tr>
                            <th scope="col">아이디</th>
                            <td>
                                <label class="form-control">${member.member_id}</label>
                                <input type="hidden" id="member_id" value="${member.member_id}">
                                <label id="idchk"></label>
                            </td>
                        </tr>
                        <tr>
                            <th scope="col">변경할 비밀번호</th>
                            <td>
                                <input type="password" id="member_password" class="form-control" maxlength="20" size="50">
                            </td>
                        </tr>
                        <tr>
                            <th scope="col">비밀번호 확인</th>
                            <td>
                                <input type="password" id="chk_member_pwd" class="form-control" maxlength="20" size="50" autocomplete="new-password">
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td style="height: 70px;">
                                <label id="checkPasswd"></label>
                            </td>
                        </tr>
                        <tr>
                            <th scope="col">이름</th>
                            <td>
                                <label id="member_name" class="form-control">${member.member_name}</label>
                                <label id="chkname"></label>
                            </td>
                        </tr>
                        <tr>
                            <th scope="col">이메일(선택)</th>
                            <td>
                                <label for="email" class="label">현재 Email 주소 : </label>
                                <label id="member_email" class="form-control">${member.member_email}</label>
                                <br>
                                <div class="input-group">
                                    <input type="text" class="form-control" style="width: 105px;" name="str_email01" id="str_email01" required>
                                    <div class="input-group-append">
                                        <span class="input-group-text">@</span>
                                    </div>
                                    <input type="text" class="form-control" style="width: 105px;" name="str_email02" id="str_email02" disabled value="naver.com" required>
                                    <select class="custom-select" name="selectEmail" id="selectEmail">
                                        <option value="" selected>::선택하세요::</option>
                                        <option value="naver.com">naver.com</option>
                                        <option value="gmail.com">gmail.com</option>
                                        <option value="hanmail.net">hanmail.net</option>
                                        <option value="nate.com">nate.com</option>
                                        <option value="1">직접입력</option>
                                    </select>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th scope="col">연락처(선택)</th>
                            <td>
                                <div class="input-group">
                                    <select class="custom-select" id="NUMst" name="member_phone" required>
                                        <option value="" selected>선택</option>
                                        <option value="010">010</option>
                                        <option value="011">011</option>
                                    </select>
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">-</span>
                                    </div>
                                    <input type="text" class="form-control" id="NUMnd" name="member_phone" maxlength="4" size="15" onkeypress="onlyNumber()">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">-</span>
                                    </div>
                                    <input type="text" class="form-control" id="NUMrd" name="member_phone" maxlength="4" size="15" onkeypress="onlyNumber()">
                                </div>
                            </td>
                        </tr>
                    </table>
                    <div class="form-group row">
                        <div class="col-sm-6">
                            <input type="button" onclick="myinfoUp()" class="btn btn-primary btn-block" style="cursor: pointer" value="수정">
                        </div>
                        <div class="col-sm-6">
                            <input type="button" onClick="location.href='mypage'" class="btn btn-secondary btn-block" style="cursor: pointer" value="취소">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
<%@ include file="../include/footer.jsp" %>
<!-- Bootstrap JS Bundle with Popper -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
</body>
</html>
