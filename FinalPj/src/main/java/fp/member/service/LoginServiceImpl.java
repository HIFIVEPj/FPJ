package fp.member.service;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
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
	/*
	@Override
	public void find_pw(HttpServletResponse response, Member member) throws Exception {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		// 아이디가 없으면
		if(manager.check_id(member.getId()) == 0) {
			out.print("아이디가 없습니다.");
			out.close();
		}
		// 가입에 사용한 이메일이 아니면
		else if(!member.getEmail().equals(manager.login(member.getId()).getEmail())) {
			out.print("잘못된 이메일 입니다.");
			out.close();
		}else {
			// 임시 비밀번호 생성
			String pw = "";
			for (int i = 0; i < 12; i++) {
				pw += (char) ((Math.random() * 26) + 97);
			}
			member.setPwd(pw);
			// 비밀번호 변경
			dao.update_pw(member);
			// 비밀번호 변경 메일 발송
			//send_mail(member, "find_pw");
			
			out.print("이메일로 임시 비밀번호를 발송하였습니다.");
			out.close();
		}
	} */

}
