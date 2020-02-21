
package fp.member.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.log;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
//import org.springframework.security.crypto.bcrypt.BCrypt;
import javax.inject.Inject;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.scripting.xmltags.TrimSqlNode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCrypt;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import fp.member.domain.EmailAuth;
import fp.member.domain.Member;
import fp.member.service.MemberService;
import lombok.extern.log4j.Log4j;




@Log4j
@Controller    //컨트롤러 빈 선언
public class MemberController {
	
    @Autowired    //서비스를 호출하기 위해서 의존성을 주입
    JavaMailSender mailSender;     //메일 서비스를 사용하기 위해 의존성을 주입함.
   
    @Autowired
    MemberService memberservice; //서비스를 호출하기 위해 의존성을 주입
    
  
	@RequestMapping("register")
	public String reg() {
		return "member/register";
	}    
    
    
    @RequestMapping(value = "signup.do" , method=RequestMethod.POST )
    public String signUp (Member member) throws IOException {
    	String bcpwd=member.getPwd();
    	
    	
    	log.info("#입력비번: " + bcpwd);
    	
    	member.setPwd(BCrypt.hashpw(bcpwd, BCrypt.gensalt(10)));
    	
    	//BCryptPasswordEncoder pwEncoder =new BCryptPasswordEncoder();
    	//String password = pwEncoder.encode(member.getPwd());
    	//member.setPwd(password);
    	//member.setPwd(BCrypt.hashpw(member.getPwd(), BCrypt.gensalt()));
       	memberservice.insertM(member);
    	System.out.println("member: 꺄아아아아앙ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ" + member);
    	return "index";
    } 
}