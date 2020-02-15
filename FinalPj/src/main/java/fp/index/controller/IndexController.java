package fp.index.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class IndexController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index() {	
		return "index";
	}
	@RequestMapping("construction")
	public String construction() {
		return "construction";
	}
}
