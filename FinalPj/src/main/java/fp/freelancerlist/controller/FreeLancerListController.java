package fp.freelancerlist.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import fp.freelancerprofile.domain.FreeLancer;
import fp.freelancerprofile.domain.PagingVO;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class FreeLancerListController {
/*
	@GetMapping("freelancerList")
	public ModelAndView ProfileList(PagingVO vo
						, @RequestParam(value="nowPage", required=false)String nowPage
						, @RequestParam(value="cntPerPage", required=false)String cntPerPage){
		int total = service.countProfileList();
			if(nowPage == null && cntPerPage == null) {
				nowPage = "1";
				cntPerPage = "4";
			}else if(nowPage == null) {
				nowPage="1";
			}else if(cntPerPage ==null) {
				cntPerPage="4";
			}
		vo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));	
		   
		List<FreeLancer> profile_list = service.selectPageList(vo);
		ModelAndView mv = new ModelAndView("profile/freelancerProfile_list");
		mv.addObject("paging", vo);
		mv.addObject("freelancer_list", freelancer_list);

		return mv;
	}*/
}
