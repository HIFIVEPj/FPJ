package fp.login.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fp.member.service.MemberService;
import fp.password.security.CustomerUserDetail;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class LoginController {
	
	
    @Autowired
    MemberService memberservice; //서비스를 호출하기 위해 의존성을 주입
	
   
    @GetMapping("/member/login")
    public String loginPage() {
    	return "/member/login";
    } 
    
    /*
    @GetMapping("/member/login")
    public void loginInput(String error, String logout, Model model) {
    	log.info("error : " + error );
    	log.info("logout: " + logout);
    	if(error != null ) {
    		model.addAttribute("error", "Login Error Check Your Accout");
      	}
    	if(logout != null) {
    		model.addAttribute("logout","Logout!!");
    	}
    } */
    
    /*
    @RequestMapping(value="/login.do")
    public String loginInvalidId(Model model, HttpSession session, HttpServletRequest request){
          
          //customUserDetail에 set한 값을 getter를 통해 가져오는 작업을 가능하게 함
    		CustomerUserDetail userDetails = (CustomerUserDetail)SecurityContextHolder.getContext().getAuthentication().getDetails();
          
          //이런식으로 세션에 값을 넣어주면 컨트롤러에서 사용가능
          session.setAttribute("email", userDetails.getUsername());
          session.setAttribute("pwd", userDetails.getPassword());
          session.setAttribute("auth", userDetails.getAuthorities());
          
          return "member/login";
    }



    /*
     
    @RequestMapping(value = "login.do" , method=RequestMethod.POST )
	public String loginConfirm(HttpServletRequest request){
		String email=request.getParameter("email");
		String pwd=request.getParameter("pwd");
		memberservice.listM(email);
		System.out.println("여기오나 로그인");
		return "/member/index";
	}
	*/

}
