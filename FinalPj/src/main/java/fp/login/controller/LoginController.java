package fp.login.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import fp.member.domain.Member;
//import fp.member.service.CustomUserDetailService;
import fp.member.service.LoginService;
import fp.member.service.MemberService;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class LoginController {
	
	
    
    @Autowired
    LoginService loginService;
    
    @GetMapping("member/login")
    public String loginPage() {
    	return "member/login";
    }
  //로그인 처리
  	@RequestMapping(value="/login_check")
  	public ModelAndView loginCheck(@ModelAttribute Member member,HttpSession session) {
  		
  		boolean result = loginService.loginCheck(member, session);
  		ModelAndView mv = new ModelAndView();
  		
  		mv.setViewName("index");
  		
  		if(result) {
  			mv.addObject("msg","성공");
  		}else {
  			mv.addObject("msg","실패");
  		}
  		
  		return mv;
  	}
	//로그아웃 처리
	@RequestMapping("logout.do")
	public ModelAndView logout(HttpSession session) {
		
		loginService.logout(session);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index");
		mav.addObject("msg", "logout");
		
		return mav;
	}
    /*
    @RequestMapping(value = "login_check" , method=RequestMethod.POST )
    public String loginInput(HttpServletRequest request, String error, String logout, Model model, 
 		   HttpSession session, Principal principal) {
 	   if(principal != null) return "redirect:/";
 	  log.info("LOGIN error: " + error);
       log.info("logout: " + logout);
       String referer = request.getHeader("Referer");
       request.getSession().setAttribute("prevPage", referer);
       if (error != null) {
          model.addAttribute("error", "Login Error Check Your Account");
       }

       if (logout != null) {
          model.addAttribute("logout", "Logout!!");
       }
       return "login";
    }
    
    @RequestMapping(value = "login_check" , method=RequestMethod.POST )
	public String loginConfirm(HttpServletRequest request){
		String email=request.getParameter("email");
		String pwd=request.getParameter("pwd");
		memberservice.listM(email);
		System.out.println("여기오나 로그인");
		return "/member/index";
	}  */
	

}