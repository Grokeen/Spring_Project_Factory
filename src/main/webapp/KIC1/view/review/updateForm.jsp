<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 수정 화면</title>
<script>
	function file_delete() {
		file_desc = document.getElementById("file_desc")
		document.f.file1.value = "";
		file_desc.style.display = "none";
	}
</script>
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
								
								<c:if test="${cafenum != 100 }">
									<h2>
									<font color="333333">리뷰 수정</font>
								</h2>
								</c:if>
								<c:if test="${cafenum == 100 }">
									<h2>
									<font color="333333">게시판 수정</font>
								</h2>
								</c:if>
							</div>
						</div>
						<div style="text-align: center;">
							<form action="update" method="post" enctype="multipart/form-data"
								name="f">
								<input type="hidden" name="reviewnum"
									value="${review.reviewnum}"> <input type="hidden"
									name="file1" value="${review.file1}"> <input
									type="text" placeholder="작성자" name="name"
									value="${review.name}" style="width: 400px;"> <br>
								<br> <input type="password" placeholder="전화번호"
									name="guesttel" style="width: 400px;"> <br>
								<c:if test="${cafenum == 100 }">
									<br>
									<input type="password" placeholder="비밀번호" name="guestpass"
										style="width: 400px;">
									<br>
								</c:if>
								<br> <input type="text" placeholder="제목" name="reviewtitle"
									value="${review.reviewtitle}" style="width: 400px;"> <br>
								<br>
								<textarea rows="15" name="reviewcontent" placeholder="내용"
									style="height: 400px; width: 400px;">${review.reviewcontent}</textarea>

								<br> <br> 첨부파일 :
								<c:if test="${review.file1 != null && review.file1 ne ''}">

									<div id="file_desc"
										style="text-align: center; font-size: 20px;">
										${review.file1} <a href="javascript:file_delete()"
											style="font-size: 10px;">[첨부파일 삭제]</a>
									</div>
								</c:if>
								<input type="file" name="f"> <a
									href="javascript:document.f.submit()"><img
									src="${pageContext.request.contextPath}/photo/review.img/chan_but.png"></a>

							</form>
						</div>
</body>
</html>