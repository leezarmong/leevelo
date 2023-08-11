<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>1team rent car</title>
	<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>		<!--JQUERY (맨위 고정되어야 js 실행됨)-->       
	<!-- 왼쪽 슬라이드 -->
	<script src="resources/js/slide.js"></script>
	<link rel="stylesheet" href="resources/css/slide.css">        
	<!-- 메인 정보 -->
	<link rel="stylesheet" href="resources/css/maindatetwo.css">			<!--  -언제- 메인 캘린더css -->
	<link rel="stylesheet" href="resources/css/menuwheres.css">				<!-- -어디서- 메인 캘린더css -->
	<script src="resources/js/menuwhere.js"></script>						<!-- -어디서- 메인 캘린더js -->
	<!-- public 포스터 -->
	<link rel="stylesheet" href="resources/css/public.css">      
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
<style>      
    section{
        margin-top: 100px;
        margin-bottom: 100px;
    }
    /* 중앙 정렬 */
    div.section{
		display: flex;
		justify-content: center;
		background-image: url("resources/image/ex1.png");
		background-size: cover;
		height: 110vh;	 
	}

</style> 
</head>
<body>
<%@ include file="../include/header.jsp"%>
	<div class="section">
		<section>
			<article>
				<p class="title_rent-select"><img src="./resources/image/calendarW.png" width="100px">&nbsp;언제</p>
				<p class="rent-select">차량 인수일</p>
				<input  class="rent-select" name="cardate1" type="date" ><br><br>
				<p class="rent-select">차량 반납일</p>
				<input class="rent-select" name="cardate2" type="date">  
			</article>  
			<article class="cen">
				<p class="title_rent-select"><img src="./resources/image/whereW.png" width="100px">&nbsp;어디서</p>
				<p class="rent-select">위치</p>
				<div id="area-list_rent-select">
					<ul>
						<li><a href="#none">서울</a>
							<ul>
								<li>
									<div id="radio">
										<input type="radio" id="select" name="seoul"><label for="select">성동구</label>
										<input type="radio" id="select2" name="seoul"><label for="select2">강남구</label>
										<input type="radio" id="select3" name="seoul"><label for="select3">김포공항</label>
										<input type="radio" id="select4" name="seoul"><label for="select4">서울역</label>
									</div>
								</li>
							</ul>
						</li>
						<li><a href="#none">인천/경기</a>
							<ul>
								<li>
									<div id="radio">
										<input type="radio" id="select5" name="inch"><label for="select5">인천/연수구</label>
										<input type="radio" id="select6" name="inch"><label for="select6">인천/인천공항</label>
										<input type="radio" id="select7" name="inch"><label for="select7">수원</label>
										<input type="radio" id="select8" name="inch"><label for="select8">광명</label>
									</div>
								</li>
							</ul>
						</li>
						<li><a href="#none">대전/충청</a>
							<ul>
								<li>
									<div id="radio">
										<input type="radio" id="select9" name="daej"><label for="select9">대전/중구</label>
										<input type="radio" id="select10" name="daej"><label for="select10">대전/남구</label>
										<input type="radio" id="select11" name="daej"><label for="select11">충주</label>
										<input type="radio" id="select12" name="daej"><label for="select12">세종</label>
									</div>
								</li>
							</ul>
						</li>
						<li><a href="#none">대구/경북</a>
							<ul>
								<li>
									<div id="radio">
										<input type="radio" id="select13" name="daeg"><label for="select13">대구/수성구</label>
										<input type="radio" id="select14" name="daeg"><label for="select14">대구/달서구</label>
										<input type="radio" id="select15" name="daeg"><label for="select15">포항</label>
										<input type="radio" id="select16" name="daeg"><label for="select16">경주</label>
									</div>
								</li>
							</ul>
						</li>
						<li><a href="#none">광주/전라</a>
							<ul>
								<li>
									<div id="radio">
										<input type="radio" id="select17" name="gwhang"><label for="select17">광주/남구</label>
										<input type="radio" id="select18" name="gwhang"><label for="select18">전주</label>
										<input type="radio" id="select19" name="gwhang"><label for="select19">고창</label>
										<input type="radio" id="select20" name="gwhang"><label for="select20">무주</label>
									</div>
								</li>
							</ul>
						</li>
					</ul>
				</div>
			</article>
			<article class="right">
				<p class="title_rent-select"><img src="./resources/image/timeW.png" width="100px">&nbsp;시간</p>
				<p class="rent-select">대여 일시</p>
				<div class="rent-select">
					<select name="hour" style="width: 170px; height: 50px; font-size: 22px; margin-top: 20px;">
						<option value="1" name>1시</option>
						<option value="2" name>2시</option>
						<option value="3" name>3시</option>
						<option value="4" name>4시</option>
						<option value="5" name>5시</option>
						<option value="6" name>6시</option>
						<option value="7" name>7시</option>
						<option value="8" name>8시</option>
						<option value="9" name>9시</option>
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
					<select name="min"   style="width: 170px; height: 50px; font-size: 22px;">    
						<option value="30" name>00분</option>
						<option value="30" name>10분</option>
						<option value="30" name>20분</option>
						<option value="00" name selected>30분</option>
						<option value="30" name>40분</option>
						<option value="30" name>50분</option>
					</select>
				</div><br>
  				<p class="rent-select">반납 일시</p>
          		<div class="rent-select">
					<select name="hour2" style="width: 170px; height: 50px; font-size: 22px; margin-top: 20px;">
						<option value="1" name>1시</option>
						<option value="2" name>2시</option>
						<option value="3" name>3시</option>
						<option value="4" name>4시</option>
						<option value="5" name>5시</option>
						<option value="6" name>6시</option>
						<option value="7" name>7시</option>
						<option value="8" name>8시</option>
						<option value="9" name>9시</option>
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
					<select name="min2"   style="width: 170px; height: 50px; font-size: 22px;">
						<option value="30" name>00분</option>
						<option value="30" name>10분</option>
						<option value="30" name>20분</option>
						<option value="00" name selected>30분</option>
						<option value="30" name>40분</option>
						<option value="30" name>50분</option>
					</select>
				</div><br><br>
				<div class="btn_reserve">
          			<a href="introduction"><input class="btn_reserve" type="submit" value="예약하러 가기"></a>
				</div>
			</article>
		</section>   
	</div>
<%@ include file="../include/footer.jsp"%>
</body>
</html>