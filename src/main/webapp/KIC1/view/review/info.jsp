<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
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
	<hr class="layout" />
	<div id="wrap">
		<div id="container">
			<div
				class="xans-element- xans-board xans-board-listpackage-4 xans-board-listpackage xans-board-4 ">
				<div
					class="xans-element- xans-board xans-board-title-4 xans-board-title xans-board-4 ">
					<div class="title">
						<c:if test="${cafenum != 100 }">
						<h2>
							<font color="#555555">리뷰</font>
						</h2>
						</c:if>
						<c:if test="${cafenum == 100 }">
						<h2>
							<font color="#555555">게시판</font>
						</h2>
						</c:if>
					</div>
					<p class="imgArea"></p>
				</div>
			</div>
		</div>
	</div>
	<style>
fieldset {
	display: block;
	margin-left: 50%;
	margin-right: 50%;
}
</style>
	<div>
		<div id="container" left="50%;" right="50%;">
			<div
				class="xans-element- xans-board xans-board-title-4 xans-board-title xans-board-4 ">
				
				<table class="table tbcenter">
				<colgroup
					class="xans-element- xans-board xans-board-listheader-4 xans-board-listheader xans-board-4 ">
					<col style="width: 15%;" />
					<col style="width: 50%;" />
					<col style="width: auto;" />
					<col style="width: 15%;" />
				</colgroup>
					<fieldset>
					<tr>
					<th></th>
						<th scope="col" style="width: 100%; text-align: left; font-size: 30px;" >
							&nbsp;&nbsp;제목 ㅣ ${review.reviewtitle}</th>
							<th></th>
							<th></th>
							<th></th>
					</tr>
					<tr>
					<th></th>
						<th scope="col"
							style="width: 15%; text-align: left; font-weight: 400; font-size:20px;">
							&nbsp;&nbsp;작성자 ㅣ ${review.name}&nbsp;&nbsp;&nbsp;&nbsp;작성일 ㅣ
							${review.regdate} &nbsp;&nbsp;&nbsp;&nbsp;조회수 ㅣ ${review.readcnt}</th>
														<th></th>
							<th></th>
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
							<th></th>
					</tr>
					
					
						
					</fieldset>
				</table>
				<div>
					<table>
					<colgroup
					class="xans-element- xans-board xans-board-listheader-4 xans-board-listheader xans-board-4 ">
					<col style="width: 15%;" />
					<col style="width: 50%;" />
					<col style="width: auto;" />
					<col style="width: auto;" />
					<col style="width: auto;" />
					<col style="width: auto;" />
					<col style="width: 15%;" />
				</colgroup>
						<tr>
						<th></th>
						<th></th>
						
						<th><a href="<%=request.getContextPath()%>/review/updateForm?reviewnum=${review.reviewnum}"
							id="수정"><img
								src="${pageContext.request.contextPath}/photo/review.img/chan_but.png"></a></th>
						<th><a href="<%=request.getContextPath()%>/review/deleteForm?reviewnum=${review.reviewnum}"
							id="삭제"><img
								src="${pageContext.request.contextPath}/photo/admin.img/delete_but.png"></a></th>
						<th><a href="<%=request.getContextPath()%>/review/list"
							id="목록"><img
								src="${pageContext.request.contextPath}/photo/admin.img/list_but.png"></a></th>
						<th></th>
						</tr>
					</table>
				</div>
				
			</div>


		</div>
		<div>
			<div>
				<div float="left;"></div>
			</div>
		</div>
</body>
</html>