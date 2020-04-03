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
public class CustomerServiceContactController {
	/*
	@Autowired
	private CustomerServiceContactService customerServiceContactService;
	*/
	
	@RequestMapping("customer_service_contact")
	public String customer_service_contact() {
		return "customer_service/customer_service_contact";
	}
	
	@RequestMapping("customer_service_intro")
	public String customer_service_intro() {
		return"customer_service/customer_service_intro";
	}
}
