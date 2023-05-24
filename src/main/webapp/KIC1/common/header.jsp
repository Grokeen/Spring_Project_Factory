<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="Cache-Control" content="no-cache" />
<meta http-equiv="Expires" content="0" />
<meta http-equiv="Pragma" content="no-cache" />
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/photo/main.img/webicon.png"> 
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700&amp;display=swap"
	rel="stylesheet" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/config/header.css" />
<script
	src="$<%=request.getContextPath()%>/css/config/froala_style_ec.min.js"></script>
<script src="$<%=request.getContextPath()%>/css/config/common.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<title>예약의 민족</title>
<meta name="path_role" content="MAIN" />
<meta name="author" content="예약의 민족" />
<meta name="description" content="언제까지 줄만 서서 먹을거야?" />
<meta name="keywords" content="한식 , 중식 , 일식 , 양식 , 분식 유명한 음식점이 많은 곳" />
</head>
<body>
	<div id="header-h">
		<div id="header">
			<div class="inner first_in">
				<div class="top_menu">
					<div class="xans-layout-category right_cate">
						<div class="position">
							<ul>
								
								<li class="tel nor">C/S CENTER <span>02-6255-8002</span></li>

								<li class="community_btn nor"><a href="#none" class="click"><img
										src="<%=request.getContextPath()%>/photo/header.img/topMenu_icon.png" alt="커뮤니티아이콘" />
										COMMUNITY</a>
									<div class="community_all">
										<div class="community">
											<ul>
												<li><a
													href="<%=request.getContextPath()%>/subpage/maininfo">회사소개</a></li>
												<li><a
													href="<%=request.getContextPath()%>/subpage/getting">채용공고</a></li>
												<li><a
													href="<%=request.getContextPath()%>/subpage/company">오시는길</a></li>
											</ul>
										</div>
									</div>
								</li>
							</ul>
						</div>
					</div>
					<ul>
						<li><a href="<%=request.getContextPath()%>/admit/adminpage">ADMIN
								PAGE</a></li>
					</ul>
				</div>
			</div>
			<div class="header_inner">
				<div class="logo">
					<a href="<%=request.getContextPath()%>/reservation/main"><img
						src="<%=request.getContextPath()%>/photo/main.img/logo1.png"
						alt="로고" /></a>
				</div>
				<div id="top_category">
					<div class="inner">
						<div
							class="xans-element- xans-layout xans-layout-category left_cate c_position">
							<ul class="category_img">
								<div class="position">
									<ul>
										<li class="list xans-record-"><a
											href="<%=request.getContextPath()%>/reservation/search"
											class="w3-bar-item w3-button">음식점 예약</a></li>
										<li class="list xans-record-"><a
											href="<%=request.getContextPath()%>/reservation/searchReserve"
											class="w3-bar-item w3-button">예약 확인</a></li>
										<li class="list xans-record-"><a
											href="<%=request.getContextPath()%>/subpage/mainoper"
											class="w3-bar-item w3-button">운영안내</a></li>
										<li class="list xans-record-"><a
											href="<%=request.getContextPath()%>/review/list?cafenum=100"
											class="w3-bar-item w3-button">서비스 문의</a></li>
										
									</ul>
								</div>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<hr class="layout" />
</body>
</html>