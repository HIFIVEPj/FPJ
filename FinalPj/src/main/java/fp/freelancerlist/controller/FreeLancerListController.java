package fp.freelancerlist.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import fp.freelancerlist.domain.List_FreeLancer;
import fp.freelancerlist.domain.List_PagingVO;
import fp.freelancerlist.service.FreeLancerListService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class FreeLancerListController {
		
	@RequestMapping("employer")
	public String employer() {
		return "freelancerlist/employer";
	}

	@Autowired
	private FreeLancerListService service;
	
	@GetMapping("freelancerList")
	public ModelAndView ProfileList(List_PagingVO vo
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
}
