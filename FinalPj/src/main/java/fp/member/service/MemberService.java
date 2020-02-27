
package fp.member.service;

import java.util.List;
import java.util.Map;

import fp.member.domain.Member;
import fp.member.domain.MemberVo;

public interface MemberService {
	//List<Member> list(Map<String,Object> map);
	MemberVo getMemberVo(Map<String,Object> map);
	long getTotalCount(String class_num);
	long getTotalCountCor();
	long getTotalCountFree();
	int idCheck(String email);
	void insertM(Member member);		

	

	/*
	public boolean loginCheck(Member member,HttpSession session);
	public void logout(HttpSession session); */
}
