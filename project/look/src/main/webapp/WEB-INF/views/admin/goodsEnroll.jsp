<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert</title>

<!-- Include jQuery -->
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
  <!-- Include CKEditor5 -->
<script src="https://cdn.ckeditor.com/ckeditor5/39.0.2/classic/ckeditor.js"></script>


<!-- Include Datepicker (달력) -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

<!-- Include your JavaScript file -->
<script src="resources/js/adminbook/goodsEnroll.js" charset="UTF-8"></script>

<!-- Include your CSS file -->
<link rel="stylesheet" href="resources/css/goodsEnroll.css">


	<!-- ckeditor 높이 -->
	<style type="text/css">
	
	.ck-content {						
	    height: 170px;
	}
	</style>

</head>



<body>
<h1><b style="color: blue;">${member.member_id}</b> 님이 로그인 했습니다.</h1>



<!-- 작가 등록 페이지 -->
 <button type="button" id="auInsert" onclick="location.href='authorInsert'">authorInsert</button>
 
 <!-- 작가 목록 페이지 -->
  <button type="button" id="auList" onclick="location.href='authorList'">authorList</button>






<div class="guestbook">
    <h2>Look Enroll</h2>

    <form>
        <div>
            <label>책 제목</label>
            <input type="text" id="bookName" name="bookName" required>
        </div><br><br>

        <div>
            <label>작가 (코드)</label>
            <input id="authorName_input" readonly="readonly">
			<input id="authorId" name="authorId" type="hidden">
			<button class="authorId_btn">작가 선택</button>
           <!--  <input type="text" id="authorId" name="authorId" placeholder="1" required> -->
        </div><br><br>

        <div>
            <label>출판일</label>
            <input id="publeYear" name="publeYear" autocomplete="off" readonly="readonly">
        </div><br><br>

        <div>
            <label>출판사</label>
            <input type="text" id="publisher" name="publisher" required>
        </div><br><br>

        <div>
            <label>책 카테고리</label>
            <input type="text" id="cateCode" name="cateCode" required>
        </div><br><br>

        <div>
            <label>상품 가격</label>
            <input type="text" id="bookPrice" name="bookPrice" placeholder="1" required>
        </div><br><br>

        <div>
            <label>상품 재고</label>
            <input type="text" id="bookStock" name="bookStock" placeholder="1" required>
        </div><br><br>

        <div>
            <label>상품 할인율</label>
            <input type="text" id="bookDiscount" name="bookDiscount" placeholder="0.01" required>
        </div><br><br>

        <div>
            <label>책 소개</label>
            <textarea name="bookIntro" id="bookIntro"></textarea>
           
        </div><br><br>

        <div>
            <label>책 목차</label>
            <textarea name="bookContents" id="bookContents"></textarea>
            
        </div>
        
        
        


        <div>
            <button type="button" id="insertButton" onclick="bookinsert()">Insert</button>
            <button type="button" onclick="location.href='main'">Main</button>
        </div>
    </form>
</div>

<script type="text/javascript">

	/*------ 엔터 ------*/
    $(".guestbook input").keypress(function (e) {
        if (e.keyCode == 13) {
            bookinsert();
        }
    });
    
	
    /*------ 달력 ------*/
    /* 설정 */
	const config = {
			dateFormat: 'yy-mm-dd',
			/* 날짜 순서 */
			
			showOn : "button",
			/* 버튼 생성 */
			
			buttonText:"날짜 선택",
			/* 버튼 글짜 */
			
			 prevText: '이전 달',
			    nextText: '다음 달',
			    monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
			    monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
			    dayNames: ['일','월','화','수','목','금','토'],
			    dayNamesShort: ['일','월','화','수','목','금','토'],
			    dayNamesMin: ['일','월','화','수','목','금','토'],
			    yearSuffix: '년',
			    changeMonth: true,
		        changeYear: true
			    /* 날짜 한글 화 */
	}
    
    /* 클릭 Datepicker(); 호출 */
    $(function() {
    	  $( "input[name='publeYear']" ).datepicker(config);
    	});
    
    
    /*------ 작가 선택 ------*/ 
    /* 작가 선택 버튼 */
	$('.authorId_btn').on("click",function(e){
		
		/* 팝업창 좌표 */
		var popupWidth = 500;
	    var popupHeight = 600;  
		var popupX = (window.screen.width / 2) - (popupWidth / 2);
	    var popupY = (window.screen.height / 2) - (popupHeight / 2);
	    
		e.preventDefault();
		
		let popUrl = "authorPop";
		let popOption = "status=no,width = 650px, height=400px, top=300px,left=" + popupX + ",top=" + popupY+"scrollbars=yes";
		
		window.open(popUrl,"작가 찾기",popOption);
		
	});

</script>


</body>
</html>
