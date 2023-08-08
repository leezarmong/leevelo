<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Page</title>
</head>

<!-- detail.css -->
<link rel="stylesheet" href="resources/css/detail.css">

<!-- jquery -->
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
 
<body>

<div class="bulletin-board">

<h1>수정 페이지</h1>
	<form id="modifyForm" action="/test/updatepage" method="post">
	<div class="input_wrap">
		<label>게시판 작성자</label>
		<input name="writer" style="color: ${member.member_id == detail.writer ? 'blue' : 'black'};" readonly="readonly" value='<c:out value="${detail.writer}"/>' >
	</div>
	<div class="input_wrap">
		<label>게시판 번호</label>
		<input name="seq" readonly="readonly" value='<c:out value="${detail.seq}"/>' >
	</div>
	<div class="input_wrap">
		<label style="color: blue;">게시판 제목 - 수정</label>
		<input name="title" value='<c:out value="${detail.title}"/>' >
	</div>
	<div class="input_wrap">
		<label  style="color: blue;">게시판 내용 - 수정</label>
		<textarea rows="3" style="width: 750px;" name="content"><c:out value="${detail.content}"/></textarea>
	</div>
	<div class="input_wrap">
		<label>게시판 등록일</label>
		<input name="regDate" readonly="readonly" value='<fmt:formatDate pattern="yyyy/MM/dd" value="${detail.regDate}"/>' >
	</div>
		
	<div class="btn_wrap">
	<input type="button" id="back" class="btn" value="돌아가기">
	<input type="button" id="update" class="btn" value="수정 완료">
	</div>
	</form>
	
	</div>
	<form id="infoForm" action="/test/updatepage" method="get">
		<input type="hidden" id="seq" name="seq" value='<c:out value="${detail.seq}"/>'>
		<input type="hidden" name="pageNum" value='<c:out value="${cri.pageNum}"/>'>
		<input type="hidden" name="amount" value='<c:out value="${cri.amount}"/>'>
		<input type="hidden" name="keyword" value="${cri.keyword }">
		<input type="hidden" name="type" value="${cri.type }">	 	
	</form>
	
		<script type="text/javascript">
		
			
			
			let form = $("#infoForm");
			let mForm = $("#modifyForm"); 	// 페이지 데이터 수정 from
			
			
			$("#back").on("click", function(e){
				form.attr("action", "/test/detail");
				form.submit();
			});	
			
			 
			  $("#update").on("click", function(e){
					 mForm.submit(); 
			  
			  });
			 	
		</script>
		

</body>
</html>