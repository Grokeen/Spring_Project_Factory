<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 삭제 화면</title>
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
									<font color="333333">삭제를 위해 전화번호를 입력해주세요.</font>
								</h2>

							</div>
						</div>
						<div style="text-align: center;">
							<form action="delete" name="f" method="post">
								<input type="hidden" name="reviewnum" value="${reviewnum}">
								<img src="<%=request.getContextPath()%>/photo/login.img/login_icon.jpg"><input
									type="text" placeholder="전화번호" name="guesttel"> <br><br>
								<input type="submit" style="fonts-size:20px" value="삭제"> <br>

							</form>
						</div></div></div></div></div></div>
</body>
</html>