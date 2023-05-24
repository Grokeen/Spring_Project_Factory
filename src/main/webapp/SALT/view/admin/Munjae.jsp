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
						<li title="현재 위치">문제현황</li>
					</ol>
				</div>
				<div class="title">
					<h2>
						<font color="#555555">문제현황</font>
					</h2>
					<br> <br>
				</div>
				<p class="imgArea"></p>
			</div>
			<div class="boardSort">
				<span
					class="xans-element- xans-board xans-board-replysort-1002 xans-board-replysort xans-board-1002 "></span>
			</div>
			<div class="boardList">
				<c:if test="${munjaelist != null }">
					<table border="1" summary="">

						<colgroup
							class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002 ">
							<col style="width: 100px;" />
							<col style="width: auto;" />
							<col style="width: 70px;" />
							<col style="width: 84px;" />
							<col style="width: 100px;" class="" />
							<col style="width: 55px;" class="" />

						</colgroup>
						<thead
							class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002 ">
							<tr style="">
								<th scope="col">부서번호</th>
								<th scope="col">문제내용</th>
								<th scope="col">점수</th>
								<th scope="col">문제종류</th>
								<th scope="col" class="">변경</th>
								<th scope="col" class="">삭제</th>
							</tr>
						</thead>
						<tbody
							class="xans-element- xans-board xans-board-list-1002 xans-board-list xans-board-1002">

							<c:forEach var="mlist" items="${munjaelist}">
								<tr style="background-color: #FFFFFF; color: #555555;"
									class="xans-record-">
									<td><input class="boardChk" value="1" type="checkbox" />${mlist.DEPTNO}</td>
									<td>${mlist.CONTENT}</td>
									<td class="subject">${mlist.CONSCORE}점</td>
									<td>${mlist.KIND}</td>
									<td class="txtLess"><form
											action="<%=request.getContextPath()%>/employee/changescore"
											method="POST">
											<select name="conscore" style="width: 90px;" placeholder="점수">
												<option value="1">1점</option>
												<option value="2">2점</option>
												<option value="3">3점</option>
												<option value="4">4점</option>
												<option value="5">5점</option>
											</select><input type="hidden" value="${deptno1}" name="deptno"><input
												type="hidden" value="${mlist.CONTENT}" name="content"><input
												type="submit" value="변경">
										</form></td>
									<td class="txtLess"><a
										href="<%=request.getContextPath()%>/employee/munjaedelete?deptno=${deptno1}&content=${mlist.CONTENT}">삭제</a></td>


								</tr>
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



							<c:forEach var="il" items="${ilist}">
								<tr style="background-color: #FFFFFF; color: #555555;"
									class="xans-record-">
									<td><input class="boardChk" value="1" type="checkbox" />${il.DEPTNO}</td>
									<td>${il.CONTENT}</td>
									<td class="subject">${il.CONSCORE}점</td>
									<td>${il.KIND}</td>
									<td class="txtLess"><form
											action="<%=request.getContextPath()%>/employee/inseongtestscorechange"
											method="POST">
											<select name="conscore" style="width: 90px;">
												<option value="1">1점</option>
												<option value="2">2점</option>
												<option value="3">3점</option>
												<option value="4">4점</option>
												<option value="5">5점</option>
											</select><input type="hidden" value="${il.CONSCORE}" name="conscore"><input
												type="hidden" value="${il.CONTENT}" name="content"><input
												type="submit" value="변경">
										</form></td>
									<td class="txtLess"><a
										href="<%=request.getContextPath()%>/employee/inseongtestdelete?content=${il.CONTENT}">삭제</a></td>


								</tr>
							</c:forEach>
						</tbody>
					</table>
				</c:if>
				
				<c:if test="${munjaelist == null }">
					<h3>문제 리스트에 문제가 없습니다. 문제를 추가해 주세요.</h3>
				</c:if>
				
			</div>
		</div>
		<br> <Br> <br>
		<div>
			<div style="text-align: center; font-size: 20px;">
				<form action="<%=request.getContextPath()%>/employee/munjaechooga"
					method="POST">
					<div>
						<div>
							<div>
								<h3 class="subtit">역량평가 등록</h3>
								<input type="hidden" value="${deptno1}" name="deptno"
									id="deptno"> <input type="text" placeholder="문제내용"
									name="content" style="height: 200px; width: 400px;"
									id="content"><br> <br> <select name="kind"
									style="width: 100px;">
									<option value="실무기술">실무기술</option>
									<option value="인성">인성</option>
									<option value="기본기술">기본기술</option>
								</select> <select name="conscore" style="width: 90px;">
									<option value="1">1점</option>
									<option value="2">2점</option>
									<option value="3">3점</option>
									<option value="4">4점</option>
									<option value="5">5점</option>
								</select> <input type="submit" value="등록하기">
							</div>
						</div>
					</div>
				</form>
			</div>
			<br> <Br> <br>
		</div>



















		<!-- 아래 </div> 두 개는 헤더의 <div>를 닫아주는 역할 -->
	</div>
	</div>
</body>
</html>