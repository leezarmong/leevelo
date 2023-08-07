<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>1team rent car</title>
<style>
	/* 텍스트내용 */
	h5 {
		font-size: 16px;
		font-weight: bold;
		line-height: 24px;
	}
	/* 배경 */
	.content {
		width: 100%;
		height: auto;
		float: left;
		background: white;
	}
	/* 1TeamRentCar */
	span{
		color:rgb(31,169,255);
		font-size: 40px;
	}
	/* 대표인사 */
	strong{
		font-size: 30px;
	}
	/* 대표이사 */
	h4{
		text-align: center;
		font-size: 20px;
	}
	/* 이미지,텍스트 가운데 지정 */
	article{
	width: 900px;	
	}
</style>
</head>
<body>
	<%@ include file="../include/header.jsp" %>
	<div class="content">
		<div class="row"></div>
			<div class="wid">
				<h5 style="font-weight: normal; text-align: center; display: center;">
					<div style="text-align: left; display: flex; justify-content: center; padding-left: 0px; line-height: 50px;">
						<div style="font-size: 20px;">
							<article>
								<p>
									<img src="" width="400" height="400" align="right" />
									<strong>대표인사</strong><br><br>
									<span>1Team Rent Car</span>는 프랜차이즈(FC)를 통해 지역밀착형인 ‘생활 렌트카’의 보급에 노력하고 있습니다.
									고객님들과 더불어 전국망을 FC지점과 함께 넓혀 가는 중이며, 국내 우수 기업으로 성장해 나갈 것입니다.
									이용자 여러분과 FC지점 여러분의 지원 하에서 앞으로 더욱 밝은 서비스를 해 나가도록 하겠습니다.
									전국 네트워크를 확대해 나가면서 당사는 교통 인프라의 한 축을 책임질 기업으로 책임을 인식하면서,
									안전과 안심을 제일로 생각하는 FC운영을 해 나가도록 한층 노력해 나가도록 하겠습니다.
									우리 주변의 생활 환경은 시시각각으로 변화하고 있습니다.
									저희 임직원과 FC지점은 렌트카라는 이동수단을 통해 시대의 변화에 대응하면서 새로운 가치를 계속해서 창조해 가도록 하겠습니다.
									앞으로 고객님들의 변환없는 이해와 지도를 해 주시길 부탁드리는 바입니다.<br><br>
								</p>
							</article>
						</div>
					</div>
				</h5>
				<h4>대표이사 김성진</h4>
			</div>
	</div>
	<%@ include file="../include/footer.jsp" %>
</body>
</html>