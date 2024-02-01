<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>작가 등록 페이지 입니다.</title>

<!-- Include jQuery -->
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
  

<!-- swal -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>


<!-- Include your JavaScript file -->
<script src="resources/js/adminbook/authorInsert.js" charset="UTF-8"></script>

<!-- Include your CSS file -->
<link rel="stylesheet" href="resources/css/authorInsert.css">




</head>



<body>
<h1><b style="color: blue;">${member.member_id}</b> 님이 로그인 했습니다.</h1>



<!-- 등록 페이지로 되돌아 가기 -->
 <button type="button" id="auInsert" onclick="location.href='goodsEnroll'">뒤로가기</button>
 


<div class="guestbook">
    <h2>authorInsert</h2>

    <form>
        <div>
            <label>작가 이름</label>
            <input type="text" id="authorName" name="authorName" required>
        </div><br><br>

      
        <div>
            <label>소속 국가</label>
            <select id="nationId" name="nationId">
				<option value="none" selected>=== 선택 ===</option>
				<option value="01">국내</option>
				<option value="02">국외</option>
			</select>
        </div><br><br>

       
       <div>
            <label>작가 소개</label>
            <input type="text" id="authorIntro" name="authorIntro" required>
        </div><br><br>

        <div>
            <button type="button" id="insertButton" onclick="authorInsert()">Insert</button>
            <button type="button" onclick="location.href='main'">Main</button>
        </div>
    </form>
</div>

<script type="text/javascript">

	/*------ 엔터 ------*/
    $(".guestbook input").keypress(function (e) {
        if (e.keyCode == 13) {
        	authorInsert();
        }
    });
    

</script>


</body>
</html>
