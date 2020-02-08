package fp.customer_service.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import fp.customer_service.domain.CustomerServiceNotice;
import fp.customer_service.service.CustomerServiceNoticeService;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class CustomerServiceNoticeController {
	@Autowired
	private CustomerServiceNoticeService customerServiceNoticeService;
	
	/*
	@RequestMapping("customer_service_list")
	public String customer_service_list() {
		return "customer_service/customer_service_list";
	}
	*/
	
	/*
	@RequestMapping("customer_service_notice")
	public ModelAndView customer_service_notice() {
		List<CustomerServiceNotice> notice_list = customerServiceNoticeService.notice_listS();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("customer_service/customer_service_notice");
		mv.addObject("notice_list", notice_list);
		
		return mv;
	}
	*/
	
	@RequestMapping("customer_service_notice")
	public String customer_service_notice(Model model) {
		model.addAttribute("notice_list", customerServiceNoticeService.notice_listS());
		return "customer_service/customer_service_notice";
	}
	
	@GetMapping("customer_service_notice_content")
	public String customer_service_notice_content(Model model, @RequestParam("notice_num") long notice_num) {
		customerServiceNoticeService.notice_countS(notice_num);
		model.addAttribute("notice_content", customerServiceNoticeService.notice_contentS(notice_num));
		return "customer_service/customer_service_notice_content";
	}
	/*
	@GetMapping("customer_service_notice_content")
	public String customer_service_notice_content(Model model, CustomerServiceNotice csn) {
		model.addAttribute("notice_content", customerServiceNoticeService.notice_contentS(csn.getNotice_num()));
		return "customer_service/customer_service_notice_content";
	}
	*/
	
	
	
	@GetMapping("customer_service_notice_write")
	public String customer_service_notice_write() {
		return "customer_service/customer_service_notice_write";
	}

	@PostMapping("customer_service_notice_write")
	public String customer_service_notice_write(CustomerServiceNotice customerServiceNotice) {
		customerServiceNoticeService.notice_writeS(customerServiceNotice);
		return "redirect:customer_service_notice_content?notice_num="+ customerServiceNotice.getNotice_num();
	}
	
	@GetMapping("customer_service_notice_delete")
	public String customer_service_notice_delete(@RequestParam("notice_num") long notice_num) {
		customerServiceNoticeService.notice_deleteS(notice_num);
		return "redirect:customer_service_notice";
	}
	

	@RequestMapping("customer_service_qna")
	public String customer_service_qna() {
		return "customer_service/customer_service_qna";
	}
	@RequestMapping("customer_service_qna_content")
	public String customer_service_qna_content() {
		return "customer_service/customer_service_qna_content";
	}
	@RequestMapping("customer_service_qna_write")
	public String customer_service_qna_write() {
		return "customer_service/customer_service_qna_write";
	}	
	
	@RequestMapping("customer_service_faq")
	public String customer_service_faq() {
		return "customer_service/customer_service_faq";
	}
	
	@RequestMapping("customer_service_terms_of_service")
	public String customer_service_terms_of_service() {
		return "customer_service/customer_service_terms_of_service";
	}@RequestMapping("customer_service_terms_of_personal_info")
	public String customer_service_terms_of_personal_info() {
		return "customer_service/customer_service_terms_of_personal_info";
	}

}
