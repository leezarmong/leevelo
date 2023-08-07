<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="now" class="java.util.Date" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>공지사항</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="resources/css/board.css?u">
</head>
<body>
	<%@ include file="../include/header.jsp"%>
	<div class="name">
		<h1 align="center">공지사항</h1>
	</div>
	<div id="listLayout">
		<input type="hidden" id="curPage" value="${curPage }"/>
		<center>
			<div style="width:800px; padding-bottom: 105px;">
				<div class="name"></div>
				<div style="float: center;">
					<!-- 검색했을 때 카운트-->
					<c:if test="${map.search eq 's'}">
						<c:choose>
							<c:when test="${map.count == 0 }"><br/>
								<span style="font-family:'돋움';">게시글이 없습니다. 검색을 다시 확인해주세요.&nbsp;</span>
							</c:when>
							<c:otherwise>
								<span style="font-family:'돋움';">alert=${map.count}개의 게시물이 있습니다.&nbsp;</span>
							</c:otherwise>
						</c:choose>
					</c:if>
					<!-- 검색 조건 뷰 -->
					<form action="board" ><!-- align="left" -->
						<select name="searchOption" id="searchOption">
							<option value="ALL" <c:out value="${map.searchOption=='ALL'?'selected':''}"/> >제목+이름+내용</option>
							<option value="TITLE" <c:out value="${map.searchOption=='TITLE'?'selected':''}"/> >제목</option>
							<option value="WRITER" <c:out value="${map.searchOption=='WRITER'?'selected':''}"/> >이름</option>
							<option value="CONTENT" <c:out value="${map.searchOption=='CONTENT'?'selected':''}"/> >내용</option>
						</select> 
						<input type="text" name="keyword" placeholder="검색어 입력" id="keyword" value="${keyword}">
						<input type="hidden" name="search" id="search" value="s"/>
						<input type="submit" class="check2" value="조회"/>
						<c:if test="${member.member_id eq 'oneteam'}">
							<button type="button" class="text" onClick="location.href='write'">글쓰기</button>
						</c:if>
					</form>				
					<c:if test="${map.pager.curBlock < map.pager.totBlock}">
						<a href="board?curPage=${map.pager.nextPage}&searchOption=${searchOption}&keyword=${keyword}&search=${search}">[다음]</a>
					</c:if>
					<c:if test="${(map.pager.totPage > 5) && (map.pager.totPage != map.pager.curPage)}">
						<a href="board?curPage=${map.pager.totPage}&searchOption=${searchOption}&keyword=${keyword}&search=${search}">[끝]</a>
					</c:if>
				</div>
				<div style="float: center;"><br>
					<table cellpadding="0" cellspacing="0" style="text-align:center;" width="100%">
						<tr height="50">
							<th class="list1" width="10%">번호</th>
							<th class="list1" width="45%">제목</th>
							<th class="list1" width="15%">작성자</th>
							<th class="list1" width="15%">작성일</th>
							<th class="list1" width="10%">조회</th>
						</tr>
						<c:forEach begin="0" end="${(fn:length(map.list))}" var="i">
							<c:set var="row" value="${map.list[i]}" />
							<input type="hidden" id="bno" name="bno" value="${row.bno}"/>
							<c:choose>
								<%-- 검색결과가 있을 때 --%>
								<c:when test="${not empty row}">
									<tr height="45">
										<td class="list2">${row.bno}</td>
										<td  class="list2" style="text-align:left;"><a href="view?bno=${row.bno}&show=Y">${row.title}</a>
										<td  class="list2" style="text-align:center;">${row.writer}</td>
										<fmt:formatDate value="${now}" pattern="yyyyMMdd" var="today" />
										<fmt:formatDate value="${row.regdate}" pattern="yyyyMMdd" var="regDate"/>
										<c:choose>
											<c:when test="${today == regDate}" >
												<td class="list2" style="color:red;">오늘</td>					
											</c:when>
											<c:otherwise>
												<td class="list2">${row.regdate}</td>
											</c:otherwise>
										</c:choose>
												<td class="list2">${row.viewcnt}</td>
									</tr>
								</c:when>
								<%-- 검색결과가 없을 떄 --%>
								<c:when test="${map.count == 0}">
									<tr style="text-align:center;"><td colspan='5' size="30px">
										<b style="color: red; font-size:30px;">'${keyword}'</b> 에 대한 검색결과가 없습니다.
									</td></tr>
								</c:when>
							</c:choose>
						</c:forEach>
					</table>		
					<!-- 페이지 네비게이션 출력 -->
					<div align="center">
						<c:if test="${map.pager.curBlock > 1}">
							<a href="board?curPage=1&searchOption=${searchOption}&keyword=${keyword}&search=${search}">[처음]</a>
						</c:if><br>
						<c:if test="${map.pager.curBlock > 1}">
							<a href="board?curPage=${map.pager.prevPage}&searchOption=${searchOption}&keyword=${keyword}&search=${search}">[이전]</a>
						</c:if>
						<c:forEach var="num" begin="${map.pager.blockBegin}" end="${map.pager.blockEnd}">
							<c:choose>
								<c:when test="${num == map.pager.curPage}">
									<!-- 현재 페이지인 경우 하이퍼링크 제거 -->
									<span style="color: red;">${num}</span>
								</c:when>
							<c:otherwise>
								<a href="board?curPage=${num}&searchOption=${searchOption}&keyword=${keyword}&search=${search}">${num}</a>
							</c:otherwise>
						</c:choose>
					</c:forEach>			
				</div>
			</div>
		</div>
	</center>
	<div style="margin-top: 100px;">
	<%@ include file="../include/footer.jsp"%>
	</div>
</body>
</html>