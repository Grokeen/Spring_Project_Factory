<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% 
 String cafeNum = request.getParameter("cafeNum");
  
if (cafeNum==null) cafeNum="";
   
   %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta charset="UTF-8">
<title>Testing websockets</title>
</head>
<body>
	<fieldset>
<div class="" id="messageWindow"> </div>
	</fieldset>
	 
</body>
<script type="text/javascript">
    
        var textarea = document.getElementById("messageWindow");
       
        var webSocket = new WebSocket(
    'ws://192.168.0.5:9080<%=request.getContextPath()%>/weball');
        var inputMessage = document.getElementById('inputMessage');
    
    webSocket.onerror = function(event) {     onError(event)   };
    webSocket.onopen = function(event) {     onOpen(event)    };
    webSocket.onmessage = function(event) {   onMessage(event) };
   
    function onMessage(event) {
    	ajaxFunction(event.data) // 02929
    	textarea.scrollTop=textarea.scrollHeight;   }
    function onOpen(event) {
    	 textarea.innerHTML += " ";
    	 webSocket.send("<%=cafeNum%>@ cafe 입장 하였습니다");
         }
    function onError(event) {     alert(event.data);   }
    
    function ajaxFunction(no) {
    
    	no = no.substring(no.indexOf(":")+1)
    	alert(no);
    	const xhttp = new XMLHttpRequest();
    	const url = "<%=request.getContextPath()%>/reservation/sendMSG?reservationnum="
		xhttp.open("GET", url + no, true)
		xhttp.send()
		xhttp.onreadystatechange = function() {
			if (this.readyState == 4 && this.status == 200) {
				alert(this.responseText)
				textarea.innerHTML += this.responseText;

			}
		}
	}
    
</script>
</html>
