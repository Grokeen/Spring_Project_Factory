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
	<div module="Product_menupackage">
		<br> <br> <Br> <br>
		<div class="path" module="product_headcategory">

			<h2>000 (주)SINIP 000</h2>
			<!-- <ol>
				<li class="first"><a href="/">home</a></li>
				<li class="{$disp_cate_1|display}"><a
					href="/product/list.html{$param_1}">asasaasasas}</a></li>
				<li class="{$disp_cate_2|display}"><a
					href="/product/list.html{$param_2}">{asasassa}</a></li>
				<li class="{$disp_cate_3|display}"><a
					href="/product/list.html{$param_3}">asasas</a></li>
				<li class="{$disp_cate_4|display}"><strong><a
						href="/product/list.html{$param_4}">asas}</a></strong></li>
			</ol> -->
		</div>

		<div class="title" module="product_headcategory">
			<!-- <p class="banner">asasasas</p> -->
			<h2>
				<span>신규 사원등록</span>
			</h2>
			<form action="<%=request.getContextPath()%>/employee/empcreatepro"
				method="POST">

				<div style="text-align: center; font-size: 20px;">
					<div>
						<div>
							
							<input type="text" placeholder="사원번호" name="empno" id="empno">

							<input type="text" placeholder="사원명" name="username"
								id="username"> <input type="password" placeholder="비밀번호"
								name="password" id="password"> <input type="hidden"
								value="" name="deptno"> <input type="hidden"
								id="content" value=""> <input type="submit">

						</div>
					</div>
				</div>
			</form>
		</div>
	</div>









	<!-- 아래 </div> 두 개는 헤더의 <div>를 닫아주는 역할 -->
	</div>
	</div>
</body>
</html>