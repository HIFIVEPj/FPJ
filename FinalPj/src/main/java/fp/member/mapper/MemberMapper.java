package fp.member.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import fp.market.domain.Market;
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

	//마켓 게시글 
	long getMarketCount();
	List<Market> getMarketList(MemberVo memberVO);
	void upMarketS(Map<String, Object> map);
	
	//기업
	List<PayInformation> marketListCor(MemberVo memberVO);
	long getTotalCountMC(MemberVo memberVO);
	//개인
	List<PayInformation> marketListFree(MemberVo memberVO);
	long getTotalCountMF(MemberVo memberVO);

	List<Long> sumFree();
	List<Long> sumCor();
	List<Long> month();

}