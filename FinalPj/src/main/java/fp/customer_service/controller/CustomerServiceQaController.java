package fp.customer_service.controller;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import fp.corporation.domain.ProjectPick;
import fp.customer_service.domain.BoardAttachVO;
import fp.customer_service.domain.Criteria;
import fp.customer_service.domain.CustomerServiceQa;
import fp.customer_service.domain.PagingInfo;
import fp.customer_service.domain.Qa_recommend;
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
		int qa_cate_count_project = customerServiceQaService.qa_cate_count_projectS();
		int qa_cate_count_freemarket = customerServiceQaService.qa_cate_count_freemarketS();
		int qa_cate_count_freelancer = customerServiceQaService.qa_cate_count_freelancerS();
		int qa_cate_count_sign = customerServiceQaService.qa_cate_count_signS();
		int qa_cate_count_meminfo = customerServiceQaService.qa_cate_count_meminfoS();
		int qa_cate_count_payment = customerServiceQaService.qa_cate_count_paymentS();
		int qa_cate_count_discount = customerServiceQaService.qa_cate_count_discountS();
		int qa_cate_count_etc = customerServiceQaService.qa_cate_count_etcS();
		model.addAttribute("qa_list", customerServiceQaService.qa_listS(cri));
		model.addAttribute("pageMaker", new PagingInfo(cri, customerServiceQaService.qa_countS(cri), qa_cate_count_project, qa_cate_count_freemarket, qa_cate_count_freelancer, qa_cate_count_sign, qa_cate_count_meminfo, qa_cate_count_payment, qa_cate_count_discount, qa_cate_count_etc));
		return "customer_service/customer_service_qa";
	}

	
	@GetMapping("customer_service_qa_content")
	public String customer_service_qa_content(Model model, @RequestParam("qa_num") long qa_num, @RequestParam(value="mem_email", required=false) String mem_email_writer, HttpSession session) {
		//중간에 자기 게시글 조회수 증가 방지를 위해서 코드 추가했다가 꼬여서 아래와 같이 처리
		//jsp에서 받아온 mem_email은 글쓴이의 mem_email이어서 controller에서 mem_email_writer의 이름으로 씀
		//session - email은 mem_email로 씀
		//log.info("mem_email_writer : " + mem_email_writer);
		String mem_email = (String)session.getAttribute("email");
		//log.info("%%%%%sessionEmail : " + mem_email);
		if(mem_email != null) {
			List<Qa_recommend>qa_recommend_list = customerServiceQaService.qa_recommend_listS(mem_email);
			ArrayList<Long>qa_recommend_num_list  = new ArrayList<Long>();
			for(int j = 0; j < qa_recommend_list.size(); j++) {
				//pjnumList.add(pjplist.get(j).getPj_num());
				qa_recommend_num_list.add(qa_recommend_list.get(j).getQa_num());
			}
			//log.info("#####qa_recommend_list : " + qa_recommend_list);
			//log.info("#####qa_recommend_num_list : " + qa_recommend_num_list);	
			model.addAttribute("qa_recommend_list", qa_recommend_list);
			model.addAttribute("qa_recommend_num_list", qa_recommend_num_list);
		}		
		//mem_email_writer = mem_email_writer.trim();
		//log.info("%%%%%mem_email_writer : " + mem_email_writer);	
	
		if(mem_email == null) {
			customerServiceQaService.qa_vcntS(qa_num);
		}else if(!mem_email.equals(mem_email_writer)) { //자기 게시글 조회수 증가 방지
			customerServiceQaService.qa_vcntS(qa_num);
		}else {
		}
		
		model.addAttribute("qa_content", customerServiceQaService.qa_contentS(qa_num));	
		
		return "customer_service/customer_service_qa_content";
	}
	
	@RequestMapping(value="qa_recommend_insert", method=RequestMethod.GET)
	@ResponseBody
	public CustomerServiceQa qa_recommend_insert(@RequestParam long qa_num, @RequestParam String mem_email) {
		//log.info("!qa_num : " + qa_num + ", qa_recommnum : " + qa_recommnum + ", mem_email : " + mem_email);
		Map<String, Object>map = new HashMap<String, Object>();
		map.put("qa_num", qa_num);
		//map.put("qa_recommnum", qa_recommnum);
		map.put("mem_email", mem_email);
		customerServiceQaService.qa_recommend_insertS(map);
		//customerServiceQaService.qa_contentS(qa_num);
		//model.addAttribute("qa_content", customerServiceQaService.qa_contentS(qa_num));
		//log.info("!!qa_num : " + qa_num + ", qa_recommnum : " + qa_recommnum + ", mem_email : " + mem_email);
		//model.addAttribute("qa_content", customerServiceQaService.qa_contentS(qa_num));
		return customerServiceQaService.qa_contentS(qa_num);
		//long qa_recommnum = customerServiceQa.getQa_recommnum();
		//log.info("!!!!!qa_recommnum : " + qa_recommnum);
		//return qa_recommnum;
	}
		
	@RequestMapping(value="qa_recommend_del", method=RequestMethod.GET)
	@ResponseBody
	public CustomerServiceQa qa_recommend_del(@RequestParam long qa_num, @RequestParam String mem_email) {
		//log.info("$qa_num : " + qa_num + ", qa_recommnum : " + qa_recommnum + ", mem_email : " + mem_email);
		Map<String, Object>map = new HashMap<String, Object>();
		map.put("qa_num", qa_num);
		//map.put("qa_recommnum", qa_recommnum);
		map.put("mem_email", mem_email);
		customerServiceQaService.qa_recommend_delS(map);
		//customerServiceQaService.qa_contentS(qa_num);
		//customerServiceQaService.qa_recommend_update_delS(map);
		//model.addAttribute("qa_content", customerServiceQaService.qa_contentS(qa_num));
		//log.info("$$qa_num : " + qa_num + ", qa_recommnum : " + qa_recommnum + ", mem_email : " + mem_email);
		//model.addAttribute("qa_content", customerServiceQaService.qa_contentS(qa_num));
		return customerServiceQaService.qa_contentS(qa_num);
		//long qa_recommnum = customerServiceQa.getQa_recommnum();
		//log.info("@@@@@qa_recommnum : " + qa_recommnum);
		//return qa_recommnum;
		
	}
	
	/*
	@RequestMapping(value="qa_recommend_insert", method=RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> qa_recommend_insert(@RequestParam long qa_num, @RequestParam long qa_recommnum, @RequestParam String mem_email) {
		log.info("!qa_num : " + qa_num + ", qa_recommnum : " + qa_recommnum + ", mem_email : " + mem_email);
		Map<String, Object>map = new HashMap<String, Object>();
		map.put("qa_num", qa_num);
		map.put("qa_recommnum", qa_recommnum);
		map.put("mem_email", mem_email);
		return customerServiceQaService.qa_recommend_insertS(map);
		//log.info("!!qa_num : " + qa_num + ", qa_recommnum : " + qa_recommnum + ", mem_email : " + mem_email);
	}
		
	@RequestMapping(value="qa_recommend_del", method=RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> qa_recommend_del(@RequestParam long qa_num, @RequestParam long qa_recommnum, @RequestParam String mem_email) {
		log.info("$qa_num : " + qa_num + ", qa_recommnum : " + qa_recommnum + ", mem_email : " + mem_email);
		Map<String, Object>map = new HashMap<String, Object>();
		map.put("qa_num", qa_num);
		map.put("qa_recommnum", qa_recommnum);
		map.put("mem_email", mem_email);
		return customerServiceQaService.qa_recommend_delS(map);
		//log.info("$$qa_num : " + qa_num + ", qa_recommnum : " + qa_recommnum + ", mem_email : " + mem_email);
	}
	*/
	
	@GetMapping("customer_service_qa_write")
	public String customer_service_qa_write() {
		return "customer_service/customer_service_qa_write";
	}
	
	/*
	@PostMapping("customer_service_qa_write")
	public String customer_service_qa_write(CustomerServiceQa customerServiceQa) {
		customerServiceQaService.qa_writeS(customerServiceQa);
		return "redirect:customer_service_qa_content?qa_num="+ customerServiceQa.getQa_num();
	}
	*/
	@PostMapping("customer_service_qa_write")
	public String customer_service_qa_write(CustomerServiceQa customerServiceQa) {
		log.info("-------------------------------------------------");
		log.info("###write : " + customerServiceQa);
		if(customerServiceQa.getAttachList() != null) {
			customerServiceQa.getAttachList().forEach(attach -> log.info(attach));
		}
		log.info("-------------------------------------------------");
		customerServiceQaService.qa_writeS(customerServiceQa);
		return "redirect:customer_service_qa_content?qa_num="+customerServiceQa.getQa_num()+"&mem_email="+customerServiceQa.getMem_email();
	}
	
	@GetMapping(value = "/getAttachList", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public ResponseEntity<List<BoardAttachVO>> getAttachList(Long qa_num) {
		return new ResponseEntity<>(customerServiceQaService.getAttachList(qa_num), HttpStatus.OK);
	}
	
	/*
	@GetMapping("customer_service_qa_delete")
	public String customer_service_qa_delete(@RequestParam("qa_num") long qa_num) {
		customerServiceQaService.qa_deleteS(qa_num);
		return "redirect:customer_service_qa";
	}
	*/
	
	@GetMapping("customer_service_qa_delete")
	public String customer_service_qa_delete(@RequestParam("qa_num") Long qa_num, Criteria cri, RedirectAttributes rttr) {
		List<BoardAttachVO> attachList = customerServiceQaService.getAttachList(qa_num);
		if(customerServiceQaService.qa_deleteS(qa_num)) {
			// delete Attach Files
			deleteFiles(attachList);
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:customer_service_qa" + cri.getListLink();
		
		
	}
	
	private void deleteFiles(List<BoardAttachVO> attachList) {
	    
	    if(attachList == null || attachList.size() == 0) {
	      return;
	    }
	    
	    log.info("$$$$$$delete attach files");
	    log.info(attachList);
	    
	    attachList.forEach(attach -> {
	      try {
	    	String file_path_else = "C:\\upload\\"+attach.getUploadPath()+"\\" + attach.getUuid()+"_"+ attach.getFileName();
	    	//String file_path_else = "/home/ubuntu/hifive/upload/"+attach.getUploadPath()+"/" + attach.getUuid()+"_"+ attach.getFileName();  
	    	file_path_else = file_path_else.replace(" ", "");
	        Path file  = Paths.get(file_path_else);
	        log.info("*****file : " + file);
	        Files.deleteIfExists(file);
	        
	        if(Files.probeContentType(file).startsWith("image")) {
	          String file_path_image = "C:\\upload\\"+attach.getUploadPath()+"\\s_" + attach.getUuid()+"_"+ attach.getFileName();
	          //String file_path_image = "/home/ubuntu/hifive/upload/"+attach.getUploadPath()+"/s_" + attach.getUuid()+"_"+ attach.getFileName();
	          file_path_image = file_path_image.replace(" ", "");
	          Path thumbNail = Paths.get(file_path_image);
	          log.info("*****thumbNail" + thumbNail);
	          Files.delete(thumbNail);
	        }
	
	      }catch(Exception e) {
	        log.error("delete file error" + e.getMessage());
	      }
	    });
	}
	
	
	
	@GetMapping("customer_service_qa_modify")
	public String customer_service_qa_modify(Model model, @RequestParam("qa_num") long qa_num, @RequestParam(value="mem_email", required=false)String mem_email) {
		model.addAttribute("qa_content", customerServiceQaService.qa_contentS(qa_num));
		return "customer_service/customer_service_qa_modify";
	}

	@PostMapping("customer_service_qa_modify")
	public String customer_service_qa_modify(CustomerServiceQa customerServiceQa) {
		customerServiceQaService.qa_modifyS(customerServiceQa);
		return "redirect:customer_service_qa_content?qa_num="+ customerServiceQa.getQa_num() + "&mem_email=" + customerServiceQa.getMem_email();
	}
}
