package fp.member.service;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.security.crypto.bcrypt.BCrypt;

import fp.corporation.service.ProjectService;
import fp.member.dao.MemberDao;
import fp.member.domain.Member;
import lombok.extern.log4j.Log4j;



@Log4j
@Service("LoginService")
public class LoginServiceImpl implements LoginService {
	
	@Autowired
	private MemberDao dao;
	
	/*
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder; 
	*/
	
	@Override
	public boolean loginCheck(Member member,HttpSession session) {
		
		boolean result=BCrypt.checkpw(member.getPwd(), dao.loginCheck(member).getPwd());	
		log.info("(1)"+result);
		log.info("(2)"+member.getPwd());
		log.info("(3)"+dao.loginCheck(member).getPwd());
		
		if (BCrypt.checkpw(member.getPwd(), dao.loginCheck(member).getPwd()) == true) {	//true 일경우 세션 등록
			//세션 변수 등록
			session.setAttribute("name",dao.loginCheck(member).getName());
			session.setAttribute("email",member.getEmail());
			session.setAttribute("class_num",dao.loginCheck(member).getClass_num());
			System.out.println("@!#!#$$@class_num : "+member.getName());

			return true;
		}
		return false;

	}
	
	@Override
	public void logout(HttpSession session) {
		dao.logout(session);
	}
	
	@Override
	public int find_pw(Member member){
		int i =0;
		try {
			i = dao.update_pw(member);
		}catch(Exception e) {
			return -1;
		}	
		System.out.print("i: "+i);
			return i;
	}

}