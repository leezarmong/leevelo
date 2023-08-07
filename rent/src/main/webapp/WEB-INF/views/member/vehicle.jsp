<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE hyml>
<html>
<head>
<meta charset="UTF-8">
<title>1team rent car</title>
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="resources/css/vehicle.css">
</head>
<body>
	<%@ include file="../include/header.jsp" %>
	<p class="title">new 신차</p>
	<div class="slider" x-data="{start: true, end: false}">
		<div class="slider__content" x-ref="slider" x-on:scroll.debounce="$refs.slider.scrollLeft == 0 ? start = true : start = false; Math.abs(($refs.slider.scrollWidth - $refs.slider.offsetWidth) - $refs.slider.scrollLeft) < 5 ? end = true : end = false;">
			<div class="slider__item">
				<img class="slider__image" src="resources/car/g80.png" alt="Image">
				<div class="slider__info">
					<h2>G80</h2>
		      	</div>
			</div>
			
			<div class="slider__item">
				<img class="slider__image" src="resources/car/그랜저22.png" alt="Image">
				<div class="slider__info">
					<h2>그랜저22</h2>
		      	</div>
			</div>
			<div class="slider__item">
				<img class="slider__image" src="resources/car/k8.png" alt="Image">
				<div class="slider__info">
					<h2>k8</h2>
				</div>
		    </div>
		    <div class="slider__item">
				<img class="slider__image" src="resources/car/스팅어.png" alt="Image">
				<div class="slider__info">
					<h2>스팅어</h2>
		      	</div>
		    </div>
			<div class="slider__item">
				<img class="slider__image" src="resources/car/팰리세이드.png" alt="Image">
				<div class="slider__info">
					<h2>팰리세이드</h2>
				</div>
			</div>
		    <div class="slider__item">
				<img class="slider__image" src="resources/car/쏘렌토.png" alt="Image">
				<div class="slider__info">
					<h2>쏘렌토</h2>
				</div>
		    </div>
		    <div class="slider__item">
		      	<img class="slider__image" src="resources/car/gv70.png" alt="Image">
		      	<div class="slider__info">
		        	<h2>gv70</h2>
				</div>
		    </div>
		    <div class="slider__item">
				<img class="slider__image" src="resources/car/gv80.png" alt="Image">
				<div class="slider__info">
					<h2>gv80</h2>
				</div>
			</div>
		</div>
	</div>
	<p class="title">이벤트 차량</p>
	<p class="title2">선택 된 driving 차량과 함께 이벤트를 즐겨보세요.</p> <a href="destinations" style="margin-left: 320px;">>>driving 코스 보기</a>
	<div class="slider" x-data="{start: true, end: false}">
		<div class="slider__content" x-ref="slider" x-on:scroll.debounce="$refs.slider.scrollLeft == 0 ? start = true : start = false; Math.abs(($refs.slider.scrollWidth - $refs.slider.offsetWidth) - $refs.slider.scrollLeft) < 5 ? end = true : end = false;">
			<div class="slider__item">
				<img class="slider__image" src="resources/car/아반떼22.png" alt="Image">
				<div class="slider__info">
					<h2>아반떼CN7</h2>
				</div>
			</div>
			<div class="slider__item">
				<img class="slider__image" src="resources/car/k322.png" alt="Image">
				<div class="slider__info">
					<h2>k3</h2>
				</div>
			</div>
			<div class="slider__item">
				<img class="slider__image" src="resources/car/k522.png" alt="Image">
				<div class="slider__info">
					<h2>K5</h2>
				</div>
			</div>
			<div class="slider__item">
				<img class="slider__image" src="resources/car/레이21.png" alt="Image">
				<div class="slider__info">
					<h2>레이</h2>
				</div>
			</div>
			<div class="slider__item">
				<img class="slider__image" src="resources/car/모닝.png" alt="Image">
				<div class="slider__info">
					<h2>모닝</h2>
				</div>
			</div>
		</div>
	</div><br><br><br>
	<%@ include file="../include/footer.jsp" %>
</body>
</html>