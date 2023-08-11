<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detail page </title>

<!-- insert.css -->
<link rel="stylesheet" href="resources/css/detail.css">

</head>
<body>
<h1><b style="color: blue;">${member.member_id}</b> 님이 로그인 했습니다. </h1>

	<div class="bulletin-board">
		<h2>Detail</h2>
			<table>
		
				<tr>
					<th>번호</th>
					<th>TITLE</th>
					<th>내용</th>
				</tr>
			
		  		<tr>
					<td>${detail.seq}</td>
					<td>${detail.title} </td>
					<td><textarea id="content">${detail.content}</textarea></td>
		 		 </tr>
		  
			</table><br><br>
		
	<input type="button" id="guestbook" value="목록" onclick="location.href='list'">
		
			<!-- 작성자만 수정 삭제 가능하게 -->
	<c:if test="${member.member_id == detail.writer}">
		
		<input type="button" id="guestbook" value="삭제" onclick="location.href='delete?seq=${detail.seq}'">
		<input type="button" id="guestbook" value="수정" onclick="location.href='updatepage?seq=${detail.seq}'">
	
	</c:if>
		
	</div>

</body>
</html>