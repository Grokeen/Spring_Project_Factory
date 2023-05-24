
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>
	<hr class="layout" />
	<style type="text/css">
.remove {
	color: red;
	font-size: 14px;
}
</style>
	<div id="wrap">
		<div id="content">

			<div id="wrap">
				<div id="container">

					<div
						class="xans-element- xans-board xans-board-listpackage-4 xans-board-listpackage xans-board-4 ">
						<div
							class="xans-element- xans-board xans-board-title-4 xans-board-title xans-board-4 ">
							<div class="title">
								<h2>
									<font color="#555555">예약삭제</font>
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
									<col style="width: 20%;" />
									<col style="width: 20%;"/>
									<col style="width: 20%;"  />
									<col style="width: 5%;"  />
									<col style="width: 10%;" />
									<col style="width: 10%;" />
								</colgroup>
								<thead
									class="xans-element- xans-board xans-board-listheader-4 xans-board-listheader xans-board-4 ">
									<tr style="">
										<th></th>
										<th scope="col">NO</th>
										<th scope="col">TITLE</th>
										<th scope="col">POSTED BY</th>
										<th></th>
										<th scope="col" class="">DATE</th>
										<th scope="col" class="">VIEW</th>
										<th></th>
										<th></th>										
									</tr>
								</thead>
								<tbody
									class="xans-element- xans-board xans-board-list-4 xans-board-list xans-board-4 center">
									<tr>
										<td></td>
										<td>예약번호</td>
										<td>고객 전화번호</td>
										<td></td>
										<td>예약시간</td>
										<td>예약인원</td>
										<td>날짜</td>
										<td>삭제</td>
										<td></td>
									</tr>
										<c:forEach var="reservation" items="${adminlist1}">
											<tr>
												<td></td>
												<td>${reservation.reservenum}</td>
												<td>${reservation.guesttel}</td>
												<td></td>
												<td>${reservation.reservetime}</td>
												<td>${reservation.reservepeople}</td>
												<td>${reservation.reservedate}</td>
												<td></td>
												<td></td>
											</tr>
										</c:forEach>
									<tr>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td><!-- <form action="<%=request.getContextPath()%>/admit/reservelist"
										method="map"> --><input TYPE="IMAGE"
											src="${pageContext.request.contextPath}/photo/admin.img/delete_but.png"
											name="delete" value="삭제" onclick="deletete()"
											align="absmiddle" ><!-- </form> --></td>
									</tr>
								</tbody>
							</table>
							<p
								class="xans-element- xans-board xans-board-empty-4 xans-board-empty xans-board-4 message displaynone "></p>
						</div>
					</div>
					
					<div>&nbsp;</div>
					<form id="boardSearchForm"
						action="<%=request.getContextPath()%>/admit/adminsearch"
						method="post">
						<div
							class="xans-element- xans-board xans-board-search-4 xans-board-search xans-board-4 ">
							<fieldset class="boardSearch">
								<legend>게시물 검색</legend>
								<p>
									<select id="search" name="search">
										<option value="n_subject" selected="selected">전화번호&nbsp;&nbsp;</option>
										
									</select> <input name="guesttel" class="inputTypeText"
										type="text" />
									<input type="submit" value="검색">
								</p>
							</fieldset>
						</div>
					</form>
				</div>

			</div>
</body>
<script type="text/javascript">
						function deletete() {
							var con = confirm("예약일로 부터 30일이 지난 예약만 삭제됩니다. 삭제하시겠습니까?");
							if (con) {
								alert("삭제되었습니다");
								location.href = '<%=request.getContextPath()%>/admit/deletereserve';
						} else {
							alert("삭제가 취소되었습니다");
							return;
						}
					}
				</script>
</html>
