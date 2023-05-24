<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<hr class="layout" />
	<div id="wrap">
		<div id="content">
			<hr class="layout" />
			<div id="wrap">
				<div id="container">
					<div
						class="xans-element- xans-board xans-board-readpackage-4 xans-board-readpackage xans-board-4 ">
						<div
							class="xans-element- xans-board xans-board-title-4 xans-board-title xans-board-4 ">
							<div class="title">
								<h2>
									<font color="333333">예약 확인</font>
								</h2>
								<p>예약을 확인하기 위해 식당 이름과 입력하셨던 전화번호,비밀번호를 입력해 주세요.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div style="text-align: center;">

				<form
					action="<%=request.getContextPath()%>/reservation/searchReservePro"
					method="post">
					<div style="font-size: 15px; color: #383833;">
						예약 식당이름 : <input type="text" name="cafename" style="width: 120px">
					</div><br>

					<div style="font-size: 15px; color: #383833;">
						<img
							src="${pageContext.request.contextPath}/photo/login.img/login_icon.jpg"><input
							type="text" name="guesttel" placeholder="전화번호">
					</div>
					<div style="font-size: 15px; color: #383833;">
						<img
							src="${pageContext.request.contextPath}/photo/login.img/pw_icon.jpg"><input
							type="text" name="guestpass" placeholder="비밀번호">
					</div>

					<div style="font-size: 15px; color: #383833;">
						<br>
						<input type="submit" value="검색">
					</div>
				</form>
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
													예약변경/취소 요청: 문의 게시판 및 카카오플러스친구를 이용해 주시면 빠르게 처리해 드리겠습니다. </span><br
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