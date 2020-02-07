package fp.login.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/member/login")
@Log4j
public class LoginController {
	
	@GetMapping("/user")
	public void doUser() {
		log.info("모든 유저 로그인");
	}

	@GetMapping("/member")
	public void doMember() {
		log.info("회원만");
	}
	
	@GetMapping("/admin")
	public void doAdmin() {
		log.info("관리자만");
	}

}
