package fp.member.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fp.member.dao.MemberDao;
import fp.member.domain.Member;

@Service("LoginService")
public class LoginServiceImpl implements LoginService {
	
	@Autowired
	private MemberDao dao;
	
	@Override
	public boolean loginCheck(Member member,HttpSession session) {
		
		boolean result = dao.loginCheck(member);
		if (result == true) {	//true 일경우 세션 등록
			//세션 변수 등록
			session.setAttribute("email",member.getEmail());
		}
		
		return result;
	}
	
	@Override
	public void logout(HttpSession session) {
		dao.logout(session);
	}

}