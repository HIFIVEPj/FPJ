package fp.customer_service.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import fp.customer_service.domain.CustomerServiceFaq;
import fp.customer_service.service.CustomerServiceFaqService;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class CustomerServiceFaqController {

	@Autowired
	private CustomerServiceFaqService customerServiceFaqService;

	@RequestMapping("customer_service_faq")
	public String customer_service_faq(Model model) {
		model.addAttribute("faq_list", customerServiceFaqService.faq_listS());
		
		model.addAttribute("faq_cate_count_project", customerServiceFaqService.faq_cate_count_projectS());
		model.addAttribute("faq_cate_count_freemarket", customerServiceFaqService.faq_cate_count_freemarketS());
		model.addAttribute("faq_cate_count_freelancer", customerServiceFaqService.faq_cate_count_freelancerS());
		model.addAttribute("faq_cate_count_sign", customerServiceFaqService.faq_cate_count_signS());
		model.addAttribute("faq_cate_count_meminfo", customerServiceFaqService.faq_cate_count_meminfoS());
		model.addAttribute("faq_cate_count_payment", customerServiceFaqService.faq_cate_count_paymentS());
		model.addAttribute("faq_cate_count_discount", customerServiceFaqService.faq_cate_count_discountS());
		model.addAttribute("faq_cate_count_etc", customerServiceFaqService.faq_cate_count_etcS());		
		
		return "customer_service/customer_service_faq";
	}

	@GetMapping("customer_service_faq_write")
	public String customer_service_faq_write() {
		return "customer_service/customer_service_faq_write";
	}
	
	@PostMapping("customer_service_faq_write")
	public String customer_service_faq_write(CustomerServiceFaq customerServiceFaq) {
		customerServiceFaqService.faq_writeS(customerServiceFaq);
		return "redirect:customer_service_faq?faq_num="+ customerServiceFaq.getFaq_num();
	}
	
	@GetMapping("customer_service_faq_delete")
	public String customer_service_faq_delete(@RequestParam("faq_num") long faq_num) {
		customerServiceFaqService.faq_deleteS(faq_num);
		return "redirect:customer_service_faq";
	}
	
	@GetMapping("customer_service_faq_modify")
	public String customer_service_faq_modify(Model model, @RequestParam("faq_num") long faq_num) {
		model.addAttribute("faq_content", customerServiceFaqService.faq_contentS(faq_num));
		return "customer_service/customer_service_faq_modify";
	}

	@PostMapping("customer_service_faq_modify")
	public String customer_service_faq_modify(CustomerServiceFaq customerServiceFaq) {
		customerServiceFaqService.faq_modifyS(customerServiceFaq);
		//return "redirect:customer_service_faq?faq_num="+ customerServiceFaq.getFaq_num();
		return "redirect:customer_service_faq";
	}

}
