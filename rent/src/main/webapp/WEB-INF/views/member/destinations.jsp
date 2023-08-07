<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
	<meta charset="UTF-8">
	<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script> 
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
	#best_destinations {
		box-shadow: 0 5px 10px 0 rgba(0,0,0,0.2);
		padding: 40px;
		margin-bottom: 40px;
		line-height: 30px;
	}
	/* 맨위로가기 */
	a#MOVE_TOP_BTN{
		position: fixed;
		right: 20px;
		bottom: 50px;
		display: none;
		z-index: 999;
	}
	
	nav{
	float:left;
	position:fixed;
	margin-left: 70px;
	margin-top: 65px;
	font-size: 20px;
	font-weight: bold;
	color: rgb(31, 169, 255);
	}
	nav a{
	color: black;
	}
	nav a:hover{
		 transition:0.3s;
    -webkit-transition: 0.3s;
    -moz-transition: 0.3s;
    -o-transition: 0.3s;
    -ms-transition:0.3s;
	font-size: 25px;
	color: black;
	}
	
	
</style>
</head>
<body>



	<a id="MOVE_TOP_BTN" href="#"  title="맨위로"><img src="./resources/image/up.png" style="border: 0;" width="40px" height="40px"/></a>
	<%@ include file="../include/header.jsp"%>
	
<nav>

<p>가보고 싶은곳을 클릭하세요!</p><br>
<a href="#1">1. 남산타워</a> <br>
<a href="#2">2. 오동도</a>	<br>
<a href="#3">3. 앞산 공원</a>	<br>
<a href="#4">4. 영금정</a>	<br>
<a href="#5">5. 해운대</a>	<br>

</nav>
	
	
	
	
	
	<div style="padding: 400px;  padding-top: 50px; padding-bottom: 100px;">
		<h1 style="color:rgb(31, 169, 255);">한국의 가볼만한 곳 Best 5</h1>
		<h3 style="color:rgb(80, 80, 80); ">이벤트 차량과 함께 해보세요!</h3><br><br><br>
		<div id="best_destinations">
			<h2 id="1">1. 남산 타워</h2> <img src="resources/car/아반떼22.png" width="250px" style="margin-left: 130px; margin-top: -80px;">
			<img src="resources/image/namsan.png" width="961px" height="650px">
			<p>
				남산타워로 가는 방법은 다양해요.<br>
				남산 도서관길을 지나 두 발로 걸어서 올라갈 수도 있고 마을버스나 케이블카를 타고 이동할 수도 있어요.<br>
				올라갈 때와 내려갈 때의 방법을 다르게 선택하면 남산의 여러 모습을 한 번에 즐길 수 있어요.<br>
				특히 밤에 이곳에서 바라보는 서울의 야경은 로맨틱한 분위기를 선사해 연인들에게도 인기예요. 
				특별한 날이라면 N 서울타워 내의 레스토랑을 예약해 보는 건 어떨까요?
			</p>
		</div>
		<div id="best_destinations">
			<h2 id="2">2. 오동도</h2> <img src="resources/car/k322.png" width="250px" style="margin-left: 130px; margin-top: -80px;">
			<img src="resources/image/odongdo.png" width="961px" height="650px">
			<p>
				여수 여행의 일번지라 할 수 있는 곳으로 동백꽃으로 유명해요. 
				중심가에서 차로 10분 거리에 있어 부담 없이 다녀오기 좋아요. 
				입구에서 섬까지는 방파제 길을 걷거나 동백열차를 타고 들어가죠. 
				섬에는 동백나무, 시누대 등 상록수가 울창한 숲을 이루고 있어요. 
				동백꽃은 10월에 시작해 4월에 만개하는데 동백꽃 핀 오동도의 절경은 유명해요. 
				순환 산책로가 잘 조성되어 있어 산책하기 좋아요. 
				등대 전망대에 올라 다도해의 아름다운 풍경을 감상해 보세요.
			</p>
		</div>
		<div id="best_destinations">
			<h2 id="3">3. 앞산 공원</h2> <img src="resources/car/k522.png" width="250px" style="margin-left: 130px; margin-top: -80px;">
			<img src="resources/image/apsan.png" width="961px" height="650px">
			<p style="text-align: center;">
				팔공산과 함께 대구를 상징하는 앞산(660m)은 도심 속 산이에요.<br>
				역사에는 성불산 등의 이름으로 나타나나 대구의 앞쪽에 있다 하여 앞산으로 굳어졌어요.<br>
				숲이 울창하고 계곡이 깊어 천혜의 자연공원을 이루고 있죠.<br>
				공원에는 계곡, 약수터, 산책로가 있고 낙동강 승전기념관 등 유적도 많아요.<br>
				수영장, 도서관, 식물원 등 편의 시설이 있는 대구 시민의 휴식처예요.<br>
				케이블카를 타고 전망대에 오르면 대구 시내를 한눈에 조망할 수 있는데, 특히 밤에 내려다보는 풍경이 멋져요.<br>
				앞산공원 인근에는 맛집과 예쁜 카페들이 많아요.
			</p>
		</div>
		<div id="best_destinations">
			<h2 id="4">4. 영금정</h2> <img src="resources/car/레이21.png" width="250px" style="margin-left: 100px; margin-top: -80px;">
			<img src="resources/image/younggeumjeong.png" width="961px" height="650px">
			<p>
				속초시 동명동에 위치한 영금정은 바닷가의 암반 지역을 부르는 말이지만 지금은 갯바위에 세워진 정자를 일컫기도 해요. 
				원래 영금정 자리에는 높은 바위산이 있었다 해요. 
				정자 모양의 바위산에 부딪히는 소리가 마치 신령한 거문고 소리 같다고 하여 영금정이라 불리었다 하죠. 
				갯바위에 세워진 정자에 오르면 넓은 바다를 시원하게 조망할 수 있어요. 
			</p>
		</div>
		<div id="best_destinations">
			<h2 id="5">5. 해운대</h2> <img src="resources/car/모닝.png" width="250px" style="margin-left: 130px; margin-top: -80px;">			
			<img src="resources/image/haeundae.png" width="961px" height="650px">
			<p>
				부산을 대표하는 관광지로 여름이면 전국에서 온 피서객으로 붐비는 곳이에요. 
				해변이 넓고 수심이 얕으며 주변에 음식점과 오락시설이 많아 인기가 많죠. 
				일급 호텔들이 많아 국제행사도 자주 열리는 곳이에요. 
				해수욕장 개장 시기에 맞춰 방문하면 각종 축제의 열기와 볼거리를 즐길 수 있어요. 
				밤에는 아름다운 야경과 다채로운 버스킹을 즐길 수 있어요. 
				달맞이고개에는 모던한 카페와 갤러리가 모여 있고 봄이면 벚꽃이 아름다워요. 
				근처에 동백섬, 아쿠아리움, 벡스코 등 볼거리가 많아요.
			</p>
		</div>
	</div>
	<%@ include file="../include/footer.jsp"%>
</body>
</html>