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
		<%-- <input type="hidden" name="type" value="${pagemaker.cri.type }"> --%>	
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
		
		/* 특정 이벤트에 대한 기본 동작을 실행하지 않도록 브라우저에 지시하는 것입니다. 
		이를 통해 이벤트를 제어하고 필요에 따라 사용자 지정 작업 또는 유효성 검사를 수행할 수 있습니다. */
		
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
        let val = $("input[name='keyword']").val();
        moveForm.find("input[name='keyword']").val(val);
        moveForm.find("input[name='pageNum']").val(1);
        moveForm.submit();
    });
	
	/* 
	
		
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
	}); */
	
</script>
		
		
</body>


</html>