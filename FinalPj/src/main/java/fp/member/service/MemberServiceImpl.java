
package fp.member.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fp.member.domain.EmailAuth;
import fp.member.domain.Member;
import fp.member.domain.MemberVo;
import fp.member.mapper.MemberMapper;

@Service("MemberService")
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
		MemberVo mvo = new MemberVo(pmvo.getTotal(), pmvo.getNowPage(),  pmvo.getCntPerPage(), list);
		return mvo;
	}

	@Override
	public long getTotalCountCor() {
		// TODO Auto-generated method stub
		return memberMapper.getTotalCountCor();
	}
	
	@Override
	public long getTotalCountFree() {
		return memberMapper.getTotalCountFree();
	}

}
