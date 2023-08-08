<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detail page </title>

<!-- detail.css -->
<link rel="stylesheet" href="resources/css/detail.css">

<!-- jquery -->
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>


</head>
<body>

<div class="bulletin-board">

<h1>조회 페이지</h1>
	<div class="input_wrap">
		<label>게시판 작성자</label>
		<input name="writer" style="color: ${member.member_id == detail.writer ? 'blue' : 'black'};" readonly="readonly" value='<c:out value="${detail.writer}"/>' >
	</div>
	<div class="input_wrap">
		<label>게시판 번호</label>
		<input name="seq" readonly="readonly" value='<c:out value="${detail.seq}"/>' >
	</div>
	<div class="input_wrap">
		<label>게시판 제목</label>
		<input name="title" readonly="readonly" value='<c:out value="${detail.title}"/>' >
	</div>
	<div class="input_wrap">
		<label>게시판 내용</label>
		<textarea rows="3" style="width: 750px;" name="content" readonly="readonly"><c:out value="${detail.content}"/></textarea>
	</div>
	<div class="input_wrap">
		<label>게시판 등록일</label>
		<input name="regDate" readonly="readonly" value='<fmt:formatDate pattern="yyyy/MM/dd" value="${detail.regDate}"/>' >
	</div>		
	<div class="btn_wrap">
	
		<input type="button" id="list" class="btn" value="목록 페이지">
	
	
	<!-- 작성자만 수정 삭제 가능하게 -->
	<c:if test="${member.member_id == detail.writer}">
		
		<input type="button" id="modify" class="btn" value="수정">
        <input type="button" style="background-color: red;" id="delete" class="btn" value="삭제" onclick="location.href='delete?seq=${detail.seq}'">
		
	</c:if>
	</div>
	
	
</div>
	<form id="infoForm" action="/test/updatepage" method="get">
		<input type="hidden" id="seq" name="seq" value='<c:out value="${detail.seq}"/>'>
		<input type="hidden" name="pageNum" value='<c:out value="${cri.pageNum}"/>'>
		<input type="hidden" name="amount" value='<c:out value="${cri.amount}"/>'>
		<input type="hidden" name="keyword" value="${cri.keyword }">
		<input type="hidden" name="type" value="${cri.type }"> 
		</form>
	
	
	<script>
	let form = $("#infoForm");
	
	$("#list").on("click", function(e){
		form.find("#seq").remove();
		/* 버튼으로 뒤로 가야 세션에 저장된 seq 가 제대로 삭제되어 누적이 안된다. */
		form.attr("action", "/test/list");
		form.submit();
	});
	
	$("#modify").on("click", function(e){
		form.attr("action", "/test/updatepage");
		form.submit();
	});	
</script>
	

</body>

</html>