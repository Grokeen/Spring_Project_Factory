<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<!--PG크로스브라우징필수내용 시작-->
<meta http-equiv="Cache-Control" content="no-cache" />
<meta http-equiv="Expires" content="0" />
<meta http-equiv="Pragma" content="no-cache" />
<!--PG크로스브라우징필수내용 끝-->

<title>(주)SALT</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="shortcut icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/photo/header.img/icon1.png">


<!-- ############################################################################################################### -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/skin.css/layout/conversionpc.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/skin.css/layout/logotop.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/skin.css/layout/mainimg.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/skin.css/layout/searchSide.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/skin.css/layout/statelogoff.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/skin.css/layout/statelogoon.css" />



<script type="text/javascript"
	src="${pageContext.request.contextPath}/skin.css/layout/mainimg.js"></script>


<!-- ############################################################################################################### -->


<!--@css(/layout/basic/css/common.css)-->
<!--해당 CSS는 쇼핑몰 전체 페이지에 영향을 줍니다. 삭제와 수정에 주의해주세요.-->
<!--@css(/layout/basic/css/layout.css)-->

<!-- 스마트디자인에서는 JQuery 1.4.4 버전이 내장되어있습니다. 추가로 호출하면 충돌이 생길 수 있습니다. -->
<!--@js(/layout/basic/js/basic.js)-->
<!--@js(/js/common.js)-->
<!--@js(/js/module/layout/quick_view.js)-->

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/skin.css/main/common.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/skin.css/main/layout.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/skin.css/main/quick_view.js"></script>
<!-- 해당 JS는 플래시를 사용하기 위한 스크립트입니다. -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/skin.css/main/basic.js"></script>
<!-- 해당 JS는 플래시를 사용하기 위한 스크립트입니다. -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/skin.css/main/common.js"></script>
<!-- 해당 JS는 플래시를 사용하기 위한 스크립트입니다. -->



<!-- ############################################################################################################### -->

<%-- <link rel="stylesheet"
	href="${pageContext.request.contextPath}/skin.css/editor.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/skin.css/jquery.mCustomScrollbar.concat.min.js"></script>
<!-- 해당 JS는 플래시를 사용하기 위한 스크립트입니다. --> --%>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/skin.css/jquery-3.4.1.min.js"></script>


<!-- 해당 JS는 플래시를 사용하기 위한 스크립트입니다. -->
<%-- <script type="text/javascript"
	src="${pageContext.request.contextPath}/skin.css/jslb_ajax.js"></script>
<!-- 해당 JS는 플래시를 사용하기 위한 스크립트입니다. -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/skin.css/smarthelper-ui.js"></script>
<!-- 해당 JS는 플래시를 사용하기 위한 스크립트입니다. --> --%>



<!-- ############################################################################################################### -->


