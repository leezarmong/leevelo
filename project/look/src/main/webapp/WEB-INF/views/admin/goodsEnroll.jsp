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
<script src="resources/js/adminbook/goodsEnroll.js" charset="UTF-8"></script>

<!-- insert.css -->
<link rel="stylesheet" href="resources/css/goodsEnroll.css">

</head>
<body>
<h1><b style="color: blue;">${member.member_id}</b> 님이 로그인 했습니다. </h1>

	<div class="guestbook">
		<h2>Look Guest</h2>
		
		<form>
			  <label >책 제목</label>
			  <input type="text" id="BOOKNAME"  required>
			  <br><br>
			  
			 <!-- /**/ --> <label >작가</label>
			  <input type="text" id="AUTHORID" placeholder="1"  required>
			  <br><br>
			  
			  <label >출판일</label>
			  <input type="text" id="PUBLEYEAR" placeholder="00/00/00"  required>
			  <br><br>
			  
			  <label >출판사</label>
			  <input type="text" id="PUBLISHER"  required>
			  <br><br>
			 
			  <label >책 카테고리</label>
			  <input type="text" id="CATECODE" required>
			  <br><br>
			  
			 <!-- /**/ --> <label >상품 가격</label>
			  <input type="text" id="BOOKPRICE" placeholder="1" required>
			  <br><br>
			  
			<!-- /**/ -->  <label >상품 재고</label>
			  <input type="text" id="BOOKSTOCK" placeholder="1" required>
			  <br><br>
			  
			 <!-- /**/ --> <label >상품 할인율</label>
			  <input type="text" id="BOOKDISCOUNT" placeholder="0.1" required>
			  <br><br>
			  
			  <label >책 소개</label>
			  <input type="text" id="BOOKINTRO"  required>
			  <br><br>
			  
			  <label >책 목차</label>
			  <input type="text" id="BOOKCONTENTS" required>
			  <br><br>
			  
			 
			 
			 
			 <br><br>
		  
			  <button type="button" onclick="bookinsert()">insert</button><br>
			  <button type="button" onclick="location.href='main'">main</button>
			  
			  <br><br>
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