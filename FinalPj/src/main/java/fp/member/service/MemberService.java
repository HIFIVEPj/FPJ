
package fp.member.service;

import java.util.List;
import java.util.Map;


import fp.member.domain.Member;
import fp.member.domain.MemberVo;
import fp.member.domain.PayInformation;

public interface MemberService {
	//List<Member> list(Map<String,Object> map);
	MemberVo getMemberVo(Map<String,Object> map);
	long getTotalCount(Map<String,Object> map);
	int idCheck(String email);
	void insertM(Member member);		

	List<PayInformation> marketListCor(MemberVo memberVO);
	long getTotalCountMC();
	/*
	public boolean loginCheck(Member member,HttpSession session);
	public void logout(HttpSession session); */
}
