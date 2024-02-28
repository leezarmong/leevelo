<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE HTML>
<html lang="ko">
<head>
    <title>leeveloper</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- bootstrap -->
    
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <!-- jquery -->
    
    <script src="resources/js/adminMember.js" charset="UTF-8"></script>
    <!-- js -->
    
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <!-- swal -->
    
    <script>
        function list(page) {
            location.href="memberList?curPage="+page;
        }
        function searchMem() {
            var sea = $("#sPrd2").val();
            self.location = "searchMem?sPrd2=" + sea;
        }
    </script>
    
</head>
<body>
    <%@ include file="../include/header.jsp" %>
    <section class="container mt-5">
        <h2 class="text-center text-primary" style="font-size: 30px;">회원 관리 페이지</h2>
        <div class="row justify-content-center mt-3">
            <div class="col-md-6">
                <div class="input-group">
                    <input type="text" class="form-control" name="sPrd2" id="sPrd2" placeholder="회원 이름 검색" onkeypress="if(event.keyCode == 13) {searchMem(); return;}">
                    <div class="input-group-append">
                        <button type="button" class="btn btn-primary" id="searchBtn" onclick="searchMem()">검색</button>
                    </div>
                </div>
            </div>
        </div>
        
        <p class="text-center mt-3 text-danger" style="font-size: 18px;">회원 이름을 누르면 정보 수정 가능합니다.</p>
        <div class="table-responsive mt-3">
			<table class="table table-striped">
				<thead>
					<tr>
						<th scope="col">아이디</th>
						<th scope="col">이름</th>
						<th scope="col">전화번호</th>
						<th scope="col">회원 정보 삭제</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach begin="0" end="${fn:length(map.list) - 1}" var="i">
						<c:set var="member2" value="${map.list[i]}" />
						<c:if test="${not empty member2}">
							<tr>
								<td>${member2.member_id}</td>
								<td><a href="modifyMember?member_id=${member2.member_id}" class="text-danger">${member2.member_name}</a></td>
								<td>${member2.member_phone}</td>
								<td><img class="bbb_b" src="resources/img/image/close.png" name="${member2.member_id}" onclick="delM(this)" style="width: 30px; cursor: pointer;" title="삭제"></td>
							</tr>
						</c:if>
					</c:forEach>
				</tbody>
			</table>
		</div>
        <div class="pagination justify-content-center mt-3">
            <c:if test="${map.pager.curBlock > 1}">
                <a href="#" onclick="list('1')" class="mr-2">처음</a>
                <a href="#" onclick="list('${map.pager.prevPage}')" class="mr-2">이전</a>
            </c:if>
            <c:forEach var="num" begin="${map.pager.blockBegin}" end="${map.pager.blockEnd}">
                <c:choose>
                    <c:when test="${num == map.pager.curPage}">
                        <span class="text-danger">${num}</span>
                    </c:when>
                    <c:otherwise>
                        <a href="#" onclick="list('${num}')" class="mr-2">${num}</a>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
            <c:if test="${map.pager.curBlock < map.pager.totBlock}">
                <a href="#" onclick="list('${map.pager.nextPage}')" class="mr-2">다음</a>
                <a href="#" onclick="list('${map.pager.totPage}')" class="mr-2">끝</a>
            </c:if>
        </div>
    </section>
    <%@ include file="../include/footer.jsp" %>
</body>
</html>
