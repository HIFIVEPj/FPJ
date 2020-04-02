package fp.customer_service.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import fp.customer_service.domain.CustomerServiceNotice;
import fp.customer_service.domain.Notice_recommend;
import fp.customer_service.service.CustomerServiceNoticeService;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class CustomerServiceNoticeController {
	@Autowired
	private CustomerServiceNoticeService customerServiceNoticeService;

	
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
	
	/*
	@GetMapping("customer_service_notice_content")
	public String customer_service_notice_content(Model model, CustomerServiceNotice csn) {
		model.addAttribute("notice_content", customerServiceNoticeService.notice_contentS(csn.getNotice_num()));
		return "customer_service/customer_service_notice_content";
	}
	*/
	/*
	@GetMapping("customer_service_notice_content")
	public String customer_service_notice_content(Model model, @RequestParam("notice_num") long notice_num) {
		customerServiceNoticeService.notice_countS(notice_num);
		model.addAttribute("notice_content", customerServiceNoticeService.notice_contentS(notice_num));
		return "customer_service/customer_service_notice_content";
	}
	*/
	
	@GetMapping("customer_service_notice_content")
	public String customer_service_notice_content(Model model, @RequestParam("notice_num") long notice_num, @RequestParam(value="mem_email", required=false) String mem_email_writer, HttpSession session) {
		
		//중간에 자기 게시글 조회수 증가 방지를 위해서 코드 추가했다가 꼬여서 아래와 같이 처리
				//jsp에서 받아온 mem_email은 글쓴이의 mem_email이어서 controller에서 mem_email_writer의 이름으로 씀
				//session - email은 mem_email로 씀
				//log.info("mem_email_writer : " + mem_email_writer);
		String mem_email = (String)session.getAttribute("email");
		
		if(mem_email != null) {		
			List<Notice_recommend>notice_recommend_list = customerServiceNoticeService.notice_recommend_listS(mem_email);
			log.info("%%%mem_email : " + mem_email);
			ArrayList<Long>notice_recommend_num_list  = new ArrayList<Long>();
			for(int j = 0; j < notice_recommend_list.size(); j++) {
				notice_recommend_num_list.add(notice_recommend_list.get(j).getNotice_num());
			}
			log.info("#####notice_recommend_list : " + notice_recommend_list);
			log.info("#####notice_recommend_num_list : " + notice_recommend_num_list);
			model.addAttribute("notice_recommend_list", notice_recommend_list);
			model.addAttribute("notice_recommend_num_list", notice_recommend_num_list);
		}
		
		if(mem_email == null) {
			customerServiceNoticeService.notice_countS(notice_num);
		}else if(!mem_email.equals(mem_email_writer)) { //자기 게시글 조회수 증가 방지
			customerServiceNoticeService.notice_countS(notice_num);
		}else {
		}
		
		/*
		String sessionEmail = (String)session.getAttribute("email");
		if(sessionEmail != null) {
			sessionEmail = sessionEmail.trim();
		}
		mem_email = mem_email.trim();
		log.info("%%%%%mem_email : " + mem_email);
		log.info("%%%%%sessionEmail : " + sessionEmail);
		if (sessionEmail != null) {
			if(!mem_email.equals(sessionEmail)) { //자기 게시글 조회수 증가 방지
				customerServiceNoticeService.notice_countS(notice_num);
			}else {	
			}
		}else {
			customerServiceNoticeService.notice_countS(notice_num);
		}
		*/
		
		model.addAttribute("notice_content", customerServiceNoticeService.notice_contentS(notice_num));
		//model.addAttribute("notice_recommend_list", notice_recommend_list);
		//model.addAttribute("notice_recommend_num_list", notice_recommend_num_list);
		return "customer_service/customer_service_notice_content";
	}
	
	@RequestMapping(value="notice_recommend_insert", method=RequestMethod.GET)
	@ResponseBody
	public CustomerServiceNotice notice_recommend_insert(@RequestParam long notice_num, @RequestParam String mem_email) {
		Map<String, Object>map = new HashMap<String, Object>();
		map.put("notice_num", notice_num);
		map.put("mem_email", mem_email);
		customerServiceNoticeService.notice_recommend_insertS(map);
		return customerServiceNoticeService.notice_contentS(notice_num);
	}
		
	@RequestMapping(value="notice_recommend_del", method=RequestMethod.GET)
	@ResponseBody
	public CustomerServiceNotice notice_recommend_del(@RequestParam long notice_num, @RequestParam String mem_email) {
		Map<String, Object>map = new HashMap<String, Object>();
		map.put("notice_num", notice_num);
		map.put("mem_email", mem_email);
		customerServiceNoticeService.notice_recommend_delS(map);
		return customerServiceNoticeService.notice_contentS(notice_num);
		
	}
	
	@GetMapping("customer_service_notice_write")
	public String customer_service_notice_write() {
		return "customer_service/customer_service_notice_write";
	}

	@PostMapping("customer_service_notice_write")
	public String customer_service_notice_write(CustomerServiceNotice customerServiceNotice) {
		customerServiceNoticeService.notice_writeS(customerServiceNotice);
		return "redirect:customer_service_notice_content?notice_num=" + customerServiceNotice.getNotice_num() + "&mem_email=" + customerServiceNotice.getMem_email();
	}
	
	/*
	@PostMapping("customer_service_notice_delete")
	*/
	@GetMapping("customer_service_notice_delete")
	public String customer_service_notice_delete(@RequestParam("notice_num") long notice_num) {
		customerServiceNoticeService.notice_deleteS(notice_num);
		return "redirect:customer_service_notice";
	}
	
	@GetMapping("customer_service_notice_modify")
	public String customer_service_notice_modify(Model model, @RequestParam("notice_num") long notice_num) {
		model.addAttribute("notice_content", customerServiceNoticeService.notice_contentS(notice_num));
		return "customer_service/customer_service_notice_modify";
	}

	@PostMapping("customer_service_notice_modify")
	public String customer_service_notice_modify(CustomerServiceNotice customerServiceNotice) {
		customerServiceNoticeService.notice_modifyS(customerServiceNotice);
		return "redirect:customer_service_notice_content?notice_num="+ customerServiceNotice.getNotice_num() + "&mem_email=" + customerServiceNotice.getMem_email();
	}

}
