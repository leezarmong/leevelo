<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>${board.title}</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<link rel="stylesheet" type="text/css" href="resources/css/view.css?">
<script>
	// 게시물 삭제 확인
	function deleteB() {
		swal({
			icon: "warning",
			text: "정말 게시글을 삭제하시겠습니까?",
			closeOnClickOutside : false,
			closeOnEsc : false, 
			buttons: ["돌아가기", "삭제하기"],
		}).then(function(isConfirm) {
			if (isConfirm) {
				swal('삭제 완료!','게시글을 삭제했습니다.','success').then(function(isConfirm){
					location.href='delete?bno='+${board.bno};
				});
			}
		})
	}
	$("#list_btn").click(function(){
		self.location="board?"
				+ "searchOption=${searchOption}&keyword=${keyword}"
				+ "&search=${search}&curPage=${curPage}";
	});
</script>
</head>
<body>
	<%@ include file="../include/header.jsp"%>
	<center>
		<div style="width: 750px; padding-top: 10px; padding-bottom: 10px;" ><br/><br/>
			<form>
				<!-- 수정,삭제에 필요한 글번호를 hidden 태그에 저장 -->
				<input type="hidden" name="bno" value="${board.bno}">
				<table border="1" bordercolor="#E1DCDC" class="view" cellpadding="0" cellspacing="0" width="100%">
					<tr>
						<td style="width:70px; height:30px; text-align:center;">제목</td>
						<td colspan='3' align="left">${board.title}</td>
					</tr>
					<tr>
						<td style="width:70px; height:30px; text-align:center;">작성자</td>
						<td colspan='3' align="left">${board.writer}</td>
					</tr>
					<tr>
						<td style="width:70px; height:30px; text-align:center;">작성일</td>
						<td colspan='3' align="left">
							<div style="width:150px;float:left;">${board.regdate}</div>
							<div>|&nbsp;&nbsp;&nbsp;조회수 : ${board.viewcnt}</div>
						</td>
					</tr>
					<tr valign="top">
						<td colspan='4' height="500px">${board.content}</td>
					</tr>
				</table>
			</form>
			<div style="margin-top: 10px; margin-bottom:20px;">
				<div align="center" style="float:left; ">
					<c:if test="${map.previousB != null}">
						<button class="previous" onClick="location.href='view?bno=${map.previousB.bno}&show=Y'">이전글</button>
					</c:if>
					<c:if test="${map.nextB != null}">
						<button class="next" onClick="location.href='view?bno=${map.nextB.bno}&show=Y'">다음글</button>
					</c:if>
					&nbsp;&nbsp;&nbsp;게시글 번호 : ${board.bno}
				</div>
				<div style="float:right;">
					<!-- 관리자만 공지 -->
					<c:if test="${member.member_id eq 'oneteam'}">
						<a href="write">글쓰기</a>&nbsp;&nbsp;&nbsp;
					</c:if>
					<!-- 본인만 수정,삭제 버튼 표시 -->
					<c:if test="${member.member_id == board.writer}">
						<a href="updateWrite">수정</a>&nbsp;&nbsp;&nbsp;
						<a href="#" onClick="deleteB()">삭제</a>&nbsp;&nbsp;&nbsp;
					</c:if>
					<button type="button" id="list_btn" onClick="location.href='board'">목록</button>
				</div>
			</div>
		</div><br/><br/><br/>
		<!-- 현재 글을 기준으로 이전글,다음글 리스트 -->
		<div align="center">
			<table class="simpleView" width="800">
				<c:if test="${map.previousB != null}">
					<tr class="a">
						<td onClick="location.href='view?bno=${map.previousB.bno}&show=Y'" style="cursor: pointer">이전글</td>
						<td onClick="location.href='view?bno=${map.previousB.bno}&show=Y'" style="cursor: pointer;width:400px;">${map.previousB.title}</td>
						<td class="tdS">${map.previousB.writer}</td><td class="tdS">${map.previousB.regdate}</td>
					</tr>
				</c:if>
				<c:if test="${map.nextB != null}">
					<tr class="b">
						<td onClick="location.href='view?bno=${map.nextB.bno}&show=Y'" style="cursor: pointer">다음글</td>
						<td  onClick="location.href='view?bno=${map.nextB.bno}&show=Y'" style="cursor: pointer;width:400px;">${map.nextB.title}</td>
						<td class="tdS">${map.nextB.writer}</td><td class="tdS">${map.nextB.regdate}</td>
					</tr>
				</c:if>
			</table>
		</div>
	</center>
	<div style="margin-top: 100px;">
	<%@ include file="../include/footer.jsp"%>
	</div>
</body>
</html>