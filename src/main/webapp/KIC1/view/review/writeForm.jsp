<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>작성화면</title>
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
									<font color="333333">리뷰 작성</font>
								</h2>
								</c:if>
								<c:if test="${cafenum == 100 }">
									<h2>
									<font color="333333">게시글 작성</font>
								</h2>
								</c:if>
							</div>
						</div>
						<div style="text-align: center;">
							<form action="writePro" method="post"
								enctype="multipart/form-data" name="f">
								<input type="hidden" name="cafenum" value="${cafenum}">
								 <c:if test="${cafenum != 100 }">
								<input type="hidden" name="guesttel" value="${guesttel}">
								 </c:if>
								<input type="text" name="name" placeholder="작성자"
									style="width: 400px;"><br> <br> 
								<c:if test="${cafenum == 100 }">
								<input
									type="text" name="reviewtitle" placeholder="핸드폰 번호"
									style="width: 400px;"><br> <br>
								<input
									type="text" name="reviewtitle" placeholder="비밀번호"
									style="width: 400px;"><br> <br>	
								 </c:if>
									<input
									type="text" name="reviewtitle" placeholder="제목"
									style="width: 400px;"><br> <br>

								<textarea rows="15" name="reviewcontent" placeholder="내용"
									style="width: 400px;"></textarea>
								<c:if test="${cafenum != 100 }">
								<br> <br>
								<input type="text" name="score"
									placeholder="평점(?/5)" style="width: 400px;">
								 </c:if>	
									 <br>
								<br> 첨부파일
								<c:if test="${review.file1 != null && review.file1 ne ''}">
									<div id="file_desc"
										style="text-align: center; font-size: 20px;">
										<a href="javascript:file_delete()">[첨부파일 삭제]</a>
									</div>
								</c:if>

								<input type="file" name="f"> <br> <br> <br>
								<a href="javascript:document.f.submit()"
									style="text-align: center; font-size: 10px"><img
									src="${pageContext.request.contextPath}/photo/review.img/register_but.png"></a>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>