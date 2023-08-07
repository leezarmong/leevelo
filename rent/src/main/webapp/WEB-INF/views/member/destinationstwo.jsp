<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>1team rent car</title>
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
	<a id="MOVE_TOP_BTN" href="#" title="맨위로"  title="맨위로"><img src="./resources/image/up.png" style="border: 0;" width="40px" height="40px"/></a>
	<%@ include file="../include/header.jsp"%>
	
	<nav>

<p>가보고 싶은곳을 클릭하세요!</p><br>
<a href="#1">1. 리움 미술관</a> <br>
<a href="#2">2. 경의선 숲길</a>	<br>
<a href="#3">3. 동대문 DDP</a>	<br>
<a href="#4">4. 서울 식물원</a>	<br>
<a href="#5">5. 하늘공원</a>	<br>

</nav>
	
	<div style="padding: 400px;  padding-top: 50px; padding-bottom: 100px;">
		<h1 style="color:rgb(31, 169, 255);">서울 근교 여행 Best 5</h1>
		<div id="best_destinations">
			<h2 id="1">1. 리움 미술관</h2>
			<img src="resources/image/riuem.png" width="961px" height="650px">
			<p>
				매번 비슷한 데이트 코스가 지겹다면 리움 미술관을 방문해 보세요.<br>
				인근에 분위기 있는 카페나 멋진 식당이 많아 데이트 코스로 추천해요.  <br>
				또한 리움 미술관은 총 4명의 건축가가 디자인하여 건물 자체도 볼거리가 되어 주는 게 특징이에요.  <br>
				미술을 잘 몰라도 색다른 분위기를 즐길 수 있어 추천해요. 어쩌면 이곳에서 전시를 보며 몰랐던 연인의 취향을 발견할지도 몰라요.
			</p>
		</div>
		<div id="best_destinations">
			<h2 id="2">2. 경의선 숲길</h2> 
			<img src="resources/image/Kyunghee.png" width="961px" height="650px">
			<p>
				기존 경의선 부지를 활용해 만든 경의선 숲길은 뉴욕의 센트럴파크를 벤치마킹하여 연트럴파크라는 별칭으로도 불려요.
				 현재 경의선 숲길은 인근 주민들의 휴식 공간으로 활용되고 있지만, 
				 독특한 분위기와 주변의 멋진 카페 덕분에 데이트 코스로도 유명해요. 
				 저녁이면 홍대로 이동해 공연을 즐길 수도 있어 연인과 오랫동안 함께 하고 싶은 사람들의 약속 장소로도 추천해요.
			</p>
		</div>
		<div id="best_destinations">
			<h2 id="3">3. 동대문 DDP</h2>
			<img src="resources/image/ddp.png" width="961px" height="650px">
			<p style="text-align: center;">
				동대문 DDP는 동대문 디자인 플라자(Dongdaemun Design Plaza)의 약자이기도 하지만 꿈꾸고(Dream), <br>
				만들고(Design), 누리는(Play) 공간이 되길 바라는 뜻에서 지은 이름이라고도 해요. <br>
				 그만큼 다양한 전시와 먹거리, 놀 거리가 가득해 지루할 틈이 없어요. <br>
				  낮에는 물론 정기 야시장이 열리기도 해서 저녁 데이트 코스로도 훌륭해요.
			</p>
		</div>
		<div id="best_destinations">
			<h2 id="4">4. 서울 식물원</h2>
			<img src="resources/image/seoulsik.png" width="961px" height="650px">
			<p>
				미래적인 건물의 온실과 한강 물길,
				 뱃길과 연결된 주제 정원으로 이뤄진 서울 식물원은 스카이워크를 걸으며 온실을 내려다보며 관람을 마무리할 수 있는 게 특징이에요. 
				 또한 온실 내부에는 사진 촬영하기 좋은 장소를 마련해 두어 관람객들이 편리하게 추억을 남길 수 있어요.
				  외부의 주제 정원은 면적이 넓어 사람들의 방해 없이 조용한 산책이 가능해 사람 많은 곳을 좋아하지 않는 사람도 만족할 거예요.
			</p>
		</div>
		<div id="best_destinations">
			<h2 id="5">5. 하늘공원</h2>
			<img src="resources/image/hanel.png" width="961px" height="650px">
			<p>
				상암 월드컵 경기장 인근 하늘공원은 특히 억새가 아름답기로 유명해요.
				하지만 그 외에도 코스모스나 핑크뮬리, 
				댑싸리 등 화려하고 그윽한 분위기를 풍기는 사진 촬영이 가능한 식물이 많아 커플 사진을 남기기에 좋아요.
				 야간 관람객을 위한 조명 시설도 완비되어 있고 전망대에서 바라보는 야경도 훌륭하여 낮부터 밤까지 로맨틱한 데이트를 즐길 수 있으니 꼭 방문해 보세요.
			</p>
		</div>
	</div>
	<%@ include file="../include/footer.jsp"%>
</body>
</html>