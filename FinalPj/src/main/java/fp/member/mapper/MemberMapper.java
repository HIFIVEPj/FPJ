package fp.member.mapper;

import java.util.List;
import java.util.Map;

import fp.member.domain.EmailAuth;
import fp.member.domain.Member;

public interface MemberMapper {
	//List<Member> selectMemList(String email, String pwd);
	public Member selectMemList(String email);
	
	//로그인처리
	//public Map<String,Object> selectMemList(String email); 
	
	
	List<EmailAuth> selectEmailAuth(String email);
	void insertMem(Member member);		
	void insertAuth(Map map);
	void delete(long seq);
}
