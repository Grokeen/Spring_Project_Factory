<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("button").click(function(){
		const queryString = $("form[name = ajaxForm]").serialize()
		console.log(queryString);
		$.ajax({
			type : 'POST',
			url : '<%=request.getContextPath()%>/reservation/restseat',

				data : queryString,
				error : function(xhr, status, error) {
					console.log(error)
				},
				success : function(data) {
					//alert("data: " + data + "\n Status" + status)
					$("#view").html(data)
				}
			})
		})
	})
	function reserve_submit() {
		var f = document.f;
		if (f.guesttel.value == "") {
			alert("전화번호를 입력하세요") 
			f.guesttel.focus()
			return
		}
		
		if (f.guestpass.value == "") {
			alert("비밀번호를 입력하세요")
			f.guestpass.focus();
			return;
		}
		if (f.reservepeople.value == "") {
			alert("예약인원을 입력하세요")
			f.reservepeople.focus();
			return;
		}
		f.submit();
	}
	var textarea = document.getElementById("messageWindow");
</script>
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
									<font color="333333">좌석 조회</font>
								</h2>
							</div>
						</div>
					</div>
				</div>
			</div>	
			<div style="font-size: 17px; text-align: center;">
				<form action="" name="ajaxForm">
					<input type="hidden" value="${cafenum}" name="cafenum"><br>
					예약 날짜 : <input type="date" name="date"><br> 예약 시간 : <input
						type="number" min ="8" max="20" name="time" style="width: 80px" placeholder="EX)12">시
				</form>
				<br>
				<button style="font-size: 17px; text-align: right;">예약가능인원 조회하기</button>
				<br>
				<div id="view"></div>
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