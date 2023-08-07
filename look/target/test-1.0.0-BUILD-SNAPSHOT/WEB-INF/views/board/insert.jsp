<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert</title>

<!-- jquery -->
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>

<!-- insertboard.js -->
<script src="resources/js/insertboard.js" charset="UTF-8"></script>

<!-- insert.css -->
<link rel="stylesheet" href="resources/css/insert.css">

</head>
<body>
<h1><b style="color: blue;">${member.member_id}</b> 님이 로그인 했습니다. </h1>

	<div class="guestbook">
		<h2>Look Guest</h2>
		
		<form>
			  <label for="name">Title:</label>
			  <input type="text" id="title" name="name" required>
		  
			  <label for="message">Content:</label>
			  <textarea id="content" name="message" required></textarea><br><br>
		  
			  <button type="button" onclick="insert()">insert</button><br>
			  <button type="button" onclick="location.href='main'">main</button>
		</form>
	 
		
	</div>
	<script type="text/javascript">
	$(".guestbook").keypress(function(e){
		if(e.keyCode == 13){
			insert();
		}
	});	
	</script>

</body>
</html>