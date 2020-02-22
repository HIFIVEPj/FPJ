
package fp.member.service;

import javax.servlet.http.HttpServletResponse;

import javax.servlet.http.HttpSession;

import fp.member.domain.Member;

public interface LoginService {
	//로그인
	public boolean loginCheck(Member member,HttpSession session);
	//로그 아웃
	public void logout(HttpSession session);

	//패스워드 찾기
	public int find_pw(Member member);


}
