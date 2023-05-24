<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script>
	function board_submit() {
		var f = document.f;
		if (f.name.value == "") {
			alert("이름을 입력하세요") 
			f.name.focus()
			return
		}
		
		if (f.subject.value == "") {
			alert("제목을 입력하세요")
			f.subject.focus();
			return;
		}
		if (f.content.value == "") {
			alert("내용을 입력하세요")
			f.content.focus();
			return;
		}
		f.submit();
	}
</script>
</head>
<body>
	<form action="<%=request.getContextPath()%>/review/replyPro"
		method="post" name="f">
		<input type="hidden" name="reviewnum" value="${review.reviewnum}">
		<input type="hidden" name="ref" value="${review.ref}"> <input
			type="hidden" name="refstep" value="${review.refstep}"> <input
			type="hidden" name="reflevel" value="${review.reflevel}">
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
										<font color="333333">${reviewtitle} 답글쓰기</font>
									</h2>

								</div>
							</div>
							<div style="text-align: center;">

								<br> <br>
								<div>
									<input type="text" name="name" style="width: 400px;"
										placeholder="작성자">
								</div>
								<div>
									<br> <input type="text" placeholder="제목"
										name="reviewtitle" value="${review.reviewtitle}"
										style="width: 400px;">
								</div>
								<div>
									<br>
									<textarea rows="15" placeholder="내용" name="reviewcontent"
										style="width: 400px;"></textarea>
								</div>
								<div>
									<br> <br> <a href="javascript:board_submit()"
										style="font-size: 40px;"><img
										src="<%=request.getContextPath()%>/photo/review.img/register_but.png"></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>