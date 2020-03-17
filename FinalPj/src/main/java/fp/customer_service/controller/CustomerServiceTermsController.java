package fp.customer_service.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import lombok.extern.log4j.Log4j;

@Controller
public class CustomerServiceTermsController {
	/*
	@Autowired
	private CustomerServiceTermsService customerServiceTermsService;
	*/
	
	@RequestMapping("customer_service_terms_of_service")
	public String customer_service_terms_of_service() {
		return "customer_service/customer_service_terms_of_service";
	}@RequestMapping("customer_service_terms_of_personal_info")
	public String customer_service_terms_of_personal_info() {
		return "customer_service/customer_service_terms_of_personal_info";
	}

}
