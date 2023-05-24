<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
						<li title="현재 위치">역량평가</li>
					</ol>
				</div>
				<div class="title">
					<h2>
						<font color="#555555">역량평가</font>
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
				<form action="<%=request.getContextPath()%>/employee/aaa"
					method="POST">
					<table border="1" summary="">

						<colgroup
							class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002 ">
							<col style="width: 70px;" />
							<col style="width: auto;" />
							<col style="width: 120px;" />

						</colgroup>
						<thead
							class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002 ">
							<tr style="">
								<th scope="col">분류</th>
								<th scope="col">능력항목</th>
								<th scope="col">능력여부</th>

							</tr>
						</thead>
						<tbody
							class="xans-element- xans-board xans-board-list-1002 xans-board-list xans-board-1002">
							<c:forEach var="inli" items="${ilist}">
								<input type="hidden" name="cnt" value="2" />
								<tr style="background-color: #FFFFFF; color: #555555;"
									class="xans-record-">
									<td>${inli.KIND}</td>
									<td ><h5>${inli.CONTENT}</h5></td>
									<td class="subject">가능<input type="checkbox" name="ch1"
										value="${inli.CONSCORE}"> 불가능<input type="checkbox"
										name="ch2" value="(${inli.KIND})${inli.CONTENT}">
									</td>
								</tr>
								
								<tr style="background-color: #FFFFFF; color: #555555;"
									class="xans-record-">
									
									<td class="subject"></td>
									<td class="subject"></td>
									<td class="subject">&nbsp</td>
									
									
								</tr>
						
							</c:forEach>


							<c:forEach var="snli" items="${slist}">
								<input type="hidden" name="cntt" value="4" />
								<tr>

									<td>${snli.KIND}</td>
									<td><h5>${snli.CONTENT}</h5></td>
									<td>가능<input type="checkbox" name="ch3"
										value="${snli.DEPTNO}${snli.CONSCORE}"> 불가능<input
										type="checkbox" name="ch4"
										value="${snli.DEPTNO}(${snli.KIND})${snli.CONTENT}"></td>

								</tr>
								
								
								
								<tr style="background-color: #FFFFFF; color: #555555;"
									class="xans-record-">
									
									<td class="subject"></td>
									<td class="subject"></td>
									<td class="subject">&nbsp</td>
									
									
								</tr>
							</c:forEach>
						</tbody>
					</table>
			</div>
			<div style="text-align: center;">
				<div>
					<c:forEach var="sc" items="${scon2}">
						<input type="hidden" name="scon" value="${sc}">
					</c:forEach>
					<c:forEach var="ss" items="${sscore2}">
						<input type="hidden" name="sscore" value="${ss}">
					</c:forEach>
					<c:forEach var="sd" items="${sdeptno2}">
						<input type="hidden" name="sdeptno" value="${sd}">
					</c:forEach>
					<c:forEach var="sk" items="${skind2}">
						<input type="hidden" name="skind" value="${sk}">
					</c:forEach>

					<input type="hidden" name="empno" value="${login}">
				</div>
				<input type="submit" value="제줄하기"><br> <br> <br>
			</div>
		</div>
		
		
		</form>
	</div>

	<!-- 아래 </div> 두 개는 헤더의 <div>를 닫아주는 역할 -->
	</div>
	</div>
</body>
</html>