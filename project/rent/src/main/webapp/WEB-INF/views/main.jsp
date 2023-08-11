<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page import="java.util.Date" %>
<html>
<head>
	<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>			<!--JQUERY (맨위 고정되어야 js 실행됨)-->
	<meta charset="UTF-8">
	<title>1team rent car</title>
	<script src="resources/js/main.js"></script>

	<!-- 왼쪽 슬라이드 -->
	<script src="./resources/js/slide.js"></script>
	<link rel="stylesheet" href="./resources/css/slide.css">

	<!-- 메인 정보 -->
	<link rel="stylesheet" href="./resources/css/maindate.css">					<!--  -언제- 메인 캘린더css -->
	<link rel="stylesheet" href="./resources/css/menuwhere.css">				<!-- -어디서- 메인 캘린더css -->
	<script src="./resources/js/menuwhere.js"></script>							<!-- -어디서- 메인 캘린더js -->

	<!-- public 포스터 -->
	<link rel="stylesheet" href="./resources/css/public.css">

	<!-- header css-->
	<link rel="stylesheet" href="./resources/css/header.css">

	<!-- footer css-->
	<link rel="stylesheet" href="./resources/css/footer.css">
      
<script>
	// 맨위 클릭 마우스 스크립트
	$(function() {
		$('#MOVE_TOP_BTN').show();
		$("#MOVE_TOP_BTN").click(function() {
			$('html, body').animate({
				scrollTop : 0
			}, 400);
			return false;
		});
    });
</script>
	<a id="MOVE_TOP_BTN" href="#" title="맨위로"><img src="./resources/image/up.png" style="border: 0;" width="40px" height="40px"/></a>
<style>
	section{
		margin-top: 100px;
	}
	/* 중앙 정렬 */
	div.section{
		display: flex;
		justify-content: center;
	}
	/* 아이콘 위치 */
	div#icon{
		position:absolute;
		right:3%;
		top:50px;
	}
	div#icon>a{
		color: black;
	}
	/* 맨위로가기 */
	a#MOVE_TOP_BTN{
		position: fixed;
		right: 20px;
		bottom: 50px;
		display: none;
		z-index: 999;
	}
	/* depth2 메뉴 좌우 조정*/
	.gnb .depth2 {
		margin-left: -40px;
		top: 50px;
		width: 1400px;
		display: none;
	}
	
	
	

	
