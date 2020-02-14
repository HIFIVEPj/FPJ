package fp.member.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.security.crypto.bcrypt.BCrypt;
import fp.member.dao.MemberDao;
import fp.member.domain.Member;

@Service("LoginService")
public class LoginServiceImpl implements LoginService {
	
	@Autowired
	private MemberDao dao;
	
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@Override
	public boolean loginCheck(Member member,HttpSession session) {
		System.out.println("111111111#!#!$#@$@@#!#!@#!@#@!#!#@#!"+dao.loginCheck(member).getEmail());
		System.out.println("111111111#!#!$#@$@@#!#!@#!@#@!#!#@#!"+member.getPwd());
		//member.setPwd(pwEncoder.encode(member.getPwd()));
		//System.out.println("22222222#!#!$#@$@@#!#!@#!@#@!#!#@#!"+member.getPwd());
		
		//boolean result= this.bcryptPasswordEncoder.matches(member.getPwd(), dao.loginCheck(member).getPwd());
		BCrypt.checkpw(member.getPwd(), dao.loginCheck(member).getPwd());
		//result=dao.loginCheck(member);
		//System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!1r1"+result);
		System.out.println("DSDASDEWWR#!@#$************:"+BCrypt.checkpw(member.getPwd(), dao.loginCheck(member).getPwd()));
		System.out.println("디비비비디디비딥디빋빋비딥디빋비디비ㅣ"+dao.loginCheck(member).getPwd());
		
		//boolean result = dao.loginCheck(member);
		if (BCrypt.checkpw(member.getPwd(), dao.loginCheck(member).getPwd()) == true) {	//true 일경우 세션 등록
			//세션 변수 등록
			session.setAttribute("email",member.getEmail());
			
		}
		return true;

	}
	
	@Override
	public void logout(HttpSession session) {
		dao.logout(session);
	}

}
