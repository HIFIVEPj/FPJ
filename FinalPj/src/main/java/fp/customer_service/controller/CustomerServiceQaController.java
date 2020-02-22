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

import fp.customer_service.domain.Criteria;
import fp.customer_service.domain.CustomerServicePagingVO;
import fp.customer_service.domain.CustomerServiceQa;
import fp.customer_service.domain.PagingInfo;
import fp.customer_service.service.CustomerServiceQaService;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class CustomerServiceQaController {
	@Autowired
	private CustomerServiceQaService customerServiceQaService;
	
	/*
	@RequestMapping("customer_service_qa")
	public String customer_service_qa(Model model) {
		model.addAttribute("qa_list", customerServiceQaService.qa_listS());
		return "customer_service/customer_service_qa";
	}
	*/
	/*
	@GetMapping("customer_service_qa")
	public String customer_service_qa(CustomerServicePagingVO customerServicePagingVO, Model model
			, @RequestParam(value="nowPage", required=false)String nowPage
			, @RequestParam(value="cntPerPage", required=false)String cntPerPage) {
		
		int total = customerServiceQaService.qa_countS();
		int qa_cate_count_project = customerServiceQaService.qa_cate_count_projectS();
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "10";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) { 
			cntPerPage = "10";
		}
		customerServicePagingVO = new CustomerServicePagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), qa_cate_count_project);
		model.addAttribute("paging", customerServicePagingVO);
		model.addAttribute("qa_list", customerServiceQaService.qa_listS(customerServicePagingVO));
		return "customer_service/customer_service_qa";
	}
	*/
	
	@GetMapping("customer_service_qa") // 게시판 호출(게시판글 리스트와 페이징정보)
	public String customer_service_qa(Criteria cri, Model model) {
		model.addAttribute("qa_list", customerServiceQaService.qa_listS(cri));
		model.addAttribute("pageMaker", new PagingInfo(cri, customerServiceQaService.qa_countS(cri)));
		return "customer_service/customer_service_qa";
	}

	
	@GetMapping("customer_service_qa_content")
	public String customer_service_qa_content(Model model, @RequestParam("qa_num") long qa_num) {
		customerServiceQaService.qa_vcntS(qa_num);
		model.addAttribute("qa_content", customerServiceQaService.qa_contentS(qa_num));
		return "customer_service/customer_service_qa_content";
	}
	
	@GetMapping("customer_service_qa_write")
	public String customer_service_qa_write() {
		return "customer_service/customer_service_qa_write";
	}

	@PostMapping("customer_service_qa_write")
	public String customer_service_qa_write(CustomerServiceQa customerServiceQa) {
		customerServiceQaService.qa_writeS(customerServiceQa);
		return "redirect:customer_service_qa_content?qa_num="+ customerServiceQa.getQa_num();
	}
	
	@GetMapping("customer_service_qa_delete")
	public String customer_service_qa_delete(@RequestParam("qa_num") long qa_num) {
		customerServiceQaService.qa_deleteS(qa_num);
		return "redirect:customer_service_qa";
	}
	
	@GetMapping("customer_service_qa_modify")
	public String customer_service_qa_modify(Model model, @RequestParam("qa_num") long qa_num) {
		model.addAttribute("qa_content", customerServiceQaService.qa_contentS(qa_num));
		return "customer_service/customer_service_qa_modify";
	}

	@PostMapping("customer_service_qa_modify")
	public String customer_service_qa_modify(CustomerServiceQa customerServiceQa) {
		customerServiceQaService.qa_modifyS(customerServiceQa);
		return "redirect:customer_service_qa_content?qa_num="+ customerServiceQa.getQa_num();
	}
}
