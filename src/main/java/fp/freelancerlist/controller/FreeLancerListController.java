package fp.freelancerlist.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import fp.corporation.domain.Corporation;
import fp.freelancerlist.domain.FreeLancerListVO;
import fp.freelancerlist.domain.List_FreeLancer;
import fp.freelancerlist.domain.List_FreeLancerProfile;
import fp.freelancerprofile.domain.List_FreeLancerReview;
import fp.freelancerprofile.domain.PagingVO;
import fp.freelancerlist.domain.List_PagingVO;
import fp.freelancerlist.domain.List_Type;
import fp.freelancerlist.service.FreeLancerListService;
import fp.freelancerprofile.domain.FreeLancer;
import fp.freelancerprofile.domain.FreeLancerProfile;
import fp.freelancerprofile.domain.Freelancer_FreeLancerProfile;
import fp.freelancerprofile.domain.KeyWord;
import fp.freelancerprofile.domain.Project;
import fp.freelancerprofile.domain.Type;
import fp.market.domain.Member;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class FreeLancerListController {
		
	List_FreeLancerProfile lifp;
	@Autowired
	private FreeLancerListService service;
	
	@GetMapping("freelancerList")
	public ModelAndView FreelnacerList(PagingVO vo, FreeLancerListVO listVo, FreeLancerProfile freelancerprofile
						, @RequestParam(value="nowPage", required=false)String nowPage
						, @RequestParam(value="cntPerPage", required=false)String cntPerPage){


		long total = service.countFreeLancer();

			if(nowPage == null && cntPerPage == null) {
				nowPage = "1";
				cntPerPage = "4";
			}else if(nowPage == null) {
				nowPage="1";
			}else if(cntPerPage ==null) {
				cntPerPage="4";
			}
		vo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));	
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("PagingVo", vo);
		map.put("free_code", freelancerprofile.getFree_code());
		   
		List<List_FreeLancer> freelancerList = service.SelectList(map);		
		List<List_FreeLancerProfile> freelancerList2 = service.SelectList2();
		List<Project> freelancerList3 = service.SelectList3();
		ModelAndView mv = new ModelAndView("freelancer/freelancerList");
		mv.addObject("paging", vo);
		mv.addObject("freelancerList", freelancerList);
		mv.addObject("freelancerList2", freelancerList2);
		mv.addObject("freelancerList3", freelancerList3);
		return mv;
	}
	
	/*		//프리랜서 리스트 컨텐츠//
	@GetMapping("freelancercontent") 
	public ModelAndView FreelnacerContent(long free_code){
		List<Freelancer_FreeLancerProfile> content = service.freelancercontent(free_code);
		List<Freelancer_FreeLancerProfile> content2 = service.freelancercontent2(free_code);	
		List<Freelancer_FreeLancerProfile> content3 = service.freelancercontent3(free_code);
		List<Type> content4 = service.freelancercontent4(free_code);
		List<Project> content5 = service.freelancercontent5(free_code);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("freelancer/freelancercontent");
		mv.addObject("content", content);
		mv.addObject("content2", content2);
		mv.addObject("content3", content3);
		mv.addObject("content4", content4);	
		mv.addObject("content5", content5);	
		 
		return mv;
	}*/
	
	@RequestMapping("freelancercontent") 
	public ModelAndView FreelnacerContent(@RequestParam long free_code
											, List_FreeLancerReview freelancerreview, Member member
											, @RequestParam(value="nowPage", required=false)String nowPage
											, @RequestParam(value="cntPerPage", required=false)String cntPerPage){
		
		List<Freelancer_FreeLancerProfile> content = service.freelancercontent(free_code);
		List<Freelancer_FreeLancerProfile> content2 = service.freelancercontent2(free_code);	
		List<Freelancer_FreeLancerProfile> content3 = service.freelancercontent3(free_code);
		List<Type> content4 = service.freelancercontent4(free_code);
		List<Project> content5 = service.freelancercontent5(free_code);
		
		//프로필 조회수//
		service.vcnt(freelancerreview.getPro_num());
		List<List_FreeLancerReview> review_content = service.selectStar(freelancerreview.getFree_code());
		
		ModelAndView mv = new ModelAndView("freelancer/freelancercontent");

		mv.addObject("content", content);
		mv.addObject("content2", content2);
		mv.addObject("content3", content3);
		mv.addObject("content4", content4);	
		mv.addObject("content5", content5);	
		mv.addObject("star", review_content);	
		//리뷰//
		int total = service.countReview();
		if(nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "1";
		}else if(nowPage == null) {
			nowPage="1";
		}else if(cntPerPage ==null) {
			cntPerPage="1";
		}
	
		member = new Member(member.getMem_name());
		freelancerreview = new List_FreeLancerReview(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage),freelancerreview.getFree_code(),freelancerreview.getPro_num());	
		log.info("(((freelancerreview: " + freelancerreview);
		List<List_FreeLancerReview> review = service.freelancerReview(freelancerreview);
		mv.addObject("member", member);	
		mv.addObject("review", review);	
		mv.addObject("paging", freelancerreview);
		return mv;
	}

	@PostMapping("freelancercontent")
	public String freelancerReview_write(List_FreeLancerReview freelancerreview) {
		

	
	   service.reviewInsert(freelancerreview);
	   service.reviewUpdate(freelancerreview.getFreerev_num());
	   return "redirect:freelancercontent?free_code="+freelancerreview.getFree_code()+"&pro_num="+freelancerreview.getPro_num();
	   }

	
	@GetMapping("review_del") 
	public String reviewDelete(long freerev_num){
		service.reviewDelete(freerev_num);
		return "null";
	}

}
