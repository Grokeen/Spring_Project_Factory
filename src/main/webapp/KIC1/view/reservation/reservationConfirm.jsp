<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 String cafeNum = request.getParameter("cafeNum");
   if (cafeNum==null) cafeNum="1";
   %>
<!DOCTYPE html><html><head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta charset="UTF-8">
    <title>Testing websockets</title>
</head><style>
#me  {    position : relative;     left : 100px;}
#you {    position : relative;     left : 10px;} </style>
<body>    <fieldset>
     <div id = "reservation">
       식당이름 : ${cafename}<br><br>
       예약번호 : ${reservation.reservenum}<br><br>
       전화번호 : ${reservation.guesttel}<br><br>
       예약날짜 : ${reservation.reservedate.substring(0,11)}<br><br>
       예약시간 : ${reservation.reservetime}시<br><br>
       예약인원 : ${reservation.reservepeople}명<br><br>
        </div><br>
        <input id="inputMessage" type="hidden" 
        value = "${reservation.reservenum}" />
        <input id="cafeNum" type="hidden" 
        value = "${reservation.cafenum}" />
      
        <input type="submit" value="예약확인" onclick="send()" />
        <input type="button" value="예약취소" onclick="cancel()" />
    </fieldset>
</body>
    <script type="text/javascript">
        var textarea = document.getElementById("reservation");
        var webSocket = new WebSocket(
    'ws://192.168.0.5:9080<%=request.getContextPath()%>/weball');
        var inputMessage = document.getElementById('inputMessage');
    	
    webSocket.onerror = function(event) {     onError(event)   };
    webSocket.onopen = function(event) {     onOpen(event)    };
    webSocket.onmessage = function(event) {   onMessage(event) };
    function onMessage(event) {
    textarea.innerHTML += event.data + "<br>";
         textarea.scrollTop=textarea.scrollHeight;  }
    function onOpen(event) {
       textarea.innerHTML += "";
  	   }
    function getInnerHTML() {
    	  const element = document.getElementById('reservation');
    	  return element.innerHTML;
    	} 
    function onError(event) {     alert(event.data);   }
    function send() {
    	textarea.scrollTop=textarea.scrollHeight;
        webSocket.send(cafeNum.value+":"+inputMessage.value);
        inputMessage.value = "";  
        location.href="<%=request.getContextPath()%>/reservation/alert"
    
    }
    function cancel() {
    	
        location.href="<%=request.getContextPath()%>/reservation/deleteReservationGuest?reservenum="+inputMessage.value
        	
    }</script></html>
  