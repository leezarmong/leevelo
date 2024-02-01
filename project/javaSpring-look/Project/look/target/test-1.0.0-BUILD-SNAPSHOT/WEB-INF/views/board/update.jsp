<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Page</title>
</head>

<!-- jquery -->
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>

<!-- insertboard.js -->
<script src="resources/js/updateboard.js" charset="UTF-8"></script>

<!-- insert.css -->
<link rel="stylesheet" href="resources/css/detail.css">

<body>
<h1><b style="color: blue;">${member.member_id}</b> 님이 로그인 했습니다. </h1>

<div class="bulletin-board">
		<h2>Update</h2>
		<table>
		
			<tr>
				<th>번호</th>
				<th>TITLE</th>
				<th>내용</th>
			</tr>
			
		  	<tr>
				<td>${update.seq}<input type="hidden" name="bno" id="seq" value="${update.seq}"/></td>
				<td> <input type="text" id="title" value="${update.title}" style="height: 50px; font-size: 18px;"> </td>
				<td> <textarea id="content">${update.content}</textarea> </td>
		  	</tr>
		  
		</table><br><br>
		
		<input type="button" id="guestbook" value="Update" onclick="update()">
		<input type="button" id="guestbook" value="Back" onclick="location.href='Detail?seq=${update.seq}'">
	</div>


</body>
</html>