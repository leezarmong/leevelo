<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>leevleoper</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="http://code.jquery.com/jquery-1.10.1.js"></script>
    <!-- jquery -->
    
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <!-- bootstrap -->
    
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <!-- swal -->
    
    <script type="text/javascript" src="resources/js/login.js" charset="UTF-8"></script>
    <!-- js -->
    
</head>
<body style="margin-top: 200px;">
    <%@ include file="../include/header.jsp" %>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-9">
                <div class="card">
                    <div class="card-header">
                        <h2 class="text-center">아이디 찾기</h2>
                    </div>
                    <div class="card-body">
                        <h3>등록한 회원정보 또는 본인인증으로 아이디를 찾을 수 있습니다.</h3><br>
                        <form action="#" name="find-pw-info" id="find-pw-info" method="post">
                            <h4>등록된 회원정보로 찾기</h4>
                            <p>회원 가입 시 등록한 정보를 정확히 입력해주세요.</p>
                            <div class="form-group">
                                <label for="member_name">이름</label>
                                <input type="text" class="form-control" id="member_name" name="member_name" placeholder="이름" required>
                            </div>
                           <div class="form-group">
						  <label for="member_phone">전화번호</label>
						  <div class="input-group">
						      <select class="form-control" id="member_phone1" name="member_phone1" required>
						          <option value="" selected disabled>선택</option>
						          <option value="010">010</option>
						          <option value="011">011</option>
						      </select>
						      <div class="input-group-prepend">
						          <span class="input-group-text">-</span>
						      </div>
						      <input type="text" class="form-control" id="member_phone2" name="member_phone2" placeholder="1234" maxlength="4" onkeypress="onlyNumber()" required>
						      <div class="input-group-prepend">
						          <span class="input-group-text">-</span>
						      </div>
						      <input type="text" class="form-control" id="member_phone3" name="member_phone3" placeholder="5678" maxlength="4" onkeypress="onlyNumber()" required>
						    </div>
						</div>
                            <button id="lo" type="button" class="btn btn-primary" onclick="checkFI()">아이디 찾기</button>
                        </form>
                        <p>위 방법으로 아이디를 찾을 수 없는 경우 <a href="#" target="_blank">고객센터</a>에 문의해주세요.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%@ include file="../include/footer.jsp" %>
</body>
</html>
