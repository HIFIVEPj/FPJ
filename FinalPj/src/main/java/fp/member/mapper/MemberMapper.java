
package fp.member.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import fp.member.domain.Criteria;
import fp.member.domain.EmailAuth;
import fp.member.domain.Member;
import fp.member.domain.MemberVo;
import fp.member.domain.PayInformation;

@Repository
public interface MemberMapper {
	int idCheck(String email);
	void insertMem(Member member);	
	//List<Member> list(Map map);
	List<Member> getList(Map<String, Object> map);
	long getTotalCount(Map<String, Object> map);
	
	List<PayInformation> marketListCor(MemberVo memberVO);
	long getTotalCountMC();

}

