
package fp.member.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import fp.member.domain.EmailAuth;
import fp.member.domain.Member;

@Repository
public interface MemberMapper {
	
	
	int idCheck(String email);
	void insertMem(Member member);		
	void insertAuth(Map map);
	void delete(long seq);
}
