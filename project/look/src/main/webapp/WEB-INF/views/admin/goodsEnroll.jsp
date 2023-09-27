<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert</title>

<!-- Include jQuery -->
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>

<!-- Include your JavaScript file -->
<script src="resources/js/adminbook/goodsEnroll.js" charset="UTF-8"></script>
<!-- Include CKEditor5 -->
<script src="https://cdn.ckeditor.com/ckeditor5/39.0.2/classic/ckeditor.js"></script>

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

<div class="guestbook">
    <h2>Look Guest</h2>

    <form>
        <div>
            <label for="bookName">책 제목</label>
            <input type="text" id="bookName" name="bookName" required>
        </div><br><br>

        <div>
            <label for="authorId">작가 (코드)</label>
            <input type="text" id="authorId" name="authorId" placeholder="1" required>
        </div><br><br>

        <div>
            <label for="publeYear">출판일</label>
            <input type="text" id="publeYear" name="publeYear" placeholder="2021-03-18" required>
        </div><br><br>

        <div>
            <label for="publisher">출판사</label>
            <input type="text" id="publisher" name="publisher" required>
        </div><br><br>

        <div>
            <label for="cateCode">책 카테고리</label>
            <input type="text" id="cateCode" name="cateCode" required>
        </div><br><br>

        <div>
            <label for="bookPrice">상품 가격</label>
            <input type="text" id="bookPrice" name="bookPrice" placeholder="1" required>
        </div><br><br>

        <div>
            <label for="bookStock">상품 재고</label>
            <input type="text" id="bookStock" name="bookStock" placeholder="1" required>
        </div><br><br>

        <div>
            <label for="bookDiscount">상품 할인율</label>
            <input type="text" id="bookDiscount" name="bookDiscount" placeholder="0.01" required>
        </div><br><br>

        <div>
            <label>책 소개</label>
            <textarea name="bookIntro" id="bookIntro_textarea"></textarea>
           
        </div><br><br>

        <div>
            <label>책 목차</label>
            <textarea name="bookContents" id="bookContents_textarea"></textarea>
            
        </div>
        
        
        <script type="text/javascript">
        /* 책 소개 */
    	ClassicEditor
    		.create(document.querySelector('#bookIntro_textarea'))
    		.catch(error=>{
    			console.error(error);
    		});
    		
    	/* 책 목차 */	
    	ClassicEditor
    	.create(document.querySelector('#bookContents_textarea'))
    	.catch(error=>{
    		console.error(error);
    	});
        </script>


        <div>
            <button type="button" onclick="bookinsert()">Insert</button>
            <button type="button" onclick="location.href='main'">Main</button>
        </div>
    </form>
</div>

<script type="text/javascript">
    $(".guestbook input").keypress(function (e) {
        if (e.keyCode == 13) {
            bookinsert();
        }
    });
</script>

</body>
</html>
