package KIC1_controller;
import java.io.IOException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;

//value = "/echo/{name}" name은 채팅참여 유저이름)

@ServerEndpoint("/weball2")
public class WebSocketServer {
	private static Set<Session> clients = Collections
			.synchronizedSet(new HashSet<Session>());
	
	
	@OnMessage
	public void onMessage(String message, Session session) 
			throws IOException {
	System.out.println(message);
		synchronized (clients) {
	String id = null;
	if(message.indexOf(":[")>0) {
	id=message.substring(message.indexOf(":[")+2, 
			message.indexOf("]"));
	System.out.println("id:["+id+"]");	}
	String movemessage = session.getId()+":"+message;
	for (Session client : clients) {
	if(!client.equals(session)) {
	if(id==null) {
		client.getBasicRemote().sendText(movemessage);}
	else if(id.equals(client.getId())){
	client.getBasicRemote().sendText(movemessage);
				}		}	
	
	
	
	}	}	}	
	@OnOpen
	public void onOpen(Session session) {
		// Add session to the connected sessions set
		    
			clients.add(session);	}
	
	@OnClose
	public void onClose(Session session) {
		// Remove session from the connected sessions set
		clients.remove(session);	}}