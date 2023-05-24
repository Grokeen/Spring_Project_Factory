<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<script>
function sumit(locatevalue , kindvalue) {
	let url="<%=request.getContextPath()%>/reservation/searchPro?location="+ locatevalue+"&kind="+kindvalue;
	location.href=url;
	}
</script>
<body>
	<div id="container">
		<div
			class="xans-element- xans-board xans-board-readpackage-4 xans-board-readpackage xans-board-4 ">
			<div
				class="xans-element- xans-board xans-board-title-4 xans-board-title xans-board-4 ">
				<div class="title">
					<h2>
						<font color="333333">예약하기</font>
					</h2>
				</div>
			</div>
			<div
				class="xans-element- xans-board xans-board-read-4 xans-board-read xans-board-4">
				<div class="ec-base-table typeWrite ">
					<table border="0" summary="">
						<caption>상품 게시판 상세</caption>
						<colgroup>
							<col style="width: 130px;" />
							<col style="width: auto;" />
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">제목</th>
								<td>지역을 선택해 주세요.</td>
							</tr>
							<tr>
								<td colspan="2">
									<div class="detail" id=search2>
										<div style="text-align: center;">
											<button name="seoul" value="서울" onclick="sumit(this.value , '${kind}')">
												<img
													src="${pageContext.request.contextPath}/photo/reser.img/seoul2.png"
													alt="서울" width="200" heigth="200"
													style="border: 3px solid gold; border-radius: 7px; -moz-border-radius: 7px; -khtml-border-radius: 7px; -webkit-border-radius: 7px;" />
											</button>

											<button name="gyeonggi" value="경기" onclick="sumit(this.value, '${kind}')">
												<img
													src="${pageContext.request.contextPath}/photo/reser.img/gyeonggi2.png"
													alt="경기" width="200" heigth="200"
													style="border: 3px solid gold; border-radius: 7px; -moz-border-radius: 7px; -khtml-border-radius: 7px; -webkit-border-radius: 7px;" />
											</button>

											<button name="incheon" value="인천" onclick="sumit(this.value, '${kind}')">
												<img
													src="${pageContext.request.contextPath}/photo/reser.img/incheon2.png"
													alt="인천" width="200" heigth="200"
													style="border: 3px solid gold; border-radius: 7px; -moz-border-radius: 7px; -khtml-border-radius: 7px; -webkit-border-radius: 7px;" />
											</button>

											<button name="jeju" value="제주" onclick="sumit(this.value, '${kind}')">
                                    <img
                                       src="${pageContext.request.contextPath}/photo/reser.img/jeju2.png"
                                       alt="제주" width="200" heigth="200"
                                       style="border: 3px solid gold; border-radius: 7px; -moz-border-radius: 7px; -khtml-border-radius: 7px; -webkit-border-radius: 7px;" />
                                 </button>

											<div>
												<div>
													<div class="detail" id=search3>
														<div></div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
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