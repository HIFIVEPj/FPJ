package fp.member.service;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.log;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fp.market.domain.Market;
import fp.member.domain.Member;
import fp.member.domain.MemberVo;
import fp.member.domain.PayInformation;
import fp.member.mapper.MemberMapper;
import lombok.extern.log4j.Log4j;

@Service("MemberService")
@Log4j
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberMapper memberMapper;
	
	@Override
	public int idCheck(String email){
		int result=memberMapper.idCheck(email);		
		return result;
	}
		
	@Override
	public void insertM(Member member) {	
		memberMapper.insertMem(member);

	}
	/*@Override
	public List<Member> list(Map<String,Object> map){
		return memberMapper.list(map);
	} */
	@Override
	public long getTotalCount(Map<String,Object> map) {
		return memberMapper.getTotalCount(map);
	}
	
	@Override
	public MemberVo getMemberVo(Map<String,Object> map) {
		List<Member> list = memberMapper.getList(map);
		MemberVo pmvo = (MemberVo)map.get("MemberVo");
		MemberVo mvo = new MemberVo(pmvo.getTotal(), pmvo.getNowPage(),  pmvo.getCntPerPage(), list ,pmvo.getKeyword());
		return mvo;
	}

	
	@Override
	public long getMarketCount() {		
		return memberMapper.getMarketCount();
	}
	
	@Override
	public List<Market> getMarketList(MemberVo memberVO) {		
		return memberMapper.getMarketList(memberVO);
	}
	
	@Override
	public void upMarketS(Map<String,Object> map) {
		memberMapper.upMarketS(map);
		
	}
	@Override
	public List<PayInformation> marketListCor(MemberVo memberVO) {
		return memberMapper.marketListCor(memberVO);
	}
	
	@Override
	public long getTotalCountMC(MemberVo memberVO) {
		return memberMapper.getTotalCountMC(memberVO);
	}


	@Override
	public List<PayInformation> marketListFree(MemberVo memberVO) {
		return memberMapper.marketListFree(memberVO);
	}
	@Override
	public long getTotalCountMF(MemberVo memberVO) {
		return memberMapper.getTotalCountMF(memberVO);
	}
	

	@Override
	public List<Long> sumFree() {
		
		return memberMapper.sumFree();
	}
	
	@Override
	public List<Long> sumCor() {
		return memberMapper.sumCor();
	}

	@Override
	public List<Long> month() {
		return memberMapper.month();
	}
}