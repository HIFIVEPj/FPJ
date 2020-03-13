package fp.member.service;

import java.util.List;
import java.util.Map;

import fp.market.domain.Market;
import fp.member.domain.Member;
import fp.member.domain.MemberVo;
import fp.member.domain.PayInformation;

public interface MemberService {
	//List<Member> list(Map<String,Object> map);
	MemberVo getMemberVo(Map<String,Object> map);
	long getTotalCount(Map<String,Object> map);
	int idCheck(String email);
	void insertM(Member member);		
	
	void upMarketS(Market market);
	//마켓 게시글 
	long getMarketCount();
	List<Market> getMarketList(MemberVo memberVO);
	
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