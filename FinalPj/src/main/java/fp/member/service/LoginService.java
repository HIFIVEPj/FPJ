package fp.member.service;


import javax.servlet.http.HttpServletResponse;

import javax.servlet.http.HttpSession;

import fp.member.domain.Member;

public interface LoginService {
	//로그인
	public boolean loginCheck(Member member,HttpSession session);
	//로그 아웃
	public void logout(HttpSession session);

	//public void find_pw(HttpServletResponse response, Member member);


}
