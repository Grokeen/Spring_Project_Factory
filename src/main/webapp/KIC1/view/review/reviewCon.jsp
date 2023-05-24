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
									<font color="333333">리뷰 작성하려면 전화번호와 비밀번호를 입력해주세요</font>
								</h2>
							</div>
						</div>
						<div style="text-align: center;">
							<form action="<%=request.getContextPath()%>/review/con"
								method="post">
								<input type="hidden" name="cafenum" value="${cafenum}">
								<br>
								<img
									src="<%=request.getContextPath()%>/photo/login.img/login_icon.jpg"><input
									type="text" name="guesttel" placeholder="전화번호" id="guesttel">
								<br>
								<img
									src="<%=request.getContextPath()%>/photo/login.img/pw_icon.jpg"><input
									type="password" name="guestpass" placeholder="비밀번호"
									id="guestpass"> <br> <br> <input
									type="submit" value="등록" style="font-size:15px">

							</form>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
</body>
</html>