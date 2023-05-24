<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<div id="container">
		<div
			class="xans-element- xans-board xans-board-readpackage-4 xans-board-readpackage xans-board-4 ">
			<div
				class="xans-element- xans-board xans-board-title-4 xans-board-title xans-board-4 ">
				<div class="title">
					<h2>
						<font color="333333">운영안내</font>
					</h2>
				</div>
			</div>
			<div style="text-align: center;">
				<script
					src="${pageContext.request.contextPath}/css/addpage/jquery.sliderPro.min.js"></script>
				<link rel="stylesheet"
					href="${pageContext.request.contextPath}/css/addpage/default2.css">
				<div class="subTrue">
					<div class="subContent">
						<!-- 메인슬라이드 종료{ -->
						<script type="text/javascript">
							$(document).ready(function($) {
								$('#example8').sliderPro({
									width : 1200,
									height : 800,
									fade : true,
									arrows : true,
									buttons : false,
									fullScreen : true,
									shuffle : false,
									smallSize : 500,
									mediumSize : 1000,
									largeSize : 3000,
									thumbnailArrows : true,
									autoplay : false
								});
							});
						</script>
						<div class="h10"></div>

						<div style="width: 100%; height: 2px; background: #CCC;"></div>
						<div class="h10"></div>
						<span class="noto f16 ">
							<div class="h10"></div>
							<b class="f20"></b>
							<div class="h30" style="font-size: 20px;"></div><br><br> 저희 사이트는 누구나 간편하게 예약할 수 있으며, <br>예약을 원하신다면 방문하길 원하는 지역 선택과 
							찾아보고싶은 음식 종류를 <br>선택하여 원하는 음식점을 찾아 예약할 수 있도록 되어있습니다. 
							
							<br><br>이 시스템으로 방문하고싶은 음식점 을 
							지금 당장 찾아보세요. <br> 웨이팅 없이 예약된 시간에 바로 들어갈 수 있어, 카타르시스를 느끼실 수 있습니다. <br><br>자세한 예약 사항은
							아래 사진을 참고하세요.
							<br>
							<br>
							<br>
						</span>
						<div class="h30"></div>

						<!-- 메인슬라이드 시작{ -->
						<h2 class="sound_only">메인슬라이드</h2>
						<div id="example8" class="slider-pro">
							<div class="sp-slides">
								<div class="sp-slide">
									<img
										src="${pageContext.request.contextPath}/photo/add.img/oper1.png"
										style="" alt="이동" width="100%"/>
								</div>
								<div class="sp-slide">
									<img
										src="${pageContext.request.contextPath}/photo/add.img/oper2.png"
										style="" alt="이동" width="100%" />
								</div>
								<div class="sp-slide">
									<img
										src="${pageContext.request.contextPath}/photo/add.img/oper3.png"
										style="" alt="이동" width="100%" />
								</div>
								<div class="sp-slide">
									<img
										src="${pageContext.request.contextPath}/photo/add.img/oper4.png"
										style="" alt="이동" width="100%" />
								</div>
								<div class="sp-slide">
									<img
										src="${pageContext.request.contextPath}/photo/add.img/oper5.png"
										style="" alt="이동" width="100%" />
								</div>
			

							</div>
							<div class="sp-thumbnails">
								<img class="sp-thumbnail"
									src="${pageContext.request.contextPath}/photo/add.img/oper1.png" />
								<img class="sp-thumbnail"
									src="${pageContext.request.contextPath}/photo/add.img/oper2.png" />
								<img class="sp-thumbnail"
									src="${pageContext.request.contextPath}/photo/add.img/oper3.png" />
								<img class="sp-thumbnail"
									src="${pageContext.request.contextPath}/photo/add.img/oper4.png" />
								<img class="sp-thumbnail"
									src="${pageContext.request.contextPath}/photo/add.img/oper5.png" />
								
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="xans-element- xans-product xans-product-additional ">
				<div id="prdDetail" class="ec-base-tab_detail grid5">
					<div class="detail_tap_inner">
						<ul class="menu">
							<div id="prdInfo" class="ec-base-tab_detail grid5 ">
								<link rel="stylesheet" type="text/css"
									href="<%=request.getContextPath()%>/css/reser.list/optimizerc7e9.css" />
								<div class="cont_all">
									<ul>
										<li class="cont" style="width: 100%">
											<div class="cont_inner">
												<h3>예약시 주의사항</h3>
												<span style="font-family: Roboto,&amp; amp;">-
													예약변경/취소 요청: 문의 게시판 및 카카오플러스친구를 이용해 주시면 빠르게 예약 취소 처리해 드리겠습니다. </span><br
													style="font-family: Roboto,&amp; amp;"> <span
													style="font-family: Roboto,&amp; amp;">- 변경/취소 대상:
													매장 에약시간으로 부터 5시간 전에 변경/취소가 가능합니다.</span><br
													style="font-family: Roboto,&amp; amp;"> <span
													style="font-family: Roboto,&amp; amp;">- 문제 발견 시 사진을
													보내주시면 보다 빠른 지원이 가능합니다.</span><br
													style="font-family: Roboto,&amp; amp;"> <span
													style="font-family: Roboto,&amp; amp;">- 에약의 특성 상 단순
													변심 등 개인적인 사유로는 변경/취소이 불가합니다.</span><br />
											</div>
										</li>
									</ul>
								</div>
							</div>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>