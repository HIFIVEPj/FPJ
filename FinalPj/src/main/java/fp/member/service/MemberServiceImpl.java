
package fp.member.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fp.member.domain.EmailAuth;
import fp.member.domain.Member;
import fp.member.mapper.MemberMapper;

@Service("MemberService")
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberMapper memberMapper;
	
		
	@Override
	public void insertM(Member member) {		
		memberMapper.insertMem(member);

	}
	@Override
	public void insertAuth(Map map) {
		memberMapper.insertAuth(map);
	}

	@Override
	public void deleteS(long seq) {
		memberMapper.delete(seq);
	}
	

}

