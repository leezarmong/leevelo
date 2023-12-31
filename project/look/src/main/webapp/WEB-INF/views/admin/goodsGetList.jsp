<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>goodsGetList</title>

<!-- Include jQuery -->
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
  
  <!-- Include your CSS file -->
<link rel="stylesheet" href="resources/css/goodsGetList.css">

</head>
<body>


<h1>상품(책) 페이지 입니다.  </h1>


 <div class="admin_content_wrap">
 
<!-- 등록 페이지로 되돌아 가기 -->
 <button class="btn1" id="auInsert" onclick="location.href='goodsEnroll'">뒤로가기</button>

  <div class="goods_table_wrap">
                    	<!-- 상품 리스트 O -->
	                    <c:if test="${listcheck != 'empty'}">
	                    	<table class="goods_table">
	                    		<thead>
	                    			<tr>
										<td class="th_column_1">상품 번호</td>
	                    				<td class="th_column_2">상품(책) 이름</td>
	                    				<td class="th_column_3">작가 이름</td>
	                    				<td class="th_column_4">카테고리</td>
	                    				<td class="th_column_5">재고</td>
	                    				<td class="th_column_6">등록날짜</td>
	                    			</tr>
	                    		</thead>	
	                    		<c:forEach items="${list}" var="list">
	                    		<tr>
	                    			<td><c:out value="${list.bookId}"></c:out></td>
	                    			<td><c:out value="${list.bookName}"></c:out></td>
	                    			<td>
	                    			
	                    			<a class="move" href='<c:out value="${list.bookId }"/>'>
	                    			<c:out value="${list.authorName}"></c:out>
	                    			</a>
	                    			
	                    			</td>
	                    			<td><c:out value="${list.cateName}"></c:out></td>
	                    			<td><c:out value="${list.bookStock}"></c:out></td>
	                    			<td><fmt:formatDate value="${list.regDate}" pattern="yyyy-MM-dd"/></td>
	                    		</tr>
	                    		</c:forEach>
	                    	</table>
	                    </c:if>
	                    <!-- 상품 리스트 X -->
                		<c:if test="${listCheck == 'empty'}">
                			<div class="table_empty">
                				등록된 상품이 없습니다.
                			</div>
                		</c:if> 
                	</div>
                	
                	<!-- 검색 영역 -->
                	<div class="search_wrap">
                		<form id="searchForm" action="/test/goodsGetList" method="get">
                			<div class="search_input">
                    			<input type="text" name="keyword" placeholder="책 제목 검색" value='<c:out value="${pageMaker.cri.keyword}"></c:out>'>
                    			<input type="hidden" name="pageNum" value='<c:out value="${pageMaker.cri.pageNum }"></c:out>'>
                    			<input type="hidden" name="amount" value='${pageMaker.cri.amount}'>
                    			<input type="hidden" name="type" value="G">
                    			<button class='btn search_btn'>검 색</button>                				
                			</div>
                		</form>
                	</div>
                	
                	<!-- 페이지 이름 인터페이스 영역 -->
                	<div class="pageMaker_wrap">
                		<ul class="pageMaker">
                			
                			<!-- 이전 버튼 -->
                			<c:if test="${pageMaker.prev }">
                				<li class="pageMaker_btn prev">
                					<a href="${pageMaker.startPage -1}">이전</a>
                				</li>
                			</c:if>
                			
                			<!-- 페이지 번호 -->
                			<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="num">
                				<li class="pageMaker_btn ${pageMaker.cri.pageNum == num ? 'active':''}">
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
                	
                	<form id="moveForm" method="get" >
 						<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
						<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
						<input type="hidden" name="keyword" value="${pageMaker.cri.keyword}">
                	</form>
       
       
       </div>         	
 	<script type="text/javascript">
 	
 	let searchForm = $('#searchForm');
 	let moveForm = $('#moveForm');
 	
 	
 	
 	/* 상품 (책) 상세 보기 */
 	$(".move").on("click",function(e){
 		e.preventDefault();
 		
 		moveForm.append("<input type='hidden' name='bookId' value='"+$(this).attr("href")+"'>");
 		moveForm.attr("action","/test/goodsDetail");
 		moveForm.submit();
 		
 	});
 	
 	
 	
 	
 	

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
 		moveForm.attr("action", "/test/goodsGetList");
 		moveForm.submit();
 		
 	});
 	
 	
 	</script>

</body>
</html>