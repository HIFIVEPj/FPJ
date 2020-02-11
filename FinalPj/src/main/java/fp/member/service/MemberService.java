package fp.member.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import fp.member.domain.EmailAuth;
import fp.member.domain.Member;

public interface MemberService {
	//Member listM(String email);
	List<EmailAuth> listA(String email);
	void insertM(Member member);	
	void insertAuth(Map map);
	void deleteS(long seq);
	
	/*
	public boolean loginCheck(Member member,HttpSession session);
	public void logout(HttpSession session); */
}
