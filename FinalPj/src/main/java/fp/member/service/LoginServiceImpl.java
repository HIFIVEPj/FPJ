
package fp.member.service;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.security.crypto.bcrypt.BCrypt;

import fp.corporation.service.ProjectService;
import fp.member.mapper.MemberDao;
import fp.member.domain.Member;
import lombok.extern.log4j.Log4j;



@Log4j
@Service("LoginService")
public class LoginServiceImpl implements LoginService {
	
	@Autowired
	private MemberDao dao;
	
	@Override
	public boolean loginCheck(Member member,HttpSession session) {	
		
		if(dao.loginCheck(member)==null) {
			return false;
		}else {
			boolean result=BCrypt.checkpw(member.getPwd(), dao.loginCheck(member).getPwd());				
			if (BCrypt.checkpw(member.getPwd(), dao.loginCheck(member).getPwd()) == true) {	//true 일경우 세션 등록
				//세션 변수 등록
				session.setAttribute("name",dao.loginCheck(member).getName());
				session.setAttribute("email",member.getEmail());
				session.setAttribute("class_num",dao.loginCheck(member).getClass_num());			
				return true;
			}
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