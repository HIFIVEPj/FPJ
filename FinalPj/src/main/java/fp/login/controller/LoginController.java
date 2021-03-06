
package fp.login.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.Principal;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;

import org.springframework.security.crypto.bcrypt.BCrypt;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.github.scribejava.core.model.OAuth2AccessToken;

import org.apache.http.HttpRequest;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

//import fp.login.api.GoogleController;
import fp.login.api.KakaoController;
import fp.login.api.NaverLoginController;
import fp.member.domain.Member;
import fp.member.service.LoginService;
import fp.member.service.MailService;
import lombok.extern.log4j.Log4j;
import com.fasterxml.jackson.databind.JsonNode;


@Controller
@Log4j
public class LoginController {
    @Autowired
    @org.springframework.beans.factory.annotation.Qualifier("mailService")
    private MailService mailservice;

   /* NaverLoginBO */
   private NaverLoginController naverLoginController;
   private String apiResult = null;

   private KakaoController KakaoController;
   
   @Autowired
   private void setNaverLoginController(NaverLoginController naverLoginController) {
   this.naverLoginController = naverLoginController;
   }
   
    @Autowired 
    LoginService loginService;
   
    @Autowired    //서비스를 호출하기 위해서 의존성을 주입
    JavaMailSender mailSender;     //메일 서비스를 사용하기 위해 의존성을 주입함.
   
    @GetMapping("/forgot-pwd")
    public String findPwd() {
       return "member/forgot-pwd";
    }

    @RequestMapping(value="find_pwd.do", method = RequestMethod.POST)
   public String updatePwd(Member member, Model model) {
       String userEmail= member.getEmail();
      String repwd="";
      String st[] = {"A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"};
      Random r = new Random();
      for(int i=1; i<=6; i++) {
         repwd+=st[r.nextInt(26)];         
      }
      
       String subject = "임시비밀번호 발급 안내 입니다.";
        StringBuilder sb = new StringBuilder();
        sb.append("임시비밀번호는 " + repwd + " 입니다.");
        sb.append(" 로그인 후 비밀번호 변경 부탁드립니다.");
        mailservice.send(subject, sb.toString(), "hifive@hifive.com", userEmail, null);
          
      member.setEmail(userEmail);
      member.setPwd(BCrypt.hashpw(repwd, BCrypt.gensalt(10)));
      //member.setPwd(repwd);
      
      Integer result = loginService.find_pw(member);      
      model.addAttribute("result",result);      
      System.out.println("result : " + result);
      
      try {
         if(result>=1) {
            
         }else {
            return "member/forgot-pwd";
         }
      }catch (Exception e) {
         e.printStackTrace();
         
      }
      
      return "member/login";

   }
  
    
    
  //로그인 첫 화면 요청 메소드
    @RequestMapping(value = "/login", method = { RequestMethod.GET, RequestMethod.POST })
      public String login(Model model, HttpSession session) {
       
    String naverAuthUrl = naverLoginController.getAuthorizationUrl(session);
    String kakaoUrl = KakaoController.getAuthorizationUrl(session);
    //String googleUrl=GoogleController.getAuthorizationUrl(session);
      model.addAttribute("url", naverAuthUrl);
      model.addAttribute("kakao_url", kakaoUrl);
      //model.addAttribute("google_url", googleUrl);
    return "member/login";
    }
    
  //네이버 로그인 성공시 callback호출 메소드
    @RequestMapping(value = "/callback", method = { RequestMethod.GET, RequestMethod.POST })
    public String callback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session) throws IOException, ParseException {
    System.out.println("여기는 callback");
    OAuth2AccessToken oauthToken;
    oauthToken = naverLoginController.getAccessToken(session, code, state);
    //1. 로그인 사용자 정보를 읽어온다.
    apiResult = naverLoginController.getUserProfile(oauthToken); //String형식의 json데이터
    /** apiResult json 구조
    {"resultcode":"00",
    "message":"success",
    "response":{"id":"33666449","nickname":"shinn****","age":"20-29","gender":"M","email":"sh@naver.com","name":"\uc2e0\ubc94\ud638"}}
    **/
    //2. String형식인 apiResult를 json형태로 바꿈
    JSONParser parser = new JSONParser();
    Object obj = parser.parse(apiResult);
    JSONObject jsonObj = (JSONObject) obj;
    //3. 데이터 파싱
    //Top레벨 단계 _response 파싱
    JSONObject response_obj = (JSONObject)jsonObj.get("response");
    //response의 nickname값 파싱
    String name = (String)response_obj.get("name");
    String email = (String)response_obj.get("email");
    System.out.println(email);
    //4.파싱 닉네임 세션으로 저장
    session.setAttribute("name",name); //세션 생성
    model.addAttribute("result", apiResult);    
    return "index";
    }
    
    @RequestMapping(value = "/kakaologin", produces = "application/json", method = { RequestMethod.GET, RequestMethod.POST }) 
   public ModelAndView kakaoLogin(@RequestParam("code") String code, HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception { 
       
      ModelAndView mav = new ModelAndView(); 
      // 결과값을 node에 담아줌 
      JsonNode node = KakaoController.getAccessToken(code); // accessToken에 사용자의 로그인한 모든 정보가 들어있음 JsonNode accessToken = node.get("access_token"); 
      // 사용자의 정보 JsonNode 
      JsonNode accessToken = node.get("access_token");         
      JsonNode userInfo = KakaoController.getKakaoUserInfo(accessToken);      
      String kemail = null; 
      String name = null; 
      String kgender = null; 
      String kbirthday = null; 
      String kage = null; 
      String kimage = null; 
      // 유저정보 카카오에서 가져오기 Get properties 
      JsonNode properties = userInfo.path("properties"); 
      JsonNode kakao_account = userInfo.path("kakao_account"); 
      kemail = kakao_account.path("email").asText(); 
      name = properties.path("nickname").asText(); 
      kimage = properties.path("profile_image").asText(); 
      kgender = kakao_account.path("gender").asText(); 
      kbirthday = kakao_account.path("birthday").asText(); 
      kage = kakao_account.path("age_range").asText(); 
      session.setAttribute("email", kemail); 
      session.setAttribute("name", name); 
      session.setAttribute("kimage", kimage); 
      session.setAttribute("kgender", kgender); 
      session.setAttribute("kbirthday", kbirthday); 
      session.setAttribute("kage", kage);       
      
      mav.setViewName("index"); 
      return mav; 
   }// end kakaoLogin()

    
   

  //로그인 처리
     @RequestMapping(value="/login_check")
     public ModelAndView loginCheck(@ModelAttribute Member member,HttpSession session,HttpServletResponse response_equals)throws IOException {
        boolean result = loginService.loginCheck(member, session);
        ModelAndView mv = new ModelAndView();        
               
        if(result == true) { 
           session.getAttribute("name");
           session.getAttribute("email");           
            return new ModelAndView("redirect:/");
           
        }else {
           mv.setViewName("member/login");           
           response_equals.setContentType("text/html; charset=UTF-8");            
           PrintWriter out = response_equals.getWriter();            
           out.println("<script>alert('아이디 또는 비밀먼호를 확인하세요');</script>");            
           out.flush();
              
        } 
        return mv;
        
     }

   //로그아웃 처리
   @RequestMapping("logout.do")
   public String logout(HttpSession session) {      
      loginService.logout(session);
      return "redirect:/";
   }
}