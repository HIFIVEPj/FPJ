package fp.freelancerlist.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import fp.freelancerlist.domain.FreeLancerListVO;
import fp.freelancerlist.domain.List_FreeLancer;
import fp.freelancerlist.domain.List_FreeLancerProfile;
import fp.freelancerlist.domain.List_PagingVO;
import fp.freelancerlist.domain.List_Type;
import fp.freelancerlist.service.FreeLancerListService;
import fp.freelancerprofile.domain.FreeLancer;
import fp.freelancerprofile.domain.FreeLancerProfile;
import fp.freelancerprofile.domain.Freelancer_FreeLancerProfile;
import fp.freelancerprofile.domain.KeyWord;
import fp.freelancerprofile.domain.Project;
import fp.freelancerprofile.domain.Type;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class FreeLancerListController {
		
	List_FreeLancerProfile lifp;
	@Autowired
	private FreeLancerListService service;
	
	@GetMapping("freelancerList")
	public ModelAndView ProfileList(List_PagingVO vo, FreeLancerListVO listVo
						, @RequestParam(value="nowPage", required=false)String nowPage
						, @RequestParam(value="cntPerPage", required=false)String cntPerPage){

		int total = service.countFreeLancer();
			if(nowPage == null && cntPerPage == null) {
				nowPage = "1";
				cntPerPage = "4";
			}else if(nowPage == null) {
				nowPage="1";
			}else if(cntPerPage ==null) {
				cntPerPage="4";
			}
		vo = new List_PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));	
		   
		List<List_FreeLancer> freelancerList = service.SelectList(vo);		
		
		ModelAndView mv = new ModelAndView("freelancerlist/freelancerList");
		mv.addObject("paging", vo);
		mv.addObject("freelancerList", freelancerList);

		return mv;
	}
	@PostMapping("freelancerList")
	public ModelAndView ProfileList2(@RequestParam long free_code) {
		
		List<List_FreeLancerProfile> freelancerList2 = service.SelectList2 (free_code);
		ModelAndView mv = new ModelAndView("freelancerlist/freelancerList");
		mv.addObject("pjsubNtype", freelancerList2);
		
		return mv;
	}
	//프리랜서 리스트 컨텐츠//
	@GetMapping("freelancercontent") 
	public ModelAndView ProFileContent(long free_code){
		List<Freelancer_FreeLancerProfile> content = service.freelancercontent(free_code);
		List<Freelancer_FreeLancerProfile> content2 = service.freelancercontent2(free_code);	
		List<Freelancer_FreeLancerProfile> content3 = service.freelancercontent3(free_code);
		List<Type> content4 = service.freelancercontent4(free_code);
		List<Project> content5 = service.freelancercontent5(free_code);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("freelancerlist/freelancercontent");
		mv.addObject("content", content);
		mv.addObject("content2", content2);
		mv.addObject("content3", content3);
		mv.addObject("content4", content4);	
		mv.addObject("content5", content5);	
		
		return mv;
	}
	
	/*@GetMapping("del") 
	public ModelAndView DeleteCont(long free_code){

	}*/
}
