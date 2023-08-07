<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>1team rent car</title>
</head>
<style>
	section {
		display: flex;
		justify-content: center;
	}
	article{
		display: block;
		margin-top: 50px;
		margin-bottom: 50px;
		margin-left: 50px;
		padding-left: 50px;
		width: 60%;
	}
	details{
		border-bottom: 1px solid rgb(207, 203, 203);
		line-height: 50px;
		margin-bottom: 20px;
		margin-left: 25px;
	}
	summary{
		cursor: pointer;
		outline: none;
		font-size: 18px;
		font-weight: bold;
		margin-left: -22px;
	}	
	div#faq{
		width: 100%;
		max-width: 1300px;
		top: 0px;
		margin: 0 auto;
		background-color: #fff;
		overflow: hidden;
	}	   
	div.title{
		font-size: 50px;
		text-align: center;
		line-height: 40px;
		font-weight: 600;
		letter-spacing: -0.5px;
		margin: 2%;
		padding: 0 0 10px 0;
	}	
	div.b, div.pre{
		background-color: #f7f7f7;
		width: 95%;
		padding: 2.5%;
		display: block;
		clear: both;
		float: left;
		font-size: 18px;
		line-height: 24px;
	}
	div.short_txt3 {
		font-size: 25px;
		color: rgb(31, 169, 255);
		font-weight: 600;
		line-height: 45px;
		padding: 0 0 0 0px;
	}	
</style>
<body>
	<%@ include file="../include/header.jsp" %>
	<div id="faq">
	<div class="title" style="margin-top:50px; margin-bottom: 50px;">FAQ</div>
	<div class="short_txt3">1Team Rent Car에 자주 하는 질문BEST</div><hr>
		<details>
			<summary>대여 자격이 어떻게 되나요?</summary>
			<div class="b">소형,중형 만21세 이상, 운전경력 만 1년 이상의 운전면허 소지자<br>
				대형,고급,RV,승합 만21세 이상, 운전경력 만 3년 이상의 운전면허 소지자<br>
				이 기본 대여조건은 세븐렌터카의 전지점이 동일하게 적용됩니다.</div>	    
		</details>
		<details>
			<summary>예약은 어떻게 하나요?</summary>
			<div class="b">예약은 고객센터나 실시간예약을 통해서 가능하며 카톡,위챗으로도 예약이 가능합니다.</div>
		</details>
		<details>
			<summary>결제는 어떻게 하나요?</summary>
			<div class="b">일반대여요금의 할인금액은 현금결제 기준가격이며 카드결제, 현장이체도 가능합니다.</div>
		</details>
		<details>
			<summary>연료비는 어떻게 계산되나요?</summary>
			<div class="b">연료비는 전액 사용자 부담이며 차량대여 시 직원과 함께 체크하여 기존 양 만큼동일하게 반납해주시면 됩니다.<br>
				기존양보다 적을 경우 실비 정산하여담당자에게 지불하시면 됩니다.</div>
		</details>
		<details>
			<summary>딜리버리 서비스 비용이 발생하나요?</summary>
			<div class="b">전 지역 집 앞까지 무료입니다. 반납도 동일합니다. 단, 일부지역은 추가요금이 발생될 수 있습니다.</div>
		</details>
		<details>
			<summary>하루 연장하려면 어떻게 하나요?</summary>
			<div class="b">약속된 반납시간 이전에 계약지접 및 담당자에게 통보하여야 하며
				사전 동의 없이 임의로 연장해버리는 경우 보험 및 보상을 받으실 수 없습니다.</div>
		</details>
		<details>
			<summary>예약을 했는데 취소하게 될 경우 어떻게 하나요?</summary>
			<div class="b">대여일 24시간 이전 → 전액환불 / 대여일 24시간 이내 → 환불 불가</div>
		</details>
		<details>
			<summary>면허증 분실 시 차량대여가 가능한가요?</summary>
			<div class="pre">운전자가 면허증을 분실하셨을 경우<br>
				1. 운전면허 시험장에서 재발급 요청하시면 1시간이내 현장에서 발급됩니다.<br>
				2. 가까운 경찰서 방문 운전경력 증명서 발급하시고 신분증과 함께 제출해 주세요.<br>
				3. 운전면허 관리공단 방문(http://dl.koroad.or.kr/) 공인인증서로 면허상세조회를 출력하여 오시면 됩니다.<br>
				위 사항들은 주민등록증이 있어야 가능합니다.</div>
		</details>
		<details>
			<summary>2명이 운전자로 등록할 수 있나요?</summary>
			<div class="b">계약서상의 제1운전자, 제2운전자 기입이 가능하며 별도의 추가비용은 없습니다.<br>
				계약자 이외의 제3자가 운전할 경우 보험 및 보상을 받으실 수 없습니다.</div>
		</details>
		<details>
			<summary>사고 및 고장발생 시 어떻게 해야 하나요?</summary>
			<div class="b">주간 고객센터 1688-0703 > 3번 > 사고 및 정비접수 연결하시면 됩니다.<br>
				배차 담당자에게 바로 연락 주셔도 처리됩니다.(배차 시 꼭 명함을 받아주세요.)</div>
		</details>
	</div><br><br>
	<%@ include file="../include/footer.jsp" %>
</body>
</html>