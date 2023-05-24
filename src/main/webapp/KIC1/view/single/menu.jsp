<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <div>
 	   식당이름 : ${cafename}<br><br>
 	   예약번호 : ${reservation.reservenum}<br><br>
       전화번호 : ${reservation.guesttel}<br><br>
       예약날짜 : ${reservation.reservedate.substring(0,11)}<br><br>
       예약시간 : ${reservation.reservetime}시<br><br>
       예약인원 : ${reservation.reservepeople}명<br><br>
 </div>
<input type="button" value="예약확인" onclick="location.href='<%=request.getContextPath()%>/reservation/sendMSGPro?reservenum=${reservation.reservenum}&guesttel=${reservation.guesttel}&cafeNum=${reservation.cafenum}'"/>
<input type="button" value="예약취소" onclick="location.href='<%=request.getContextPath()%>/reservation/deleteReservation?reservenum=${reservation.reservenum}&cafeNum=${reservation.cafenum}'" />