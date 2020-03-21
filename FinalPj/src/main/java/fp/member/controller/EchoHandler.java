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
		}
		//2. 프리랜서 나 기업이 마켓에서 구매했을때 마켓 글쓴사람한테 알림
		
	
		//모든 유저에게 보낸다 - 브로드 캐스팅
		//for (WebSocketSession sess : sessions) {
		//	sess.sendMessage(new TextMessage( senderEmail + ": " +  message.getPayload()));
		//}
		
		//protocol : cmd , 댓글작성자, 게시글 작성자 , seq (reply , user2 , user1 , 12)
		/*
		 * String msg = message.getPayload(); if(StringUtils.isNotEmpty(msg)) { String[]
		 * strs = msg.split(",");
		 * 
		 * if(strs != null && strs.length == 5) { String cmd = strs[0]; String caller =
		 * strs[1]; String receiver = strs[2]; String receiverEmail = strs[3]; String
		 * seq = strs[4];
		 * 
		 * //작성자가 로그인 해서 있다면 WebSocketSession boardWriterSession =
		 * userSessionsMap.get(receiverEmail);
		 * 
		 * if("reply".equals(cmd) && boardWriterSession != null) { TextMessage tmpMsg =
		 * new TextMessage(caller + "님이 " +
		 * "<a type='external' href='/mentor/menteeboard/menteeboardView?seq="+seq+
		 * "&pg=1'>" + seq + "</a> 번 게시글에 댓글을 남겼습니다.");
		 * boardWriterSession.sendMessage(tmpMsg);
		 * 
		 * }else if("follow".equals(cmd) && boardWriterSession != null) { TextMessage
		 * tmpMsg = new TextMessage(caller + "님이 " + receiver + "님을 팔로우를 시작했습니다.");
		 * boardWriterSession.sendMessage(tmpMsg);
		 * 
		 * }else if("scrap".equals(cmd) && boardWriterSession != null) { TextMessage
		 * tmpMsg = new TextMessage(caller + "님이 " + //변수를 하나더 보낼수 없어서 receiver 변수에
		 * member_seq를 넣어서 썼다.
		 * "<a type='external' href='/mentor/essayboard/essayboardView?pg=1&seq="+seq+
		 * "&mentors="+ receiver +"'>" + seq + "</a>번 에세이를 스크랩 했습니다.");
		 * boardWriterSession.sendMessage(tmpMsg); } } // 모임 신청 했을때 if(strs != null &&
		 * strs.length == 5) { String cmd = strs[0]; String mentee_name = strs[1];
		 * String mentor_email = strs[2]; String meetingboard_seq = strs[3]; String
		 * participation_seq = strs[4];
		 * 
		 * // 모임 작성한 멘토가 로그인 해있으면 WebSocketSession mentorSession =
		 * userSessionsMap.get(mentor_email); if(cmd.equals("apply") && mentorSession !=
		 * null) { TextMessage tmpMsg = new TextMessage( mentee_name + "님이 모임을 신청했습니다. "
		 * +"<a type='external' href='/mentor/participation/participationView?mseq="+
		 * meetingboard_seq +"&pseq="+ participation_seq +"'>신청서 보기</a>");
		 * mentorSession.sendMessage(tmpMsg); } } }
		 */
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
