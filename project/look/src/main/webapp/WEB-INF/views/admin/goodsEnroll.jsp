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

<!-- Include your CSS file -->
<link rel="stylesheet" href="resources/css/goodsEnroll.css">

</head>
<body>
<h1><b style="color: blue;">${member.member_id}</b> 님이 로그인 했습니다.</h1>

<div class="guestbook">
    <h2>Look Guest</h2>

    <form>
        <div>
            <label for="bookName">책 제목</label>
            <input type="text" id="bookName" name="bookName" required>
        </div>

        <div>
            <label for="authorId">작가</label>
            <input type="text" id="authorId" name="authorId" placeholder="1" required>
        </div>

        <div>
            <label for="publeYear">출판일</label>
            <input type="text" id="publeYear" name="publeYear" placeholder="2021-03-18" required>
        </div>

        <div>
            <label for="publisher">출판사</label>
            <input type="text" id="publisher" name="publisher" required>
        </div>

        <div>
            <label for="cateCode">책 카테고리</label>
            <input type="text" id="cateCode" name="cateCode" required>
        </div>

        <div>
            <label for="bookPrice">상품 가격</label>
            <input type="text" id="bookPrice" name="bookPrice" placeholder="1" required>
        </div>

        <div>
            <label for="bookStock">상품 재고</label>
            <input type="text" id="bookStock" name="bookStock" placeholder="1" required>
        </div>

        <div>
            <label for="bookDiscount">상품 할인율</label>
            <input type="text" id="bookDiscount" name="bookDiscount" placeholder="0.01" required>
        </div>

        <div>
            <label for="bookIntro">책 소개</label>
            <input type="text" id="bookIntro" name="bookIntro" required>
        </div>

        <div>
            <label for="bookContents">책 목차</label>
            <input type="text" id="bookContents" name="bookContents" required>
        </div>

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
