<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert Author</title>

<!-- Include jQuery -->
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
  
<!-- Include your CSS file -->
<link rel="stylesheet" href="resources/css/authorList.css">

</head>
<body>

<h1>작가 리스트 페이지 입니다.  </h1>

 
 
 <div class="admin_content_wrap">
 <!-- 등록 페이지로 되돌아 가기 -->
 <button class="btn" id="auInsert" onclick="location.href='goodsEnroll'">뒤로가기</button>
 <br><br>
 
<div class="bulletin-author">
<table class="author_table">
                    		<!-- 게시물이 존재 할 때 -->
						<c:if test="${listCheck != 'empty' }">
	                    	<table class="author_table">
	                    		<thead>
	                    			<tr>
	                    				<td class="th_column_1">작가 번호</td>
	                    				<td class="th_column_2">작가 이름</td>
	                    				<td class="th_column_3">작가 국가</td>
	                    				<td class="th_column_4">등록 날짜</td>
	                    				<td class="th_column_5">수정 날짜</td>
	                    			</tr>
	                    		</thead>
	                    		<c:forEach items="${list}" var="list">
	                    		<tr>
	                    			<td><c:out value="${list.authorId}"></c:out> </td>
	                    			<td>
	                    				<a class="move" href='<c:out value="${list.authorId}"/>'>
	                    					<c:out value="${list.authorName}"></c:out>
	                    				</a> 	                    				
	                    			</td>
	                    			<td><c:out value="${list.nationName}"></c:out> </td>
	                    			<td><fmt:formatDate value="${list.regDate}" pattern="yyyy-MM-dd"/></td>
	                    			<td><fmt:formatDate value="${list.updateDate}" pattern="yyyy-MM-dd"/></td>
	                    		</tr>
	                    		</c:forEach>
	                    	</table>						
						</c:if>
						
                		<!-- 게시물 이 존재하지 않을 때 -->
                		<c:if test="${listCheck == 'empty'}">
                			<div class="table_empty">
                				등록된 작가가 없습니다.
                			</div>
                		</c:if> 	
                		
                		
                    	</table>
                    	
                    	 <!-- 검색 영역 -->
                    <div class="search_wrap">
                    	<form id="searchForm" method="get">
                    		<div class="search_input">
                    			<input type="text" name="keyword" placeholder="작가 검색" value='<c:out value="${pageMaker.cri.keyword}" ></c:out>'>
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
		
		<script type="text/javascript">
		
		$(document).ready(function(){
			
			let result = '<c:out value="${result}"/>';
			
			checkAlert(result);
			console.log(result);
			
			function checkAlert(result){
				
				
				if(result === "modify_result"){
					alert("수정이 완료되었습니다.");
				}
					
			}	
			
		});
		
		
		
		/* 페이지 이동 버튼 */ 
		let moveForm = $('#moveForm');
		/* 검색 */
		let searchForm = $('#searchForm');

		
		
		/* 페이지 이동 동작 */ 
		    $(".pageMaker_btn a").on("click", function(e){
				e.preventDefault();
				/* 기본 클릭 동작을 막는것을 확인 할수 있다.
				없을경우 2페이지 이동시 파라미터없이 단순 2로 이동하여 404 에러가 뜨게 된다. 
				*/
				
				moveForm.find("input[name='pageNum']").val($(this).attr("href"));
				moveForm.attr("action", "/test/authorList");
				moveForm.submit();
				
			});	
		    
		    
		    /* 작가 검색 버튼 동작 */
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
		
		
		
		/* 상세 페이지 */
	    $(".move").on("click", function(e){
	    	
	    	e.preventDefault();
	    	
	    	moveForm.append("<input type='hidden' name='authorId' value='"+ $(this).attr("href") + "'>");
	    	moveForm.attr("action", "/test/authorDetail");
	    	moveForm.submit();
	    	
	    });
		
		
		
		</script>

</body>
</html>