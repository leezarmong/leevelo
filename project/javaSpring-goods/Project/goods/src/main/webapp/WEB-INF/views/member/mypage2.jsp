<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>leeveloper</title>
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <!-- jQuery -->

    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <!-- SweetAlert -->
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Bootstrap CSS -->

    <style type="text/css">
        section {
            display: flex;
            justify-content: center;
            margin-top: 150px;
        }

        ul {
            list-style: none;
        }

        input[type="text"],
        input[type="password"] {
            height: 40px;
        }
    </style>
    
    <script>
	// 마이페이지2 비밀번호 확인
	function mypg2() {
		var member_id = $("#member_id").val();
		var member_pwd = $("#member_pwd").val();
	
		if (!member_id || !member_pwd) {
			swal("", "패스워드를 입력해주세요.", "error");
		} else {
			$.ajax({
				type : "POST",
				url : "checkMember",
				data : {
					"member_id" : member_id,
					"member_pwd" : member_pwd
				}, success : function(data) {
					if (data != 0) {
						$.ajax({
							type : "POST",
							url : "mypage2",
							data : {
								"member_id" : member_id,
								"member_pwd" : member_pwd
							}, success : function() { window.location.href = "mypage3"; }
						});
					} else {
						swal("", "패스워드를 확인해주세요.", "warning")
					}
				}, error : function(data) {
					console.log(data);
				}
			});
		}
	}
</script>
    
</head>
<body>
    <%@ include file="../include/header.jsp" %>

    <section>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <h2 class="text-center font-weight-bold mb-4">비밀번호 확인</h2>
                            <form>
                                <div class="form-group">
                                    <label for="member_id">회원 아이디</label>
                                    <input type="text" class="form-control" id="member_id" value="${member.member_id}" size="50" readonly>
                                </div>
                                <div class="form-group">
                                    <label for="member_pwd">비밀번호</label>
                                    <input type="password" class="form-control" id="member_pwd" placeholder="비밀번호 확인" required>
                                </div>
                                <div class="text-center">
                                    <button type="button" class="btn btn-primary" onclick="mypg2()">확인</button>
                                    <button type="button" class="btn btn-secondary" onclick="location.href='mypage'">취소</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <%@ include file="../include/footer.jsp" %>

    <!-- Bootstrap JS Bundle with Popper -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
</body>
</html>
