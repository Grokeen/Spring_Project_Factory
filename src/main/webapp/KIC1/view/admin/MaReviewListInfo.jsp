<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<style>
#board_menu {
	display: block;
	margin: 5px;
	text-align: right;
}

#removeBtn, #modifyBtn, #listBtn {
	background-color: #424949;
	color: white;
	border-radius: 0.3em;
	border: 2px solid #424949;
}

img {
	display: block;
	margin: auto;
}
</style>
<body>
	<hr class="layout" />
	<div id="wrap">
		<div id="container">
			<div
				class="xans-element- xans-board xans-board-listpackage-4 xans-board-listpackage xans-board-4 ">
				<div
					class="xans-element- xans-board xans-board-title-4 xans-board-title xans-board-4 ">
					<div class="title">
						<h2>
							<font color="#555555">리뷰삭제</font>
						</h2>
						
					</div>
					<p class="imgArea"></p>
				</div>
			</div>
		</div>
	</div>
	<div>
		<center>
			<table>
				<colgroup
					class="xans-element- xans-board xans-board-listheader-4 xans-board-listheader xans-board-4 ">
					<col style="width: 15%;" />
					<col style="width: 50%;" />
					<col style="width: auto;" />
					<col style="width: 15%;" />
				</colgroup>
				<th></th>
				<tr>
					<th></th>
					<th scope="col"
						style="width: 100%; text-align: left; font-size: 30px">
						&nbsp;&nbsp;제목 ㅣ ${review.reviewtitle}</th>
					<th></th>
					<th></th>
				</tr>
				<tr>
					<th></th>
					<th scope="col"
						style="width: 15%; text-align: left; font-weight: 400; font-size:20px">
						&nbsp;&nbsp;작성자 ㅣ ${review.name}&nbsp;&nbsp;&nbsp;&nbsp;작성일 ㅣ
						${review.regdate} &nbsp;&nbsp;&nbsp;&nbsp;평점 ㅣ ${review.score}</th>
					<th></th>
					<th></th>
				</tr>
				<tr>
					<th></th>
					<th scope="col"
						style="width: 15%; text-align: left; font-weight: 400; font-size:15px;"><br>&nbsp;&nbsp;&nbsp;${review.reviewcontent}<br>
						<br> <br> <img src="${review.file1}" width="800"></th>
					<th></th>
					<th></th>
				</tr>
			</table>

			<table>
				<colgroup
					class="xans-element- xans-board xans-board-listheader-4 xans-board-listheader xans-board-4 ">
					<col style="width: 15%;" />
					<col style="width: 70%;" />
					<col style="width: auto;" />
					<col style="width: auto;" />
					<col style="width: 15%;" />
				</colgroup>
				<tr>
					<th></th>
					<th></th>
					<th><a href="<%=request.getContextPath()%>/admit/adminlist"
						id="예약관리"><img
							src="${pageContext.request.contextPath}/photo/admin.img/list_but.png"></a></th>
					<th><img
						src="${pageContext.request.contextPath}/photo/admin.img/delete_but.png"
						name="delete" value="삭제" onclick="del(${review.reviewnum})"></th>
					<th></th>
				</tr>
			</table>

		</center>
	</div>
	<div id="deletetool">
		<script type="text/javascript">
						function del(Code) {

							var con = confirm("삭제하면 더 이상 불러올 수 없습니다. 삭제하시겠습니까?");
							if (con) {
								alert(" 삭제되었습니다");
								location.href = '<%=request.getContextPath()%>/admit/deletereview?reviewnum='+Code';
						} else {
							alert("삭제가 취소되었습니다");
							return;
						}
					}
		</script>
	</div>
</body>
</html>