</head>
<body>
	<div id="wrap">
		<div id="container">
			<div id="container_left">
				<h1 module="Layout_LogoTop">
					<!--@css(/css/module/layout/logotop.css)-->

					<a title="로고" href="<%=request.getContextPath()%>/employee/main"><%-- <img
						src="${pageContext.request.contextPath}/photo/header.img/main_logo.png"
						style="width: 100px;"></img> --%><h3>SALT</h3></a>
				</h1>
				<br> <br></br> </br>
				<div class="bookmark">
					<ul>
						<c:if test="${login == null }">
							<form action="<%=request.getContextPath()%>/employee/login"
								method="POST">
								<div>
									<div class="loginBox">
										<table class="login">
											<colgroup>


												<col style="width: auto;" />
												<col style="width: auto;" />
											</colgroup>
											<tr>

												<td><h5>로그인</h5></td>
												<td></td>
											</tr>
											<tr>

												<td class="logt02"><input type="text" name="empno"
													id="empno" value="" class="inputText" style="width: 100%;"
													onKeyPress="KeySubmit(event)" tabindex=1 placeholder="사원번호" /></td>
												<td></td>
											</tr>
											<tr>
												<td class="logt02"><input type="password"
													name="password" id="password" class="inputText"
													style="width: 100%;" onKeyPress="KeySubmit(event)"
													tabindex=2 placeholder="비밀번호" /></td>
												<td rowspan="2"><input type="submit" value="로그인"></td>
											</tr>
										</table>
									</div>
								</div>
							</form>
						</c:if>
						<c:if test="${login != null }">
							<li><a href="<%=request.getContextPath()%>/employee/logout"
								class="c_w"><h5>로그아웃</h5></a> &nbsp;</li>
						</c:if>
					</ul>
				</div>


				<!-- <div class="login">
					<ul>

						<li module="Layout_stateLogoff">
							@css(/css/module/layout/statelogoff.css) <a
							href="/member/login.html">log-in</a>/ <a href="/member/join.html">join
								us</a>
						</li>

						<li module="Layout_stateLogon">
							@css(/css/module/layout/statelogon.css) <a
							href="/member/modify.html">my-info</a>/ <a
							href="{$action_logout}">log-out</a>
						</li>
						<li class="stateelse"><a href="/order/basket.html">cart</a> <a
							href="/myshop/order/list.html">order</a> <a
							href="/myshop/index.html">my page</a></li>
					</ul>

				</div> -->

				<div class="catemenu01">
					<c:if test="${login != null }">
						<c:if test="${login != admin }">
							<ul>
								<li><a
									href="<%=request.getContextPath()%>/employee/userinputpro?login=${login}"
									class="color_main"><h3>설문하기</h3></a></li>
							</ul>
							<br></br>
							<ul>
								<li><a
									href="<%=request.getContextPath()%>/employee/userscore?empno=${login}"
									class="color_main"><h3>설문결과</h3></a></li>
							</ul>
						</c:if>
						<br></br>
						<ul>
							<li><a
								href="<%=request.getContextPath()%>/employee/booseolistpro?login=${login}"
								class="color_main"><h3>부서현황</h3></a></li>
						</ul>
						<c:if test="${login eq 'admin' }">
							<br></br>
							<ul>
								<li><a
									href="<%=request.getContextPath()%>/employee/employeelist"
									class="color_main"><h3>회원관리</h3></a></li>
							</ul>
							<br></br>
							<ul>
								<li><a
									href="<%=request.getContextPath()%>/employee/booseolistpro2"
									class="color_main"><h3>문제관리</h3></a></li>
							</ul>
						</c:if>
					</c:if>
					<c:if test="${login == null }">
						<br></br>
						<br></br>
						<br></br>
						<br></br>


					</c:if>
				</div>
				<br></br> <br></br> <br></br>

				<!-- <div class="catemenu02">
					<ul>
						<li><a href="/product/list.html?cate_no=42">accessory</a></li>
					</ul>
					<ul>
						<li><a href="/product/list.html?cate_no=44">sale</a></li>
					</ul>
					<ul>
						<li><a href="/product/list.html?cate_no=43">private</a></li>
					</ul>
				</div> -->







				<!-- <div module="Layout_SearchSide">
					@css(/css/module/layout/searchSide.css)
					
                             $search_page = /product/search.html
                             $product_page = /product/detail.html
                           
					<fieldset>
						<legend>검색</legend>
						{$form.keyword} <a
							onclick="SEARCH_BANNER.submitSearchBanner(this)" href="#">
							search</a>

					</fieldset>
				</div>


				<div class="board">
					<ul>
						<li><a href="/front/php/b/board_list.php?board_no=1">notice</a></li>
					</ul>
					<ul>
						<li><a href="/front/php/b/board_list.php?board_no=6">q
								&amp; a</a></li>
					</ul>
					<ul>
						<li><a href="/front/php/b/board_list.php?board_no=4">review</a></li>
					</ul>
				</div> -->





				<!-- <div class="info">
					<ul>
						<li class="txt0"><b>Customer cetner</b></li>
						<li class="txt">mor-fri 11:00 - 20:00</li>
						<li class="txt1">(lunch time 13:00 ~ 14:00)</li>
						<li class="txt">sat.sun.holiday off</li>
					</ul>
					<ul>
						<li class="txt0"><b>Bank info</b></li>
						<li>shinhan_ 110-265-444600</li>
						<li class="txt3">young. Lee</li>
					</ul>

				</div> -->




				<%-- <div class="sns">
					<ul>
						<li><a herf="http://www.facebook.com"><img
								src="${pageContext.request.contextPath}/skin.css/photo/sns_01.gif"></a></li>
						<li><a herf="http://www.twitter.com"><img
								src="${pageContext.request.contextPath}/skin.css/photo/sns_02.gif"></a></li>
						<li><a herf="http://www.google.com.sa"><img
								src="${pageContext.request.contextPath}/skin.css/photo/sns_03.gif"></a></li>
						<li><a herf="http://www.naver.com"><img
								src="${pageContext.request.contextPath}/skin.css/photo/sns_04.gif"></a></li>
					</ul>
					
				</div> --%>
			</div>

			<!-- 아래 </div> 두 개는 헤더역활 수행을 위해 주석처리함 -->
			<!-- </div></div> -->



			<!-- ############################################################################################################### -->
			<!--container_left closing-->
			
</body>
</html>