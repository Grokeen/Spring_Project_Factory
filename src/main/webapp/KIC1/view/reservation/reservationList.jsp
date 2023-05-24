<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<hr class="layout" />
	<div id="wrap">
		<div id="content">
			<style type="text/css">
.remove {
	color: red;
	font-size: 14px;
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
								<h2>
									<font color="#555555">예약목록</font>
								</h2>
							</div>
							<p class="imgArea"></p>
						</div>
						<div class="boardSort">
							<span
								class="xans-element- xans-board xans-board-replysort-4 xans-board-replysort xans-board-4 "></span>
						</div>
						<div class="ec-base-table typeList gBorder">
							<table border="1" summary="">
								<caption>상품 게시판 목록</caption>
								<colgroup
									class="xans-element- xans-board xans-board-listheader-4 xans-board-listheader xans-board-4 ">
									<col style="width: 5%;" />
									<col style="width: 5%;" />
									<col style="width: 10%;" />
									<col style="width: 20%;" />
									<col style="width: 20%;" />
									<col style="width: 10%;"/>
									<col style="width: 10%;"/>
								</colgroup>
								<tbody
									class="xans-element- xans-board xans-board-list-4 xans-board-list xans-board-4 center">
									<tr>
									<th></th>
										<th>예약번호</th>
										<th>식당이름</th>
										<th>예약날짜</th>
										<th>예약시간</th>
										<th>예약인원</th>
										<th>예약취소</th>
									</tr>
									<c:forEach var="reservation" items="${reserveList}">
										<tr>
										<td></td>
											<td>${reservation.reservenum}</td>
											<td>${cafe.cafename}</td>
											<td>${reservation.reservedate.substring(0,11)}</td>
											<td>${reservation.reservetime}시</td>
											<td>${reservation.reservepeople}명</td>
											<td><a
												href="<%=request.getContextPath()%>/reservation/reservationConfirm?cafenum=${cafe.cafenum}&reservenum=${reservation.reservenum}">[예약취소]</a>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<p
								class="xans-element- xans-board xans-board-empty-4 xans-board-empty xans-board-4 message displaynone "></p>
						</div>
					</div>
					
					<div>&nbsp;</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>