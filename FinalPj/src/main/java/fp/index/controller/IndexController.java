package fp.index.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	
/*나영*/
	@RequestMapping("/register")
	public String reg() {
		return "register";
	}
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	@RequestMapping("/mydash")
	public String mypage() {
		return "mydash";
	}
	@RequestMapping("/mydash_cor")
	public String mypage_cor() {
		return "mydash_cor";
	}
	@RequestMapping("/payments")
	public String pay() {
		return "payments";
	}
	@RequestMapping("/myfavorite")
	public String myfavorite() {
		return "myfavorite";
	}
	@RequestMapping("/myfavorite_cor")
	public String myfavorite_cor() {
		return "myfavorite_cor";
	}
	@RequestMapping("/myfavorite_market")
	public String myfavorite_market() {
		return "myfavorite_market";
	}
	@RequestMapping("/forgot-pwd")
	public String forgotPwd() {
		return "forgot-pwd";
	}
	@RequestMapping("/managed-market")
	public String managedMarket() {
		return "managed-market";
	}
	@RequestMapping("/managed_order")
	public String managedOrder() {
		return "managed_order";
	}
/*나영*/
	
/*소담*/
	@RequestMapping("/employer")
	public String employer() {				
		return "employer";
	}	
	@RequestMapping("/employer-list-right")
		public String employerlist() {				
			return "employer-list-right";			
	}
	@RequestMapping("/myprofile")
	public String profiles() {				
		return "myprofile";			
	}
	
	@RequestMapping("/profilelist")
	public String profilelist() {				
		return "profilelist";			
	}
	
	@RequestMapping("myprofilecontent")
	public String profilecontent() {				
		return "myprofilecontent";			
	}
	@RequestMapping("/myprofilerewrite")
	public String mydashrewrite() {				
		return "myprofilerewrite";			
	}
/*소담*/	
	
/*별*/

	
	@GetMapping("content.do")
	public String content() {
		return "project_content";
	}
	@GetMapping("write.do")
	public String write() {
		return "project_write";
	}
	@GetMapping("update.do")
	public String update() {
		return "project_update";
	}
	@GetMapping("payments.do")
	public String project_payments() {
		return "project_payments";
	}
	@GetMapping("payments_end.do")
	public String payments_end() {
		return "project_payments_end";
	}
/*별*/
	
	/*세영*/
	@RequestMapping(value = "marketList", method = RequestMethod.GET)
	public String list(Locale locale, Model model) {

		return "ad-list-right";
	}
	@RequestMapping(value = "marketDetails", method = RequestMethod.GET)
	public String details(Locale locale, Model model) {

		return "ad-details";
	}
	
	@RequestMapping(value = "marketPosts", method = RequestMethod.GET)
	public String post1(Locale locale, Model model) {

		return "ad-posts";
	}
	@RequestMapping(value = "marketPayments", method = RequestMethod.GET)
	public String sy_payments(Locale locale, Model model) {

		return "sy_payments";
	}
	@RequestMapping(value = "marketPaymentsDone", method = RequestMethod.GET)
	public String paymentsDone(Locale locale, Model model) {

		return "payments-done";
	}
/*세영*/

}