</style>
</head>
<body>
	<%@ include file="./include/header.jsp" %>
	<div class="section">
		<section>
			<div class="left">
				<div id="pSlider">
					<ol id="slider-container" dir="ltr">
						<li id="slide_1" class="li_slide">
				        	<div class="slide-snapper"></div>
				        	<a class="prev_slide" href="#slide_4"></a>
				        	<a class="next_slide" href="#slide_2"></a>
				        </li>
						<li id="slide_2" class="li_slide">
							<div class="slide-snapper"></div>
							<a class="prev_slide" href="#slide_1"></a>
							<a class="next_slide" href="#slide_3"></a>
						</li>
						<li id="slide_3" class="li_slide">
				        	<div class="slide-snapper"></div>
							<a class="prev_slide" href="#slide_2"></a>
							<a class="next_slide" href="#slide_4"></a>
						</li>
						<li id="slide_4" class="li_slide">
							<div  class="slide-snapper"></div>
							<a class="prev_slide" href="#slide_3"></a> <a class="next_slide" href="#slide_1"></a>
						</li>
					</ol>
				</div>
			</div>
		<%
			String Date = new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date());
		%>
		<c:set value="<%=Date%>" var="today" />
		<c:set var="tomorrow" value="<%=new Date(new Date().getTime() + 60*60*24*1000)%>"/>
		<fmt:formatDate value="${tomorrow}" var="tom" pattern="yyyy-MM-dd"/>
			<article>
				<p class="title_rent-select"><img src="./resources/image/calendarW.png" width="50px">&nbsp;언제</p>
				<p class="rent-select">차량 인수일</p>
				<input  class="rent-select" name="cardate1" id="cardate1" type="date" min="${today}" value="${today}" ><br><br>
				<p class="rent-select">차량 반납일</p>
				<input class="rent-select" name="cardate2" id="cardate2" type="date" min="${tom}" value="${tom}" >
			</article>
			<article class="cen">
				<p class="title_rent-select"><img src="./resources/image/whereW.png" width="54px">&nbsp;어디서</p>
				<p class="rent-select">위치</p>
				<div id="area-list_rent-select">
					<ul>
						<li><a href="#none">서울</a>
							<ul>
								<li>
									<div id="radio">
									<input type="radio" id="select" name="local" value="성동구" ><label for="select">성동구</label>
									<input type="radio" id="select2" name="local" value="강남구" ><label for="select2">강남구</label>
									<input type="radio" id="select3" name="local" value="김포공항" ><label for="select3">김포공항</label>
									<input type="radio" id="select4" name="local" value="서울역" ><label for="select4">서울역</label>
									</div>
								</li>
							</ul>
						</li>
						<li><a href="#none">인천/경기</a>
							<ul>
								<li>
									<div id="radio">
										<input type="radio" id="select5" name="local" value="인천/연수구" ><label for="select5">인천/연수구</label>
										<input type="radio" id="select6" name="local" value="인천/인천공항" ><label for="select6">인천/인천공항</label>
										<input type="radio" id="select7" name="local" value="수원" ><label for="select7">수원</label>
										<input type="radio" id="select8" name="local" value="광명" ><label for="select8">광명</label>
									</div>
								</li>
							</ul>
						</li>
						<li><a href="#none">대전/충청</a>
							<ul>
								<li>
									<div id="radio">
										<input type="radio" id="select9" name="local" value="대전/중구" ><label for="select9">대전/중구</label>
										<input type="radio" id="select10" name="local" value="대전/남구" ><label for="select10">대전/남구</label>
										<input type="radio" id="select11" name="local" value="충주" ><label for="select11">충주</label>
										<input type="radio" id="select12" name="local" value="세종" ><label for="select12">세종</label>
									</div>
								</li>
							</ul>
						</li>
						<li><a href="#none">대구/경북</a>
							<ul>
								<li>
									<div id="radio">
										<input type="radio" id="select13" name="local" value="대구/수성구" ><label for="select13">대구/수성구</label>
										<input type="radio" id="select14" name="local" value="대구/달서구" ><label for="select14">대구/달서구</label>
										<input type="radio" id="select15" name="local" value="포항" ><label for="select15">포항</label>
										<input type="radio" id="select16" name="local" value="경주" ><label for="select16">경주</label>
									</div>
								</li>
							</ul>
						</li>
						<li><a href="#none">광주/전라</a>
							<ul>
								<li>
									<div id="radio">
										<input type="radio" id="select17" name="local" value="광주/남구" ><label for="select17">광주/남구</label>
										<input type="radio" id="select18" name="local" value="전주" ><label for="select18">전주</label>
										<input type="radio" id="select19" name="local" value="고창" ><label for="select19">고창</label>
										<input type="radio" id="select20" name="local" value="무주" ><label for="select20">무주</label>
									</div>
								</li>
							</ul>
						</li>
					</ul>
				</div>
			</article>
			<article class="right">
				<p class="title_rent-select"><img src="./resources/image/timeW.png" width="50px">&nbsp;시간</p>
				<p class="rent-select">대여 일시</p>
				<div class="rent-select">
					<select name="hour" style="width: 130px; height: 40px; font-size: 15px; margin-top: 10px;">
						<option value="01" name>1시</option>
						<option value="02" name>2시</option>
						<option value="03" name>3시</option>
						<option value="04" name>4시</option>
						<option value="05" name>5시</option>
						<option value="06" name>6시</option>
						<option value="07" name>7시</option>
						<option value="08" name>8시</option>
						<option value="09" name>9시</option>
						<option value="10" name selected>10시</option>
						<option value="11" name>11시</option>
						<option value="12" name>12시</option>
						<option value="13" name>13시</option>
						<option value="14" name>14시</option>
						<option value="15" name>15시</option>
						<option value="16" name>16시</option>
						<option value="17" name>17시</option>
						<option value="18" name>18시</option>
						<option value="19" name>19시</option>
						<option value="20" name>20시</option>
						<option value="21" name>21시</option>
						<option value="22" name>22시</option>
						<option value="23" name>23시</option>
						<option value="00" name>00시</option>            
					</select>  
					<select name="min"   style="width: 140px; height: 40px; font-size: 15px;">             
						<option value="00" name>00분</option>
						<option value="10" name>10분</option>
						<option value="20" name>20분</option>
						<option value="30" name selected>30분</option>
						<option value="40" name>40분</option>
						<option value="50" name>50분</option>
					</select>  
				</div><br>  
				<p class="rent-select">반납 일시</p>
				<div class="rent-select">
					<select name="hour2" style="width: 130px; height: 40px; font-size: 15px; margin-top: 10px;">
						<option value="01" name>1시</option>
						<option value="02" name>2시</option>
						<option value="03" name>3시</option>
						<option value="04" name>4시</option>
						<option value="05" name>5시</option>
						<option value="06" name>6시</option>
						<option value="07" name>7시</option>
						<option value="08" name>8시</option>
						<option value="09" name>9시</option>
						<option value="10" name selected>10시</option>
						<option value="11" name>11시</option>
						<option value="12" name>12시</option>
						<option value="13" name>13시</option>
						<option value="14" name>14시</option>
						<option value="15" name>15시</option>
						<option value="16" name>16시</option>
						<option value="17" name>17시</option>
						<option value="18" name>18시</option>
						<option value="19" name>19시</option>
						<option value="20" name>20시</option>
						<option value="21" name>21시</option>
						<option value="22" name>22시</option>
						<option value="23" name>23시</option>
						<option value="00" name>00시</option>
					</select>
					<select name="min2"   style="width: 140px; height: 40px; font-size: 15px;">
						<option value="00" name>00분</option>
						<option value="10" name>10분</option>
						<option value="20" name>20분</option>
						<option value="30" name selected>30분</option>
						<option value="40" name>40분</option>
						<option value="50" name>50분</option>
					</select>
				</div><br><br>
				<div class="btn_reserve">
					<input class="btn_reserve" type="button" onclick="getproduct()" value="예약하러 가기">
				</div>
	      	</article>
		</section>
	</div>
	<div style="margin-top: 100px; display: flex; justify-content: center;">
		<hr style="width: 80%;">
	</div>
		<p style="font-size: 60px; color: rgb(31, 169, 255); margin-left: 200px; margin-top: 70px;" >1team rent</p>
		<p style="font-size: 30px; color: rgb(80, 80, 80); margin-left: 200px;" >&nbsp; 이 달의 인기 차량</p>
		<div id="carousel">
			<div class="carousel-item" id="k3">
				<div class="details">
					<h3>K3</h3>
					<div>👀 34.5 K &nbsp;&nbsp; 👍 22.3 K</div>
						<p>사회 초년생들의 드림카 1team 에서..</p>
				    </div>
				</div>
			<div class="carousel-item" id="mo">
				<div class="details">
					<h3>morning</h3>
					<div>👀 22.1 K &nbsp;&nbsp; 👍 13.9 K</div>
					<p>작은고추가 맵다 달려보자..</p>
				</div>
		    </div>
			<div class="carousel-item" id="ca20">
				<div class="details">
			        <h3>canival_20</h3>
			        <div>👀 43.2 K &nbsp;&nbsp; 👍 37.1 K</div>
		        	<p> 아버지들의 드림카 카니발!</p>
		        </div>
			</div>
			<div class="carousel-item" id="ca22">
				<div class="details">
					<h3>canival_22</h3>
					<div>👀 43.2 K &nbsp;&nbsp; 👍 37.1 K</div>
			        <p>신형 카니발을 타고싶다면 1team rent 에서!</p>
				</div>
			</div>
		</div>
		<p style="font-size: 60px; color: rgb(31, 169, 255); margin-left: 200px; margin-top: 70px;" >1team rent</p>
		<p style="font-size: 30px; color: rgb(80, 80, 80); margin-left: 200px;" >&nbsp; 20대 추천 차량</p>
		<div id="carousel">
			<div class="carousel-item" id="av">
				<div class="details">
					<h3>아반떼 CN7</h3>
					<div>👀 43.2 K &nbsp;&nbsp; 👍 37.1 K</div>
					<p>준중형의 최강!</p>
				</div>
			</div>
			<div class="carousel-item" id="so">
				<div class="details">
					<h3>쏘나타 DN8</h3>
					<div>👀 43.2 K &nbsp;&nbsp; 👍 37.1 K</div>
					<p>남자라면 한번쯤 쏘나타..</p>
				</div>
			</div>
			<div class="carousel-item" id="ly">
				<div class="details">
					<h3>레이</h3>
					<div>👀 43.2 K &nbsp;&nbsp; 👍 37.1 K</div>
					<p>공간 활용도 최고!!</p>
				</div>
			</div>    
			<div class="carousel-item" id="k5">
				<div class="details">
					<h3>K5</h3>
					<div>👀 43.2 K &nbsp;&nbsp; 👍 37.1 K</div>
					<p>더이상 과학 5호기 가 아니다!</p>
				</div>
			</div>
		</div>
		
		<div style="display: flex; justify-content: center;">
		<br><br>
		<nav class="artifoo">
		
		<p align="center"><span style="font-size: 50px; font-weight: bold; color: rgb(31, 169, 255);">사고대차 서비스</span><br>
			<span style="font-size: 17px; color: rgb(94, 94, 94); font-weight: bold;">자동차 사고 발생시 보험사 보증으로 이용하는 렌터카 서비스</span></p>
		<br>
		<br>
		<img src="resources/image/boho.png" style="margin-left: 50px;"><br><br>
		<p align="left" style="font-size: 37px; font-weight: bold; color: rgb(31, 169, 255);">사고대차란? <span  style="font-size: 17px; font-weight: bold; margin-left: 790px; color: rgb(31, 169, 255);"><img src="resources/image/telephone.png" width="20px;"> 사고 대차 고객센터  1588-4920</span></p>
		<br><br>
		<hr>
		<br><br>
		<p align="left" style="font-size: 20px; font-weight: bold;">대여자격</p>
		<br><br>
		<img src="resources/image/boho2.png" style="margin-left: 60px;"><br><br>
		<br><br>
		<p align="left" style="font-size: 20px; font-weight: bold;">사고대차 서비스 장점</p>
		<br><br>
		<img src="resources/image/boho3.png" style="margin-left: 100px;"><br><br>
		<br><br>
		<p align="left" style="font-size: 37px; font-weight: bold; color: rgb(31, 169, 255);">대여 절차</p>
		<br><br>
		<img src="resources/image/boho4.png" style="margin-left:70px;"><br><br>
		</nav>
		
		</div>
		
		
	<%@ include file="./include/footer.jsp" %>
</body>
</html>