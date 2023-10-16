<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
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

<!-- goodsGetList -->
<button type="button" id="auList" onclick="location.href='goodsGetList'">goodsGetList</button>



<div class="guestbook">
    <h2>Look Enroll</h2>

    <form>
        <div>
            <label>책 제목</label>
            <input type="text" id="bookName" name="bookName" required>
           
            
        </div><br><br>

        <div>
            <label>작가 (코드)</label>
          
            <input id="authorName" readonly="readonly">
			<input id="authorId" name="authorId" type="hidden">
			<!-- id에  authorId 가 없었기 때문에 오류가 났었음.... -->
		
			
			<button class="authorId_btn">작가 선택</button>
         
        </div><br><br>

        <div>
            <label>출판일</label>
            <input id="publeYear" name="publeYear" autocomplete="off" readonly="readonly">
          
            
        </div><br><br>

        <div>
            <label>출판사</label>
            <input type="text" id="publisher" name="publisher" required>
          
            
        </div><br><br><br>

        <div>
            <label>책 카테고리</label>
            <div class="cate_wrap">
				<span>대분류</span>
				<select class="cate1" id="cateCode1">
					<option selected value="none">선택</option>
				</select>
			</div>
			<div class="cate_wrap">
				<span>중분류</span>
				<select class="cate2" id="cateCode2">
					<option selected value="none">선택</option>
				</select>
			</div>
			<div class="cate_wrap">
				<span>소분류</span>
				<select class="cate3" name="cateCode" id="cateCode3">
					<option selected value="none">선택</option>
				</select>
			</div> 
			
			
           <!--  <input type="text" id="cateCode" name="cateCode" required> -->
        </div><br><br><br>

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
            
            <input id="discount_interface" maxlength="2" value="0" placeholder="1~99 숫자를 입력해주세요.">
			<input id="bookDiscount" name="bookDiscount" type="hidden" value="0">	 
			<span class="step_val">할인 가격 : <span class="span_discount"></span></span> 
			
          <!--   <input type="text" id="bookDiscount" name="bookDiscount" placeholder="0.01" required> -->
           
            
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

/*------ 할인율 ------*/
/* 할인율 Input 설정 */
$("#discount_interface").on("propertychange change keyup paste input", function(){
	
	let userInput = $("#discount_interface");
	let discountInput = $("input[name='bookDiscount']");
	
	let discountRate = userInput.val();					// 사용자가 입력할 할인값
	let sendDiscountRate = discountRate / 100;					// 서버에 전송할 할인값
	let goodsPrice = $("input[name='bookPrice']").val();			// 원가
	let discountPrice = goodsPrice * (1 - sendDiscountRate);		// 할인가격
	if(!isNaN(discountRate)){
		
	      
	$(".span_discount").html(discountPrice);
	discountInput.val(sendDiscountRate);	
	}
});	

$("input[name='bookPrice']").on("change", function(){
	
	let userInput = $("#discount_interface");
	let discountInput = $("input[name='bookDiscount']");
	
	let discountRate = userInput.val();					// 사용자가 입력한 할인값
	let sendDiscountRate = discountRate / 100;			// 서버에 전송할 할인값
	let goodsPrice = $("input[name='bookPrice']").val();			// 원가
	let discountPrice = goodsPrice * (1 - sendDiscountRate);		// 할인가격
	if(!isNaN(discountRate)){
		
	
	$(".span_discount").html(discountPrice);
	}
});



/*------ 카테고리 ------*/
/* javascript JSON 변환 */
let cateList = JSON.parse('${cateList}');

let cate1Array = new Array();
let cate2Array = new Array();
let cate3Array = new Array();

let cate1Obj = new Object();
let cate2Obj = new Object();
let cate3Obj = new Object();
/* Array (비어있는 배열) 와 Object (비어있는 객체) 생성   */


let cateSelect1 = $(".cate1");		
let cateSelect2 = $(".cate2");
let cateSelect3 = $(".cate3");
/* 위 의 해당 select 설정. */


/* 카테고리 배열 초기화 메서드 */
function makeCateArray(obj,array,cateList, tier){
	//mackeCateArray 생성
	
	for(let i = 0; i < cateList.length; i++){
		if(cateList[i].tier === tier){
			obj = new Object();
			// cateList 의 tier 값이 일치하게 되면 obj 가 생성된다.
			
			obj.cateName = cateList[i].cateName;
			obj.cateCode = cateList[i].cateCode;
			obj.cateParent = cateList[i].cateParent;
			
			array.push(obj);				
			
		}
	}
}

/* 배열 초기화 */
makeCateArray(cate1Obj,cate1Array,cateList,1);
makeCateArray(cate2Obj,cate2Array,cateList,2);
makeCateArray(cate3Obj,cate3Array,cateList,3);

$(document).ready(function(){
	console.log(cate1Array);
	console.log(cate2Array);
	console.log(cate3Array);
	
	
});

/* 대분류 */
for(let i = 0; i < cate1Array.length; i++){
	cateSelect1.append("<option value='"+cate1Array[i].cateCode+"'>" + cate1Array[i].cateName + "</option>");
}

/* 중분류 <option> 태그 */
$(cateSelect1).on("change",function(){
	
	let selectVal1 = $(this).find("option:selected").val();	
	
	cateSelect2.children().remove();
	cateSelect3.children().remove();
	
	cateSelect2.append("<option value='none'>선택</option>");
	cateSelect3.append("<option value='none'>선택</option>");
	/* select 에서 1 를 선택할경우 나머지 중분류 에서 2 또는 3 이 선택할수 없게 된다. */
	
	for(let i = 0; i < cate2Array.length; i++){
		if(selectVal1 === cate2Array[i].cateParent){
			cateSelect2.append("<option value='"+cate2Array[i].cateCode+"'>" + cate2Array[i].cateName + "</option>");	
		}
	}// for
	
});


/* 소분류 <option>태그 */
$(cateSelect2).on("change",function(){
	
	let selectVal2 = $(this).find("option:selected").val();
	
	cateSelect3.children().remove();
	
	cateSelect3.append("<option value='none'>선택</option>");		
	
	for(let i = 0; i < cate3Array.length; i++){
		if(selectVal2 === cate3Array[i].cateParent){
			cateSelect3.append("<option value='"+cate3Array[i].cateCode+"'>" + cate3Array[i].cateName + "</option>");	
		}
	}// for		
	
});




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
		var popupWidth = 630;
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
