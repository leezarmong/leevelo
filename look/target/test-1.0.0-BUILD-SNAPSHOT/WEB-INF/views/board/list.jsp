<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Board List</title>

<!-- insert.css -->
<link rel="stylesheet" href="resources/css/list.css">

</head>
<body>
<h1><b style="color: blue;">${member.member_id}</b> 님이 로그인 했습니다. </h1>

	<div class="bulletin-board">
		<h2>Look List</h2>
		<table>
		  <tr>
			<th>WRITER</th>
			<th>TITLE</th>
			<th>DETAILS</th>
		  </tr>
		  <c:forEach items="${list}" var="board">
		  <tr>
			<td>${board.writer}</td>
			<td>${board.title} </td>
			<td><a href="/test/Detail?seq=<c:out value='${board.seq}'/>">상세 보기</a></td>
		  </tr>
		  </c:forEach>
		 
		</table><br><br>
		
		<input type="button" id="guestbook" onclick="location.href='main'" value="main">
		
	  </div>
	  
	  
</body>
</html>