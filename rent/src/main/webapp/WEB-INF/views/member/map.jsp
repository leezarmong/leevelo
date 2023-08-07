<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>1team rent car</title>
</head>
<style>
	h2 {
		margin-top: 50px;
		margin-bottom: 50px;
		color: rgb(31, 169, 255);
		font-size: 70px;
		font-weight: 700;
		line-height: 90px;
		letter-spacing: -0.5px;
		text-align: center;
	}
	.p {
		display: block; 
		list-style-type: disc;
		margin-block-start: 1em;
		margin-block-end: 1em;
		margin-inline-start: 0px;
		margin-inline-end: 0px;
		padding-inline-start: 40px;
	}
	.p li {
		display: block;
		position: relative;
		margin-top: 20px;
	}
	.p li strong {
		display: inline-block;
		padding-right: 20px;
		padding-left: 160px;
		color: #1b1b1b;
		font-weight: 700;
		vertical-align: top;
		font-size: 30px;
	}
	span{
		font-size: 26px;
		color: #464646;
	}
</style>
<body>
	<%@ include file="../include/header.jsp"%>
	<h2>1 Team Rent Car 본사</h2>
	<div style="margin-left: 200px; margin-bottom: 50px;">
		<iframe
			src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3162.5694392836176!2d127.02109922782434!3d37.56520671518233!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca31cbb7bdb55%3A0x9c662290cf5a6947!2z7IS87Yq465287Iqk67mE7KaI7Jik7ZS87Iqk7YWU!5e0!3m2!1sko!2skr!4v1664518927258!5m2!1sko!2skr"
			width="90%" height="800" style="border: 0;" allowfullscreen=""
			loading="lazy" referrerpolicy="no-referrer-when-downgrade">
		</iframe>
	</div>
	<ul class="p" style="margin-bottom: 40px;">
		<li>
			<strong>주소</strong>
			<span>서울특별시 성동구 상왕십리동 왕십리로 410</span>
		</li>
		<li>
		<strong>전화</strong>
		<span>1544-5114</span>
		</li>
		<li>
			<strong>지하철 이용시</strong>
			<span>지하철 <b style="color: #2F9D27;">2호선</b> 상왕십리역 1번 출구 도보 7분<br>
				<span style="margin-left: 377px;">지하철  <b style="color: #2F9D27;">2호선</b>,<b style="color: #993800;">6호선</b> 신당역 2번 출구 도보 10분</span>
			</span>
		</li>
	</ul>
	<%@ include file="../include/footer.jsp"%>
</body>
</html>