package fp.member.mapper;

import java.util.List;
import java.util.Map;

import fp.member.domain.EmailAuth;
import fp.member.domain.Member;

public interface MemberMapper {
	List<Member> selectMemList();
	List<EmailAuth> selectEmailAuth(String email);
	void insertMem(Member member);	
	//void insertAuth(EmailAuth emailAuth);
	void insertAuth(Map map);
	void delete(long seq);
}
