
package fp.member.service;

import java.util.List;
import java.util.Map;

import fp.member.domain.Member;

public interface MemberService {
	
	int idCheck(String email);
	void insertM(Member member);		
	void deleteS(long seq);
	

	/*
	public boolean loginCheck(Member member,HttpSession session);
	public void logout(HttpSession session); */
}
