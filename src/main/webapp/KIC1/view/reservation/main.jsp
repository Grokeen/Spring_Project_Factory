<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" ; charset="utf-8" />
</head>
<body>
	<style>
.dj_slider .slider_1 {
	min-height: 850px;
}
.dj_slider .slider_1.slick-initialized {
	height: 850px;
}
</style>
	<div id="wrap">
		<div id="content">
			<div id="container">
				<div id="main_section_1">
					<div class="section left">
						<div class="dj_slider slider_1_top action_block">
							<div class="foot_btn">
								<ul class="inner">
									<li class="btn_prev"><img
										src="${pageContext.request.contextPath}/photo/main.img/slider_2_prev_btn.png" /></li>
									<li class="btn_next"><img
										src="${pageContext.request.contextPath}/photo/main.img/slider_2_next_btn.png" /></li>
								</ul>
							</div>
							<div class="slider_tag">
								<span> 1 / 3 </span>
							</div>
							<div class="slider_1">
								<div
								>
									<img
										src="${pageContext.request.contextPath}/photo/main.img/main2_1.jpg"
										id="slider_1_img" style="width: 100%;" alt="첫번째이미지" />  
								</div>
								<div
									>
									<img
										src="${pageContext.request.contextPath}/photo/main.img/main2_2.jpg" 
										id="slider_1_img"style="width: 100%;" alt="두번째이미지" />  
								</div>
								<div>
									<img
										src="${pageContext.request.contextPath}/photo/main.img/.jpg"
										id="slider_1_img" style="width: 100%;"alt="세번째이미지" />  
								</div>
							</div>
							<script
								src="${pageContext.request.contextPath}/css/mainpage/jquery-1.11.0.min.js"></script>
							<script
								src="${pageContext.request.contextPath}/css/mainpage/slick.min.js"></script>
							<script type="text/javascript">
								$('.slider_1').slick({
									prevArrow : $('.btn_prev'),
									nextArrow : $('.btn_next'),
									autoplay : true,
									autoplaySpeed : 5000,
									dots : true,
									arrow : true,
									infinite : true,
									fade : true,
									speed : 400,
									cssEase : 'linear',
									accessibility : false,
									pauseOnHover : false,
								});
							</script>
							<script type="text/javascript">
								var $status = $('.slider_tag span');
								var $slickElement = $('.slider_1_top');
								$slickElement
										.on(
												'init reInit afterChange',
												function(event, slick,
														currentSlide, nextSlide) {
													var i = (currentSlide ? currentSlide
															: 0) + 1;
													$status.text(i + ' / '
															+ slick.slideCount);
												});
							</script>
						</div>
					</div>
				</div>
				<script
					src="${pageContext.request.contextPath}/css/mainpage/scroll-transition-fade.js"></script>
				<div id="main_section_ment">
					<ul>
						<li>
							<p class="eng scroll-fade dj-viewport motion2">PREMIUM ONLINE
								RESERVATION SHOP</p>
							<h2 class="scroll-fade  dj-viewport motion1">
								코로나시국에<br /> 언제까지 줄서서 먹을거야<br /> 온라인 예약사이트 <br /> 예약의 민족<br />
							</h2>
							<p class="scroll-fade dj-viewport motion5">
								스마트폰으로 바로 에약하고 다음날 받아보는 온라인 예약 시스템.<br /> 유명한 음식 앞에 줄 서<br />
								바로 먹고싶으면 예약하고 가자.
							</p>
						</li>
					</ul>
				</div>

				<!-- ------------------------------------------------------------------------------------------ -->

				<div class="on" id="section_on_off">
					<!--★ S T O R Y ★-->
					<div id="main_section_3" class="main_section">
						<div class="inner">
							<ul>
								<li>
									<div class="title scroll-fade dj-viewport motion1"><!-- 만약에 변경하고 싶으면 header.css에서 사진 변경해야함 -->
										<h2>STORY</h2>
										<p class="bar"></p>
									</div>
								</li>
								<li></li>
							</ul>
							<ul class="banner">
								<li class="scroll-fade dj-viewport"><img
									src="${pageContext.request.contextPath}/photo/main.img/main2_4.jpg" /></li>
								<li class="text scroll-fade dj-viewport">
									<h2>믿고 예약하는 "예약의 민족"</h2>
									<p class="ment">아주 사소하고 미묘한 차이로 삶을 개선할 수 있습니다. 이를 위해서 가장 기본이
										되어야 할 것은 바로 시간입니다. 시간은 금이라는 말이 있듯이 "예약의 민족"의 사람들은 시간을 
										절약하기 위해 모였습니다. 항상 맛있는 음식점을 찾아다니고 줄 서 기다리는 순간에 아까운 당신의
										시간을 절약해 드립니다.</p>
								</li>
							</ul>
						</div>
					</div>
				</div>	
				<div id="main_section_banner">
					<ul>
						<li class="scroll-fade dj-viewport motion4"><a href="<%=request.getContextPath()%>/reservation/searchReserve"><img
							src="${pageContext.request.contextPath}/photo/main.img/main1_2.png"
							alt="배너이미지1" /></a>  <span>예약 변경/취소</span> <span class="ment">당일
								예약시간 5시간 이내 취소는 불가합니다.
						</span></li>
						<li class="scroll-fade dj-viewport motion3"><img
							src="${pageContext.request.contextPath}/photo/main.img/main1_1.png"
							alt="배너이미지2" />  <span>음식점 등록 문의</span> <span class="ment">음식점
								등록은 아래 번호 참고하세요</span></li>
						<li class="scroll-fade dj-viewport motion4"><a href="<%=request.getContextPath()%>/subpage/getting"><img
							src="${pageContext.request.contextPath}/photo/main.img/main1_3.png"
							alt="배너이미지3" /></a>  <span>채용 모집</span> <span class="ment">자세한 사항은 체용 공고에서 확인해 주세요.</span></li>
					</ul>
				</div>
				
			</div>
		</div>
	</div>
</body>
</html>