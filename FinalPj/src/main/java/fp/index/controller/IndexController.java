package fp.index.controller;


import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class IndexController {

	@RequestMapping("construction")
	public String construction() {
		return "admin/admin_page";
	}
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(Locale locale, Model model) {	
		return "index";
	}
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String admin(Locale locale, Model model) {	
		return "admin/admin_page";
	}
	@RequestMapping(value = "/admin_member", method = RequestMethod.GET)
	public String memberManagement(Locale locale, Model model) {	
		return "admin/admin_member";
	}

}
