<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

</head>
<body>









	<div id="contents">
		<div
			class="xans-element- xans-board xans-board-listpackage-1002 xans-board-listpackage xans-board-1002 ">
			<div
				class="xans-element- xans-board xans-board-title-1002 xans-board-title xans-board-1002 ">
				<div class="path">
					<h2>현재 위치</h2>
					<ol>
						<%-- <li class="first"><a
							href="<%=request.getContextPath()%>/employee/main">home</a></li>
						<li title="현재 위치">추천부서</li> --%>
					</ol>
				</div>
				<div class="title">
					<h2>
						<!-- <font color="#555555">추천부서</font> -->
					</h2>
					<br> <br>
				</div>
				<p class="imgArea"></p>
			</div>
			<div class="boardSort">
				<span
					class="xans-element- xans-board xans-board-replysort-1002 xans-board-replysort xans-board-1002 "></span>
			</div>

			<!-- 메인 슬라이드 -->
			<c:if test="${login == null }">
			<div style="text-align: center;">
				<script
					src="${pageContext.request.contextPath}/skin.css/logmain.css/jquery.sliderPro.min.js"></script>
				<link rel="stylesheet"
					href="${pageContext.request.contextPath}/skin.css/logmain.css/default2.css">
				<div class="subTrue">
					<div class="subContent">
						<!-- 메인슬라이드 종료{ -->
						<script type="text/javascript">
							$(document).ready(function($) {
								$('#example8').sliderPro({
									width : 1200,
									height : 900,
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
						<!-- 메인슬라이드 시작{ -->
						<h2 class="sound_only">메인슬라이드</h2>
						<div id="example8" class="slider-pro">
							<div class="sp-slides">
								<div class="sp-slide">
									<img
										src="${pageContext.request.contextPath}/photo/logmain.img/oper1.jpg"
										style="" alt="이동" width="100%" />
								</div>
								<div class="sp-slide">
									<img
										src="${pageContext.request.contextPath}/photo/logmain.img/oper2.png"
										style="" alt="이동" width="100%" />
								</div>
								<%-- <div class="sp-slide">
									<img
										src="${pageContext.request.contextPath}/photo/logmain.img/oper3.png"
										style="" alt="이동" width="100%" />
								</div>
								<div class="sp-slide">
									<img
										src="${pageContext.request.contextPath}/photo/logmain.img/oper4.png"
										style="" alt="이동" width="100%" />
								</div> --%>
								<%--
									<div class="sp-slide">
										<img
											src="${pageContext.request.contextPath}/photo/logmain.img/oper5.png"
											style="" alt="이동" width="100%" />
									</div> --%>
							</div>
							<br>
							<div class="sp-thumbnails">
								<img class="sp-thumbnail"
									src="${pageContext.request.contextPath}/photo/logmain.img/oper1.jpg" />
								<img class="sp-thumbnail"
									src="${pageContext.request.contextPath}/photo/logmain.img/oper2.png" />
								<%-- <img class="sp-thumbnail"
									src="${pageContext.request.contextPath}/photo/logmain.img/oper3.png" />
								<img class="sp-thumbnail"
									src="${pageContext.request.contextPath}/photo/logmain.img/oper4.png" /> --%>
								<%--<img class="sp-thumbnail"
										src="${pageContext.request.contextPath}/photo/logmain.img/oper5.png" /> --%>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			
			
			
			
			<!-- 만약 추가할 메인화면이 있다면 여기에 -->
			
			
			
			
			
			
			
			
			
			
			
			
			</c:if>
			<c:if test="${login != null }">

				<div style="text-align: center; font-size: 20px;">
					<br> <br> <br> <br> <img
						src="${pageContext.request.contextPath}/photo/login.img/User-icon.png"
						style="width: 60px;">
					<h3>${name}님반갑습니다.</h3>
				</div>
			</c:if>



		</div>
	</div>
	</div>
















	<!-- 아래 </div> 두 개는 헤더의 <div>를 닫아주는 역할 -->
	</div>
	</div>

</body>
</html>