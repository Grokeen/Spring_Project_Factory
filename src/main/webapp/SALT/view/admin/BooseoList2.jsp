<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>
	<div id="contents">
		<div
			class="xans-element- xans-board xans-board-listpackage-1002 xans-board-listpackage xans-board-1002 ">
			<div
				class="xans-element- xans-board xans-board-title-1002 xans-board-title xans-board-1002 ">
				<div class="path">
					<h2>현재 위치</h2>
					<ol>
						<li class="first"><a
							href="<%=request.getContextPath()%>/employee/main">home</a></li>
						<li title="현재 위치">부서현황</li>
					</ol>
				</div>
				<div class="title">
					<h2>
						<font color="#555555">부서현황</font>
					</h2>
					<br>
					<br>
				</div>
				<p class="imgArea"></p>
			</div>
			<div class="boardSort">
				<span
					class="xans-element- xans-board xans-board-replysort-1002 xans-board-replysort xans-board-1002 "></span>
			</div>
			<div class="boardList">
				<table border="1" summary="">

					<colgroup
						class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002 ">
						<col style="width: 70px;" />
						<col style="width: 135px;" class="displaynone" />
						<col style="width: 135px;" />
						<col style="width: 80px;" class="" />
						<col style="width: 80px;" class="" />
						<col style="width: 80px;" class="" />
						<col style="width: 80px;" class="" />
						<col style="width: 80px;" class="" />
						<col style="width: 80px;" class="" />
					</colgroup>
					<thead
						class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002 ">
						<tr style="">
							<th scope="col"> </th>
							<th scope="col" class="displaynone"></th>
							<th scope="col"></th>
							<th scope="col"></th>
							<th scope="col"></th>
							<th scope="col"></th>
							<th scope="col"></th>
							<th scope="col"></th>
							<th scope="col"></th>
							
						</tr>
					</thead>
					
					<tbody
						class="xans-element- xans-board xans-board-list-1002 xans-board-list xans-board-1002">
						<c:forEach var="blist" items="${booseolist2}">
						
						<tr style="background-color: #FFFFFF; color: #555555;"
							class="xans-record-">
							<td></td>
							<td class="displaynone"></td>
							<td class="subject"><a
									href="<%=request.getContextPath()%>/employee/booseomunjaepro?deptno=${blist.DEPTNO}">${blist.DEPTNAME}
										요구 기술</a>
							</td>
							
						</tr>
						<!-- ㄸ<ㅣ어쓰기용  -->
						<tr style="background-color: #FFFFFF; color: #555555;"
									class="xans-record-">
									<td class="subject"></td>
									<td class="subject"></td>
									<td class="subject"></td>
									<td class="subject">&nbsp</td>
									<td class="subject"></td>
									<td class="subject"></td>
									
								</tr>
						
						</c:forEach>
						
						<tr style="background-color: #FFFFFF; color: #555555;"
							class="xans-record-">
							<td></td>
							<td class="displaynone"></td>
							<td class="subject"><!-- <button id="button1" onclick="click1();">확인 하기 --></button>
							</td>
							
						</tr>
						
					</tbody>
					
				</table>
			</div>
		</div>
	</div>


















	<!-- 아래 </div> 두 개는 헤더의 <div>를 닫아주는 역할 -->
	</div>
	</div>
</body>
</html>