<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
									<font color="#555555">리뷰&게시판 관리</font>
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
									<col style="width: 70px;" />
									<col style="width: 80px;" />
									<col style="width: 500px;" />
									<col style="width: auto;" />
									<col style="width: auto;" class="" />
									<col style="width: 80px;" />
									<col style="width: auto;" class="" />
								</colgroup>
								<thead
									class="xans-element- xans-board xans-board-listheader-4 xans-board-listheader xans-board-4 ">
									<tr style="">

										<th scope="col"></th>
										<th scope="col">NO</th>
										<th scope="col">TITLE</th>
										<th scope="col">POSTED BY</th>
										<th scope="col" class="">DATE</th>
										<th scope="col" class="">VIEW</th>
										<th scope="col">NO</th>
										<th scope="col" class=""></th>
									</tr>
								</thead>
								<tbody
									class="xans-element- xans-board xans-board-list-4 xans-board-list xans-board-4 center">
									<tr>
										<td></td>
										<td>등록번호</td>
										<td class="subject"
											style="text-align: left; margin-left: 10px;">제목</td>
										<td></td>
										<td>작성자</td>
										<td>등록일</td>
										<td>첨부파일</td>
										<td>평점</td>
										<td></td>
									</tr>
									<form action="<%=request.getContextPath()%>/admit/reservelist"
										method="map">
										<c:forEach var="review" items="${list}">
											<tr>
												<td></td>
												<c:if test="${review.cafenum == 100}">
												<td>${review.reviewnum}</td>
												<td class="subject"
													style="text-align: left; margin-left: 10px;"><a href="<%=request.getContextPath() %>/admit/admininfo?reviewnum=${review.reviewnum}">[게시판] ${review.reviewtitle}</a></td>
												<td></td>
												<td>[게시판] ${review.name}</td>
												<td>${review.regdate}</td>
												<td>${review.file1}</td>
												<td>${review.score}</td>
												</c:if>
												
												<c:if test="${review.cafenum != 100}">
												<td>${review.reviewnum}</td>
												<td class="subject"
													style="text-align: left; margin-left: 10px;"><a href="<%=request.getContextPath() %>/admit/admininfo?reviewnum=${review.reviewnum}">${review.reviewtitle}</a></td>
												<td></td>
												<td>${review.name}</td>
												<td>${review.regdate}</td>
												<td>${review.file1}</td>
												<td>${review.score}</td>
												</c:if>
												<td></td>
												
											</tr>
										</c:forEach>
									</form>
									</a>
								</tbody>
							</table>
							<p
								class="xans-element- xans-board xans-board-empty-4 xans-board-empty xans-board-4 message displaynone "></p>
						</div>
					</div>
					<div
						class=" xans-element- xans-board xans-board-paging-4 xans-board-paging xans-board-4 ec-base-paginate">
						<tr>
							<td colspan="6"><c:if test="${startpage <= bottomLine}">
									<font color="grey"><img
										src="${pageContext.request.contextPath}/photo/pageimg/btn_page_first.gif"><img
										src="${pageContext.request.contextPath}/photo/pageimg/btn_page_prev.gif"></font>
								</c:if> <c:if test="${startpage > bottomLine}">
									<a href="list?pageNum=${startpage - bottomLine}"><b>[이전]</b></a>
								</c:if> <c:forEach var="a" begin="${startpage}" end="${endpage}">

									<c:if test="${a==pageNum }">
										<li class="xans-record-">${a}</li>
										<!-- 현재 -->

									</c:if>
									<c:if test="${a!=pageNum }">

										<li class="xans-record-"><a href="adminlist?pageNum=${a}">${a}</a></li>
									</c:if>
								</c:forEach> <c:if test="${endpage >= maxpage}">
									<font color="grey"><img
										src="${pageContext.request.contextPath}/photo/pageimg/btn_page_next.gif"><img
										src="${pageContext.request.contextPath}/photo/pageimg/btn_page_last.gif"></font>
								</c:if> <c:if test="${endpage < maxpage}">
									<a href="list?pageNum=${startpage + bottomLine}"><b>[다음]</b></a>
								</c:if></td>
						</tr>
					</div>


					<div>&nbsp;</div>
					<form id="boardSearchForm"
						action="<%=request.getContextPath()%>/admit/adminreviewsearch"
						method="post">
						<div
							class="xans-element- xans-board xans-board-search-4 xans-board-search xans-board-4 ">
							<fieldset class="boardSearch">
								<legend>게시물 검색</legend>
								<p>
									<select id="search" name="search">
										<option value="n_subject" selected="selected">리뷰번호&nbsp;&nbsp;</option>
									
									</select> <input name="reviewNum" class="inputTypeText"
										type="number" />
									<input type="submit" value = "검색">
								</p>
							</fieldset>
						</div>
					</form>
				</div>
			</div>
			<div id="deletetool">
				
			</div>
		</div>
	</div>
</body>
</html>