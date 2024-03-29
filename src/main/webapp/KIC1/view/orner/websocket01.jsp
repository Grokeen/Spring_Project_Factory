<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% String name = request.getParameter("name");
 String cafeNum = request.getParameter("cafeNum");
   if (name==null)  name= "무명";
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
     <div class="w3-pale-blue" id="messageWindow"
        style="width:500px; height:300px; 
        border: 1px solid grey;  overflow: auto; "></div><br/>
        <input id="inputMessage" type="text"/>
        <input type="submit" value="send" onclick="send()" />
    </fieldset></body>
    <script type="text/javascript">
        var textarea = document.getElementById("messageWindow");
        var webSocket = new WebSocket(
    'ws://192.168.0.76:9080<%=request.getContextPath()%>/weball');
        var inputMessage = document.getElementById('inputMessage');
    
    webSocket.onerror = function(event) {     onError(event)   };
    webSocket.onopen = function(event) {     onOpen(event)    };
    webSocket.onmessage = function(event) {   onMessage(event) };
    function onMessage(event) {
    textarea.innerHTML += "<div  id='you'  class='w3-white "
    +"w3-border w3-round-large w3-padding-small' "
    +"style='width:"+(event.data.length*12)+"px;'>"
    +event.data + "</div><br>";
         textarea.scrollTop=textarea.scrollHeight;  }
    function onOpen(event) {
       textarea.innerHTML += "연결 성공<br>";
       webSocket.send("<%=name%>:입장 하였습니다");   }
    function onError(event) {     alert(event.data);   }
    function send() {
        textarea.innerHTML += "<div  class='w3-yellow w3-border "
        +"w3-round-large w3-padding-small' "
        +" id='me' style='width:"
        +((inputMessage.value.length*12)+45)+"px;'>나: " 
        + inputMessage.value 
        + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><br>";
        textarea.scrollTop=textarea.scrollHeight;
        webSocket.send("<%=cafeNum%>:<%=name%>:"+inputMessage.value);
        inputMessage.value = "";    }  </script></html>
  