<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>작가 선택창</title>

<!-- Include jQuery -->
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>

<!-- Include your CSS file -->
<link rel="stylesheet" href="resources/css/authorPop.css">

</head>
<body>

		<div class="subject_name_warp">
			<span>작가 선택</span>
		</div>
		<div class="content_wrap">
               	<!-- 게시물 표 영역 -->
				<div class="author_table_wrap">
               		<!-- 게시물 O -->
               		<c:if test="${listCheck != 'empty'}">
               			<div class="table_exist">
	                    	<table class="author_table">
	                    		<thead>
	                    			<tr>
	                    				<td class="th_column_1">작가 번호</td>
	                    				<td class="th_column_2">작가 이름</td>
	                    				<td class="th_column_3">작가 국가</td>
	                    			</tr>
	                    		</thead>
	                    		<c:forEach items="${list}" var="list">
	                    		<tr>
	                    			<td><c:out value="${list.authorId}"></c:out> </td>
	                    			
	                    			<td>
	                    			
	                    			<%-- <td><c:out value="${list.authorName}"></c:out></td> --%>
	                    			
	                    			<a class="move" href='<c:out value="${list.authorId}"/>' data-name='<c:out value="${list.authorName}"></c:out>'>
                                    </a>
	                    			
	                    			<!-- 팝업창 선택과 동시에 창이 닫히면서 선택되는 것을 구현 하기 위함. -->
	                    			<!-- data-name 속성: data-name 속성은 사용자 정의 데이터를 HTML 요소에 저장하는 데 사용 --> 
	                    			</td>
	                    			
	                    			<td><c:out value="${list.nationName}"></c:out> </td>
	                    		</tr>
	                    		</c:forEach>
	                    	</table>
                    	</div>                			
               		</c:if>
               		<!-- 게시물 x -->
               		<c:if test="${listCheck == 'empty'}">
               			<div class="table_empty">
               				등록된 작가가 없습니다.
               			</div>
               		</c:if>
               		
                    <!-- 검색 영역 -->
                    <div class="search_wrap">
                    	<form id="searchForm" action="/test/authorPop" method="get">
                    		<div class="search_input">
                    			<input type="text" name="keyword" value='<c:out value="${pageMaker.cri.keyword}"></c:out>'>
                    			<input type="hidden" name="pageNum" value='<c:out value="${pageMaker.cri.pageNum }"></c:out>'>
                    			<input type="hidden" name="amount" value='${pageMaker.cri.amount}'>
                    			<button class='btn search_btn'>검 색</button>
                    		</div>
                    	</form>
                    </div>
                    
                    <!-- 페이지 이동 인터페이스 영역 -->
                    <div class="pageMaker_wrap" >
                    
	                    <ul class="pageMaker">
	                    
	                    	<!-- 이전 버튼 -->
	                    	<c:if test="${pageMaker.prev}">
	                    		<li class="pageMaker_btn prev">
	                    			<a href="${pageMaker.startPage - 1}">이전</a>
	                    		</li>
	                    	</c:if>
	                    	
	                    	<!-- 페이지 번호 -->
	                    	<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="num">
	                    		<li class="pageMaker_btn ${pageMaker.cri.pageNum == num ? "active":""}">
	                    			<a href="${num}">${num}</a>
	                    		</li>
	                    	</c:forEach>
	                    	
	                    	<!-- 다음 버튼 -->
	                    	<c:if test="${pageMaker.next}">
	                    		<li class="pageMaker_btn next">
	                    			<a href="${pageMaker.endPage + 1 }">다음</a>
	                    		</li>
	                    	</c:if>
	                    	
	                    </ul>
	                    
                    </div>               		
               		
					<form id="moveForm" method="get">
						<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
						<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
						<input type="hidden" name="keyword" value="${pageMaker.cri.keyword}">
					</form>               		
               		
               		
		</div>

	</div>


<script>

		let searchForm = $('#searchForm');
		let moveForm = $('#moveForm');
		
		/* 작거 검색 버튼 동작 */
		$("#searchForm button").on("click", function(e){
			
			e.preventDefault();
			
			/* 검색 키워드 유효성 검사 */
			if(!searchForm.find("input[name='keyword']").val()){
				alert("키워드를 입력하십시오");
				return false;
			}
			
			searchForm.find("input[name='pageNum']").val("1");
			
			searchForm.submit();
			
		});
		
		
		/* 페이지 이동 버튼 */
		$(".pageMaker_btn a").on("click", function(e){
			
			e.preventDefault();

			moveForm.find("input[name='pageNum']").val($(this).attr("href"));
			moveForm.attr("action", "/test/authorPop");
			moveForm.submit();
			
		});	
		
		
		
		/* 작가 선택 및 팝업창 닫기 */
		$(".move").on("click", function(e){
			e.preventDefault();
			
			let authorId = $(this).attr("href");
			let authorName= $(this).data("name");
			$(opener.document).find("#authorId_input").val(authorId);
			$(opener.document).find("#authorName_input").val(authorName);
			
			
			/* let authorId = $(this).attr("href");: 클릭된 요소(this)의 "href" 속성을 추출하여 authorId 변수에 저장. 이것은 클릭된 요소의 링크 대상을 나타낸다.

			let authorName = $(this).data("name");: 클릭된 요소(this)에서 "data-name" 속성을 추출하여 authorName 변수에 저장. 이것은 클릭된 요소의 데이터 속성 중 하나로, 작가의 이름을 나타낸다.

			$(opener.document).find("#authorId_input").val(authorId);: 부모 창(오프너 창)에서 "authorId_input"이라는 ID를 가진 입력 필드를 찾아서, 그 입력 필드의 값을 authorId 변수의 값으로 설정.

			$(opener.document).find("#authorName_input").val(authorName);: 부모 창(오프너 창)에서 "authorName_input"이라는 ID를 가진 입력 필드를 찾아서, 그 입력 필드의 값을 authorName 변수의 값으로 설정.

			window.close();: 현재 창을 닫습니다. 이 코드는 부모 창에서 작동하는 것이 아니라, 현재 열려 있는 팝업 창을 닫는 역할을 한다. */
			
			
			window.close();

		});	

	
	</script>



</body>
</html>