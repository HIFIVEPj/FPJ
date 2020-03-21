
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
	
	void upMarketS(Map<String,Object> map);
	//마켓 게시글 
	long getMarketCount();
	long getMarketCountSys();
	List<Market> getMarketList(MemberVo memberVO);
	long getMarketListState();
	
	//Index 
	long sumCountCorIndex();
	long countFree();
	
	//기업
	List<PayInformation> marketListCor(MemberVo memberVO);
	long getTotalCountMC(MemberVo memberVO);
	long getProjectCountSys();
	
	//개인
	List<PayInformation> marketListFree(MemberVo memberVO);
	long getTotalCountMF(MemberVo memberVO);

	
	List<Long> sumFree();
	List<Long> sumCor();
	List<Long> month();
	
	List<String> sumCountCorN();
	List<Long> sumCountCor();
	
	List<String> sumCountMarketN();
	List<Long> sumCountMarket();
}