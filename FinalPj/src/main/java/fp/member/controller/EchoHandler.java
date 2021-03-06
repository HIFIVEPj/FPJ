package fp.member.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.text.StrSubstitutor;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import fp.corporation.domain.Corporation;
import fp.corporation.service.CorporationService;
import fp.freelancerprofile.domain.FreeLancer;
import fp.freelancerprofile.domain.FreeLancerProfile;
import fp.freelancerprofile.service.FreeLancerProfileService;
import fp.member.domain.Member;
import fp.member.domain.Notification;
import fp.member.service.MemberService;
import lombok.extern.log4j.Log4j;
@Log4j
public class EchoHandler extends TextWebSocketHandler {
	@Autowired
	private FreeLancerProfileService freeService;
	@Autowired
	private MemberService memService;
	@Autowired
	private CorporationService corService;
	
	//로그인 한 전체
	List<WebSocketSession> sessions = new ArrayList<WebSocketSession>();
	// 1대1
	Map<String, WebSocketSession> userSessionsMap = new HashMap<String, WebSocketSession>();
		
	//서버에 접속이 성공 했을때
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		sessions.add(session);
		
		String senderEmail = getEmail(session);
		userSessionsMap.put(senderEmail , session);
		log.info("!@@@!!!!!!!!!!!!!연결됨");
		log.info("!!!!!!!!!!!!!!!"+senderEmail);
	}
	
	//소켓에 메세지를 보냈을때
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		System.out.println("Message!!!!!!!!!!!!!!!!!: "+message);
		Notification not = new Notification();
		
		String msg = message.getPayload();
		String strs[] = msg.split(",");
		log.info("$$$$접속되어있는 세션: "+userSessionsMap);
		// 1. 프리랜서가 프로젝트에 지원했을 때 해당 기업한테 알림
		if(strs != null && strs[1].equals("apply")) {
			String senderEmail = getEmail(session);
			FreeLancer free = freeService.mydash_free_select(senderEmail);
			TextMessage notSetMessage = new TextMessage(free.getFree_name() +"님이 프로젝트에 지원하셨습니다");
			
			not.setMem_email_from(senderEmail);
			not.setMem_email_to(strs[0]);
			not.setNot_cate(strs[1]);
			not.setNot_message(notSetMessage.getPayload().toString());
			memService.addNotification(not);
			if(userSessionsMap.containsKey(strs[0])) {
				//기업이 접속되어 있을 때
				session = userSessionsMap.get(strs[0]);
				session.sendMessage(new TextMessage("apply]"+free.getFree_name() +"님이 프로젝트에 지원하셨습니다"));
			}
		//2. 프리랜서나 기업이 마켓에서 구매했을때 마켓 글쓴사람한테 알림
		}else if(strs != null && strs[1].equals("market")) {
			String senderEmail = getEmail(session);
			FreeLancer free = freeService.mydash_free_select(senderEmail);
			Corporation cor = corService.mydash_cor_select(senderEmail);
			TextMessage notSetMessage= new TextMessage("");
			if(cor != null) {
				notSetMessage = new TextMessage(cor.getCor_name() +"님이 마켓상품을 구매하셨습니다.");
			}else if(free != null) {
				notSetMessage = new TextMessage(free.getFree_name() +"님이 프로젝트에 지원하셨습니다");
			}
			not.setMem_email_from(senderEmail);
			not.setMem_email_to(strs[0]);
			not.setNot_cate(strs[1]);
			not.setNot_message(notSetMessage.getPayload().toString());
			memService.addNotification(not);
			if(userSessionsMap.containsKey(strs[0])) {
				//구매자가 접속중일때
				session = userSessionsMap.get(strs[0]);
				if(cor != null) {
					session.sendMessage(new TextMessage("market]"+cor.getCor_name() +"님이 마켓상품을 구매하셨습니다."));
				}else if(free != null) {
					session.sendMessage(new TextMessage("market]"+free.getFree_name() +"님이 마켓상품을 구매하셨습니다."));
				}
			}
		}
	}
	
	//연결 해제될때
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		//System.out.println("afterConnectionClosed " + session + ", " + status);
		userSessionsMap.remove(session.getId());
		sessions.remove(session);
	}
	
	//웹소켓 email 가져오기
	private String getEmail(WebSocketSession session) {
		Map<String, Object> httpSession = session.getAttributes();
		String email = (String)httpSession.get("email");
		
		if(email == null) {
			return "";
		} else {
			return email;
		}
	}
}
