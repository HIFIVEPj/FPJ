
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
import javax.inject.Qualifier;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.scripting.xmltags.TrimSqlNode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;

import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


import fp.member.service.MailService;
import fp.member.domain.EmailAuth;
import fp.member.domain.Member;
import fp.member.service.MailService;
import fp.member.service.MemberService;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller    //컨트롤러 빈 선언
public class MemberController {
    @Autowired
   @org.springframework.beans.factory.annotation.Qualifier("mailService")
    private MailService mailservice;

    @RequestMapping(value="createEmailCheck.do", method=RequestMethod.GET)
    @ResponseBody
    public boolean creatEmailCheck(@RequestParam String userEmail, @RequestParam int random, HttpServletRequest req) {
       int ran = new Random().nextInt(900000)+100000;
       HttpSession session = req.getSession(true);
       String authCode = String.valueOf(ran);
       session.setAttribute("authCode", authCode);
       session.setAttribute("random", random);
       String subject = "회원가입 인증 코드 발급 안내 입니다.";
       StringBuilder sb = new StringBuilder();
       sb.append("귀하의 인증 코드는 " + authCode + "입니다.");
       log.info("!@#$userEmail: "+ userEmail);
       return mailservice.send(subject, sb.toString(), "hifive@hifive.com", userEmail, null);
    }
    
    @RequestMapping(value="emailAuth.do", method=RequestMethod.GET)
    @ResponseBody
    public ResponseEntity<String> emailAuth(@RequestParam String authCode, @RequestParam String random, HttpSession session){
       String originalJoinCode = (String) session.getAttribute("authCode");
       String originalRandom = Integer.toString((int) session.getAttribute("random"));
       if(originalJoinCode.equals(authCode) && originalRandom.equals(random))
          return new ResponseEntity<String>("complete", HttpStatus.OK);
       else return new ResponseEntity<String>("false", HttpStatus.OK);
    }
    
    
    @Autowired
    MemberService memberservice; //서비스를 호출하기 위해 의존성을 주입
  
	@RequestMapping("register")
	public ModelAndView reg() {
		ModelAndView mv=new ModelAndView("member/register");
		int ran = new Random().nextInt(900000)+100000;
		mv.addObject("random", ran);
		return mv;
	}    
    
	@RequestMapping(value = "id_ck.do" , method = RequestMethod.POST)
	public @ResponseBody String idCheck(@RequestParam String email) throws Exception{
		String str = "";
	  	int result =memberservice.idCheck(email);
	  	if(result==1){ //이미 존재하는 계정
			str = "NO";	
		}else{	//사용 가능한 계정
			str = "YES";	
		}
		return str;

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

