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
									<font color="333333">관리자 페이지</font>
								</h2>

							</div>
						</div>

						<div
							class="xans-element- xans-board xans-board-read-4 xans-board-read xans-board-4">
							<div class="ec-base-table typeWrite ">
								<table border="0" summary="">

									<colgroup>
										<col style="width: 130px;" />
										<col style="width: auto;" />
									</colgroup>
									<tbody>
										<tr>
											<th scope="row">제목</th>
											<td>. 안내 .</td>
										</tr>
										<tr>
											<td colspan="3">
												<ul class="etcArea">

												</ul>

												<div class="detail">
													<div class="fr-view fr-view-article">
														<p
															style='box-sizing: border-box; margin: 0px; padding: 0px; font-family: Montserrat, "Noto Sans KR", "Malgun Gothic", "맑은 고딕", Dotum, 돋움, AppleGothic, "Apple SD Gothic Neo", sans-serif; display: block; line-height: 1.5; text-align: center;'>안녕하세요.</p>
														<p
															style='box-sizing: border-box; margin: 0px; padding: 0px; font-family: Montserrat, "Noto Sans KR", "Malgun Gothic", "맑은 고딕", Dotum, 돋움, AppleGothic, "Apple SD Gothic Neo", sans-serif; display: block; line-height: 1.5; text-align: center;'>
															여기는 관리자 페이지 입니다. &nbsp;</p>
														<p
															style='box-sizing: border-box; margin: 0px; padding: 0px; font-family: Montserrat, "Noto Sans KR", "Malgun Gothic", "맑은 고딕", Dotum, 돋움, AppleGothic, "Apple SD Gothic Neo", sans-serif; display: block; line-height: 1.5; text-align: center;'>
															여기서는 리뷰관리와 예약관리를 할 수 있습니다. &nbsp;</p>
														<p
															style='box-sizing: border-box; margin: 0px; padding: 0px; font-family: Montserrat, "Noto Sans KR", "Malgun Gothic", "맑은 고딕", Dotum, 돋움, AppleGothic, "Apple SD Gothic Neo", sans-serif; display: block; line-height: 1.5; text-align: center;'>삭제시
															신중하게 해주세요.</p>
														<p
															style='box-sizing: border-box; margin: 0px; padding: 0px; font-family: Montserrat, "Noto Sans KR", "Malgun Gothic", "맑은 고딕", Dotum, 돋움, AppleGothic, "Apple SD Gothic Neo", sans-serif; display: block; line-height: 1.5; text-align: center;'>감사합니다.</p>
														<p>
															<br>
														</p>
													</div>


													<div>
														<span><span> <a
																href="<%=request.getContextPath()%>/admit/adminReservationpage"
																id="예약관리"><img
																	src="${pageContext.request.contextPath}/photo/admin.img/reser_but.png"></a>
														</span></span> <span><span> <a
																href="<%=request.getContextPath()%>/admit/adminlist"><img
																	src="${pageContext.request.contextPath}/photo/admin.img/revi_but.png"></a>
																<!-- index > main/여기 > adminresersever > mareservation -->
														</span></span>
													</div>

												</div>
												<div>&nbsp;</div>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>