<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Board List</title>

<!-- list.css -->
<link rel="stylesheet" href="resources/css/list.css">

<!-- jquery -->
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>

</head>
<body>
<h1><b style="color: blue;">${member.member_id}</b> 님이 로그인 했습니다. </h1>

	<div class="bulletin-board">
		<h2>Look List</h2>
		<table>
		  <tr>
			<th>WRITER</th>
			<th style="width: 600px;">TITLE</th>
			<th>DETAILS</th>
			<th>DATE</th>
		  </tr>
		  
		  <c:forEach items="${list}" var="board">
		  
		  <tr>	  
			<td><c:out value="${board.writer}" /></td>
			<td><c:out value="${board.title}" /></td>
			<td><a class="move" href='<c:out value="${board.seq}"/>'>상세 보기</a></td>
			<td><fmt:formatDate pattern="yyyy/MM/dd" value="${board.regDate}"/></td>
		  </tr>
		  
		  </c:forEach>
		  
		</table><br><br>
		
	<div class="search_wrap">
        <div class="search_area">
            
            <select name="type">
                <option value="" <c:out value="${pagemaker.cri.type == null?'selected':'' }"/>>--</option>
                <option value="T" <c:out value="${pagemaker.cri.type eq 'T'?'selected':'' }"/>>제목</option>
                <option value="C" <c:out value="${pagemaker.cri.type eq 'C'?'selected':'' }"/>>내용</option>
                <option value="W" <c:out value="${pagemaker.cri.type eq 'W'?'selected':'' }"/>>작성자</option>
                <option value="TC" <c:out value="${pagemaker.cri.type eq 'TC'?'selected':'' }"/>>제목 + 내용</option>
                <option value="TW" <c:out value="${pagemaker.cri.type eq 'TW'?'selected':'' }"/>>제목 + 작성자</option>
                <option value="TCW" <c:out value="${pagemaker.cri.type eq 'TCW'?'selected':'' }"/>>제목 + 내용 + 작성자</option>
            </select> 
            
            <input type="text" name="keyword" value="${pagemaker.cri.keyword }">
            <button>검색</button>
        </div>
    </div> 
    
    
		
	<div class="pageInfo_wrap" >
		<div class="pageInfo_area">
			<ul id="pageInfo" class="pageInfo">
			
				<!-- 이전페이지 버튼 -->
				<c:if test="${pagemaker.prev}">
					<li class="pageInfo_btn previous"><a href="${pagemaker.startPage-1}">Previous</a></li>
				</c:if>
				
				<!-- 각 번호 페이지 버튼 -->
				<c:forEach var="num" begin="${pagemaker.startPage}" end="${pagemaker.endPage}">
					<li class="pageInfo_btn ${pagemaker.cri.pageNum == num ? "active":"" }"><a href="${num}">${num}</a></li>
				</c:forEach>
				
				<!-- 다음페이지 버튼 -->
				<c:if test="${pagemaker.next}">
					<li class="pageInfo_btn next"><a href="${pagemaker.endPage + 1 }">Next</a></li>
				</c:if>	
				
			</ul>
		</div>
	</div>
	

	
	<form id="moveForm" method="get">	
		<input type="hidden" name="pageNum" value="${pagemaker.cri.pageNum }">
		<input type="hidden" name="amount" value="${pagemaker.cri.amount }">
		<input type="hidden" name="keyword" value="${pagemaker.cri.keyword }">	
		<input type="hidden" name="type" value="${pagemaker.cri.type }"> 	
	</form>
	
	
	<input type="button" id="guestbook" onclick="location.href='main'" value="main">
	
</div>	
	
	<script>
	
	$(document).ready(function(){
	
	let result = '<c:out value="${result}"/>';
	
	checkAlert(result);
	console.log(result);
	
	function checkAlert(result){
		
		
		if(result === "modify success"){
			alert("수정이 완료되었습니다.");
		}
			
	}	
	
});

	let moveForm = $("#moveForm");

	$(".move").on("click", function(e){
		e.preventDefault();
		
		/* 일반적으로 브라우저가 링크의 href 속성에 지정된 URL로 이동하며, 
		양식을 제출하면 일반적으로 처리를 위해 데이터가 서버로 전송됩니다.
preventDefault() 메서드는 주로 이벤트가 트리거될 때 이러한 기본 동작이 발생하지 않도록 하는 데 사용 */

//양식을 전송하는데 일반적인 순서로 진행되지 않게 다음페이지로 진행할 방해받지 않기 위함.
		
		moveForm.append("<input type='hidden' name='seq' value='"+ $(this).attr("href")+ "'>");
		moveForm.attr("action", "/test/detail");
		moveForm.submit();
	});

	$(".pageInfo a").on("click", function(e){
		e.preventDefault();
		moveForm.find("input[name='pageNum']").val($(this).attr("href"));
		moveForm.attr("action", "/test/list");
		moveForm.submit();
		
	});	
	
	
    $(".search_area button").on("click", function(e){
        e.preventDefault();
		
		let type = $(".search_area select").val();
		let keyword = $(".search_area input[name='keyword']").val();
		
		if(!type){
			alert("검색 종류를 선택하세요.");
			return false;
		}
		
		if(!keyword){
			alert("키워드를 입력하세요.");
			return false;
		}		
		
		moveForm.find("input[name='type']").val(type);
		moveForm.find("input[name='keyword']").val(keyword);
		moveForm.find("input[name='pageNum']").val(1);
		moveForm.submit();
	}); 
	
</script>
		
		
</body>


</html>