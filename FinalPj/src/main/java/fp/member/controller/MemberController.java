
package fp.member.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.log;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import org.springframework.security.crypto.bcrypt.BCrypt;
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
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
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
    
   @Autowired
    BCryptPasswordEncoder bcryptPasswordEncoder;
    
	@RequestMapping("register")
	public String reg() {
		return "member/register";
	}    
    // mailSending 코드
        @GetMapping(value = "auth.do" )
        public ModelAndView mailSending(HttpServletRequest request,String email,HttpServletResponse response_email) throws IOException {
        	log.info("#email: " + email);
            Random r = new Random();
            int dice = r.nextInt(4589362) + 49311; //이메일로 받는 인증코드 부분 (난수)
          
            String setfrom = "dam7319@gamil.com";
            String tomail = request.getParameter("email"); // 받는 사람 이메일
            String title = "회원가입 인증 이메일 입니다."; // 제목
            String content =
            
            System.getProperty("line.separator")+ //한줄씩 줄간격을 두기위해 작성
            
            System.getProperty("line.separator")+
                    
            "안녕하세요 회원님 저희 홈페이지를 찾아주셔서 감사합니다"
            
            +System.getProperty("line.separator")+
            
            System.getProperty("line.separator")+
    
            " 인증번호는 " +dice+ " 입니다. "
            
            +System.getProperty("line.separator")+
            
            System.getProperty("line.separator")+
            
            "받으신 인증번호를 홈페이지에 입력해 주시면 다음으로 넘어갑니다."; // 내용            
            
         
            try {
                MimeMessage message = mailSender.createMimeMessage();
                MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
 
                messageHelper.setFrom(setfrom); // 보내는사람 생략하면 정상작동을 안함
                messageHelper.setTo(tomail); // 받는사람 이메일
                messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
                messageHelper.setText(content); // 메일 내용
                
                mailSender.send(message);
            } catch (Exception e) {
                System.out.println(e);
            }       
            ModelAndView mv = new ModelAndView();    //ModelAndView로 보낼 페이지를 지정하고, 보낼 값을 지정한다.
            mv.setViewName("member/join_confirm");  //뷰의이름                   
            mv.addObject("email", email);
            
            
            Map map = new HashMap();            		   
            map.put("email", email); //가져온 데이터에 키와 벨류값을 지정
            map.put("dice", dice);
            memberservice.insertAuth(map);              
           return mv;
            
        }
  
    /*이메일 인증 페이지 맵핑 메소드
    @RequestMapping("/register_email")
    public String email() {
      return "member/register_email";
    } */
    
    
    //이메일로 받은 인증번호를 입력하고 전송 버튼을 누르면 맵핑되는 메소드.
    //내가 입력한 인증번호와 메일로 입력한 인증번호가 맞는지 확인해서 맞으면 회원가입 페이지로 넘어가고,
    //틀리면 다시 원래 페이지로 돌아오는 메소드
    @RequestMapping(value = "join_injeung.do{email}", method = RequestMethod.POST)
    public ModelAndView join_injeung(String email_injeung, @PathVariable String email, HttpServletResponse response_equals) throws IOException {
     	List<EmailAuth> diceInfo =memberservice.listA(email);
    	int dice= diceInfo.get(0).getDice();
        email_injeung = email_injeung.trim();
		int check = Integer.parseInt(email_injeung);
        //페이지이동과 자료를 동시에 하기위해 ModelAndView를 사용해서 이동할 페이지와 자료를 담음         
        ModelAndView mv = new ModelAndView();        
        mv.setViewName("/member/register_email");        
        mv.addObject("email",email);   
        if (check==dice) {
            //인증번호가 일치할 경우 인증번호가 맞다는 창을 출력하고 회원가입창으로 이동함            
            mv.setViewName("member/register_email");            
            mv.addObject("email",email);            
            //만약 인증번호가 같다면 이메일을 회원가입 페이지로 같이 넘겨서 이메일을
            //한번더 입력할 필요가 없게 한다.
            response_equals.setContentType("text/html; charset=UTF-8");
            PrintWriter out_equals = response_equals.getWriter();
            out_equals.println("<script>alert('인증번호가 일치하였습니다. 회원가입창으로 이동합니다.');</script>");
            out_equals.flush();
            return mv;            
        }else if (check!=dice) {   
            ModelAndView mv2 = new ModelAndView();             
            mv2.setViewName("member/join_confirm");            
            response_equals.setContentType("text/html; charset=UTF-8");
            PrintWriter out_equals = response_equals.getWriter();
            out_equals.println("<script>alert('인증번호가 일치하지않습니다. 인증번호를 다시 입력해주세요.'); history.go(-1);</script>");
            out_equals.flush();
            return mv2;
           }    
        return mv;
    }
    
    @RequestMapping(value = "signup.do" , method=RequestMethod.POST )
    public String signUp (Member member) throws IOException {
    	String bcpwd=member.getPwd();
    	member.setPwd(BCrypt.hashpw(bcpwd, BCrypt.gensalt(10)));
    	//BCryptPasswordEncoder pwEncoder =new BCryptPasswordEncoder();
    	//String password = pwEncoder.encode(member.getPwd());
    	//member.setPwd(password);
    	//member.setPwd(BCrypt.hashpw(member.getPwd(), BCrypt.gensalt()));
    	//dto.setPassword(BCrypt.hashpw(dto.getPassword(), BCrypt.gensalt()));
    	memberservice.insertM(member);
    	System.out.println("member: " + member);
    	return "index";
    } 
}