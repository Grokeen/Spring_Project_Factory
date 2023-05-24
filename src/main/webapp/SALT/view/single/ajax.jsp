<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<div style="text-align:center;">
	<div style="font-size:20px;">
예약 가능 인원은 : ${restseat} 명입니다.
	</div>
<form action="<%=request.getContextPath()%>/reservation/reservationPro" method ="post" name = "f">
<input type = "hidden" value = "${cafenum}" name = "cafenum"><br>
<input type="hidden"  name = "reservedate" value ="${date}">
<input type="hidden" name = "reservetime" value = "${time}">
전화번호 : <input type="text" name = "guesttel" ><br><br>
비밀번호 : <input type="password" name = "guestpass" ><br><br>
예약인원 : <input type="number" min ="1" max="50" name = "reservepeople" >명&nbsp;&nbsp;

<input type = "button" value = "예약하기" onclick =reserve_submit()>
</form>
</div>