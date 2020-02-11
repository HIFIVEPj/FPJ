package fp.member.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import fp.member.domain.EmailAuth;
import fp.member.domain.Member;
import fp.member.mapper.MemberMapper;

@Service("MemberService")
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberMapper memberMapper;
	
	/*
	@Override
	public Member listM(String email) {
		return memberMapper.selectMemList(email);
	} */
	@Override
	public List<EmailAuth> listA(String email) {		
		return memberMapper.selectEmailAuth(email);
	}
	
	@Override
	public void insertM(Member member) {
		BCryptPasswordEncoder passwodrdEncoder =new BCryptPasswordEncoder();
		member.setPwd(passwodrdEncoder.encode(member.getPwd()));
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
	/*
	@Override
	public boolean loginCheck(Member member,HttpSession session) {
		boolean result =memberMapper.loginCheck(member);
		if(result == true) {
			session.setAttribute("userEmail", member.getEmail());
			
		}else {
			System.out.println("없는아이디임 다시 입력바람");			
		}
		return result;
	}
	@Override
	public void logout(HttpSession session) {
		memberMapper.logout(session);
	} */
}
