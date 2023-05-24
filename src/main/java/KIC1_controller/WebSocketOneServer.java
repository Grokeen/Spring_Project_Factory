package KIC1_controller;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

@ServerEndpoint("/weball")
public class WebSocketOneServer {
// id, cafeNum, session
	private static Set<Session> sessions = new HashSet<Session>();
	private static Map<String, String> cafes = new HashMap<String,String>();
	// sessionid, cafeNum
	@OnMessage
	public void onMessage(String message, Session session) throws IOException {
		String cafeNum="";
		//cafeChat
		if(message.indexOf("@")!=-1) {
		cafeNum = message.substring(0, message.indexOf("@"));
		cafes.put(cafeNum , session.getId());
		
		}
		
		synchronized (sessions) {
			 
			
			for (Session client : sessions) {
				String cafe="";
				if (message.indexOf(":")!=-1) {
				cafe = message.substring(0, message.indexOf(":"));
				} 
				if (cafes.get(cafe)!=null && cafes.get(cafe).equals(client.getId())) {
					client.getBasicRemote().sendText(message);
				}
			}
		}
	}

	
	
	@OnOpen
	public void onOpen(Session session) {
		// Add session to the connected sessions set
		System.out.println(session);
	    sessions.add(session);
		
	}

	@OnClose
	public void onClose(Session session) {
		// Remove session from the connected sessions set
		sessions.remove(session);
	}
}
