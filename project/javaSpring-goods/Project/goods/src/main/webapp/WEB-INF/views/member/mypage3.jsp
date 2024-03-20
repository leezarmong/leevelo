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
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
    <!-- 카카오 지도 라이브러리 -->
    <style>
    .row {
        min-height: 20vh; /* 스크롤 값 */
    }
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
                            <th scope="col">주소</th>
                            <td>
                               <%--  <label id="member_addr" class="form-control">${member.member_addr}</label>
                                <input type="button" class="btn btn-primary btn-block" onclick="searchPost()"
                                    style="cursor: pointer" value="우편번호 찾기"><br>
                                <label id="member_faddr" class="form-control">${member.member_faddr}</label>
                                <label id="member_laddr" class="form-control">${member.member_laddr}</label> --%>
                                
                                  <input type="text" class="form-control" name="member_addr" id="member_addr"
                                    class="input" placeholder="Address" readonly size="10" value="${member.member_addr}">
                                <br>
                                <input type="button" class="btn btn-primary btn-block" onclick="searchPost()"
                                    style="cursor: pointer" value="우편번호 찾기"><br>
                                <input type="text" class="form-control" name="member_faddr" id="member_faddr"
                                    class="input" size="50" readonly value="${member.member_faddr}"><br>
                                <input type="text" class="form-control" name="member_laddr" id="member_laddr"
                                    class="input" size="50" placeholder="상세 주소를 입력하세요." value="${member.member_laddr}">
                                
                                
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
							<select id="email_select" style="height: 30px;">
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
                            <th scope="col">연락처(선택)</th>
                            <td>
                                <div class="input-group">
                                
                                <c:set var="m_phone" value="${member.member_phone}" />
							<c:set var="mphone" value="${fn:split(m_phone, '-') }" />
							<!-- 배열 인덱스로 불러옴 -->
							<select id="NUMst" style="width: 100px">
								<option value="${mphone[0]}" selected>${mphone[0]}</option>
								<!-- 받아온 값의 배열로 selected 되게  -->
								<option value="010" selected>010</option>
								<option value="011">011</option>
								<option value="016">016</option>
							</select>
									
									<div class="input-group-prepend">
                                        <span class="input-group-text">-</span>
                                    </div>
                                    <input type="text" class="form-control" id="NUMnd" name="member_phone" maxlength="4" size="15" value="${mphone[1] }" onkeypress="onlyNumber()">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">-</span>
                                    </div>
                                    <input type="text" class="form-control" id="NUMrd" name="member_phone" maxlength="4" size="15" value="${mphone[2] }" onkeypress="onlyNumber()">
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
