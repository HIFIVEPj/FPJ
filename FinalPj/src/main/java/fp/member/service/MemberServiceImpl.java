
package fp.member.service;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.log;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fp.member.domain.Criteria;
import fp.member.domain.EmailAuth;
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
	public List<PayInformation> marketListCor(MemberVo memberVO) {
		return memberMapper.marketListCor(memberVO);
	}
	
	@Override
	public long getTotalCountMC() {
		return memberMapper.getTotalCountMC();
	}


	@Override
	public List<PayInformation> marketListFree(MemberVo memberVO) {
		return memberMapper.marketListFree(memberVO);
	}
	@Override
	public long getTotalCountMF() {
		return memberMapper.getTotalCountMF();
	}

}
