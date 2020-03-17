package fp.freelancerlist.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import fp.corporation.domain.Corporation;
import fp.corporation.domain.ProjectPick;
import fp.corporation.service.CorporationService;
import fp.corporation.vo.ProjectVo;
import fp.freelancerlist.domain.FreeLancerListVO;
import fp.freelancerlist.domain.List_FreeLancer;
import fp.freelancerlist.domain.List_FreeLancerProfile;
import fp.freelancerprofile.domain.PagingVO;
import fp.freelancerlist.domain.List_PagingVO;
import fp.freelancerlist.domain.List_Type;
import fp.freelancerlist.service.FreeLancerListService;
import fp.freelancerprofile.domain.FreeLancer;
import fp.freelancerprofile.domain.FreeLancerPick;
import fp.freelancerprofile.domain.FreeLancerProfile;
import fp.freelancerprofile.domain.Freelancer_FreeLancerProfile;
import fp.freelancerprofile.domain.KeyWord;
import fp.freelancerprofile.domain.List_FreeLancerReview;
import fp.freelancerprofile.domain.Project;
import fp.freelancerprofile.domain.Type;
import fp.freelancerprofile.service.FreeLancerProfileService;
import fp.market.domain.Member;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class FreeLancerListController {
		
	//List_FreeLancerProfile lifp;
	@Autowired
	private FreeLancerListService service;
	
	@Autowired
	private CorporationService corService;
	@Autowired
	private FreeLancerProfileService proService;
	
	@GetMapping("freelancerList")
	public ModelAndView FreelnacerList(PagingVO vo, FreeLancerListVO listVo, FreeLancerProfile freelancerprofile, HttpServletRequest request
						, @RequestParam(value="nowPage", required=false)String nowPage
						, @RequestParam(value="cntPerPage", required=false)String cntPerPage){

		HttpSession session = request.getSession();
		String mem_email= (String)session.getAttribute("email");

		int total = service.countFreeLancer();
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
		if(mem_email != null) {
			Corporation cor = corService.mydash_cor_select(mem_email);
			if(cor != null) {
				List<FreeLancerPick> freeplist = proService.freepick_list(cor.getCor_code());
				ArrayList<Long>pronumList  = new ArrayList<Long>();
				for(int j=0; j<freeplist.size(); j++) {
					pronumList.add(freeplist.get(j).getPRO_NUM());
				}
				mv.addObject("cor", cor);
				mv.addObject("freeplist",freeplist);
				mv.addObject("pronumList",pronumList);
			}
		}
		mv.addObject("paging", vo);
		mv.addObject("freelancerList", freelancerList);
		mv.addObject("freelancerList2", freelancerList2);
		mv.addObject("freelancerList3", freelancerList3);
		
		return mv;
		
	}
	@RequestMapping("freelancercontent") 
	@ResponseBody
	public ModelAndView FreelnacerContent(@RequestParam long free_code, @RequestParam long pro_num
											, @RequestParam(value="nowPage", required=false)String nowPage
											, @RequestParam(value="cntPerPage", required=false)String cntPerPage){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("free_code", free_code);
		map.put("pro_num", pro_num);
		
		List<Freelancer_FreeLancerProfile> content = service.freelancercontent(map);
		List<Freelancer_FreeLancerProfile> content2 = service.freelancercontent2(free_code);	
		List<Freelancer_FreeLancerProfile> content3 = service.freelancercontent3(free_code);
		List<Type> content4 = service.freelancercontent4(free_code);
		List<Project> content5 = service.freelancercontent5(free_code);
		
		//프로필 조회수//
		service.vcnt(pro_num);
		List<List_FreeLancerReview> review_content = service.selectStar(free_code);
		
		ModelAndView mv = new ModelAndView("freelancer/freelancercontent");
		
		mv.addObject("content", content);
		mv.addObject("content2", content2);
		mv.addObject("content3", content3);
		mv.addObject("content4", content4);	
		mv.addObject("content5", content5);	
		mv.addObject("star", review_content);	
		
		//리뷰//
		
		long total =  service.countReview(map);
		
		if(nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "1";
		}else if(nowPage == null) {
			nowPage="1";
		}else if(cntPerPage ==null) {
			cntPerPage="1";
		}
	
		List_FreeLancerReview freelancerreview = new List_FreeLancerReview(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage),free_code,pro_num);	
		log.info("(((freelancerreview: " + freelancerreview);
		
		List<List_FreeLancerReview> review = service.freelancerReview(freelancerreview);
	
		Map<String,String> fnames= new HashMap<String,String>();
		
		for(int i=0; i<review.size();i++) {
			List<FreeLancer> freelancer = service.selectFile(review.get(i).getMem_email());
			fnames.put("free_fname",freelancer.get(i).getFree_fname());
			fnames.put("mem_email",freelancer.get(i).getMem_email());
		}
		log.info("@#@#@#@#@#"+fnames);
		mv.addObject("fnames", fnames);	
		mv.addObject("review", review);	
		mv.addObject("paging", freelancerreview);
		return mv;
	}
	@RequestMapping(value="freelancercontent_ajax", method=RequestMethod.GET)
	@ResponseBody
	public ModelAndView freelancercontent_ajax(@RequestParam long free_code, @RequestParam long pro_num
			, @RequestParam(value="nowPage", required=false)String nowPage
			, @RequestParam(value="cntPerPage", required=false)String cntPerPage){

		
		if(nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "1";
		}else if(nowPage == null) {
			nowPage="1";
		}else if(cntPerPage ==null) {
			cntPerPage="1";
		}
		
		Map<String,Object>map = new HashMap<String, Object>();

		if(free_code == 0) {			
			map.put("free_code",0);
		}else {
			map.put("free_code",free_code);
		}
		if(pro_num == 0) {			
			map.put("pro_num",0);
		}else {
			map.put("pro_num",pro_num);
		}
		if(nowPage==null) {			
			map.put("nowPage",null);
		}else {
			map.put("nowPage",nowPage);
		}
		if(cntPerPage==null) {			
			map.put("cntPerPage",null);
		}else {
			map.put("cntPerPage",cntPerPage);
		}

		
		long total =  service.countReview(map);
		List_FreeLancerReview freelancerreview = new List_FreeLancerReview(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage),free_code,pro_num);	
		log.info("(((freelancerreview: " + freelancerreview);
		log.info("(((map: " + map);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("jsonView");


		List<List_FreeLancerReview> review_ajax = service.freelancerReview(freelancerreview);
		
		Map<String,String> fnames= new HashMap<String,String>();
		
		for(int i=0; i<review_ajax.size();i++) {
			List<FreeLancer> freelancer = service.selectFile(review_ajax.get(i).getMem_email());
			fnames.put("free_fname",freelancer.get(i).getFree_fname());
			fnames.put("mem_email",freelancer.get(i).getMem_email());
		}
		
		mv.addObject("fnames", fnames);	
		mv.addObject("review_ajax", review_ajax);	
		mv.addObject("freelancerreview", freelancerreview);
		mv.addObject("paging", map);
		
		log.info("**review_ajax: "+review_ajax);
		log.info("**fnames: "+fnames);
		return mv;

	}
	
	@RequestMapping(value="InsertReview", method=RequestMethod.POST)
	@ResponseBody
	public void freelancerReview_write(List_FreeLancerReview freelancerreview
										, @RequestParam(value="cont", required=false) String cont
										, @RequestParam(value="freerev_star", required=false) int freerev_star
										, @RequestParam(value="fcode", required=false) long fcode
										, @RequestParam(value="pnum", required=false) long pnum
										, @RequestParam(value="mem_email", required=false) String mem_email) {
		Map<String,Object>map = new HashMap<String, Object>();
		if(cont==null) {			
			map.put("cont",null);
		}else {
			map.put("cont",cont);
		}
		if(freerev_star==0) {		
			map.put("freerev_star",null);
		}else {
			map.put("freerev_star",freerev_star);
		}
		if(cont==null) {			
			map.put("fcode",null);
		}else {
			map.put("fcode",fcode);
		}
		if(cont==null) {			
			map.put("pnum",null);
		}else {
			map.put("pnum",pnum);
		}
		if(cont==null) {			
			map.put("mem_email",null);
		}else {
			map.put("mem_email",mem_email);
		}
	   service.reviewInsert(map);
	  
	}
	@GetMapping("review_del") 
	@ResponseBody
	public String reviewDelete( @RequestParam(value="freerev_num", required=false) long freerev_num
												, List_FreeLancerReview freelancerreview){
		service.reviewDelete(freerev_num);
		return "redirect:freelancercontent?free_code="+freelancerreview.getFree_code()+"&pro_num="+freelancerreview.getPro_num();
	}
	
	@RequestMapping(value="reviewUpdate", method=RequestMethod.POST)
	@ResponseBody
	public void freelancerReview_Update(long freerev_num, String review_cont,  @RequestParam(value="review_star", required=false)int review_star){
		log.info("@@@@@@@@@@@1");
		Map<String,Object>map = new HashMap<String, Object>();
		if(review_cont==null) {			
			map.put("review_cont",null);
		}else {
			map.put("review_cont",review_cont);
		}
		if(review_star==0) {			
			map.put("review_star",0);
		}else {
			map.put("review_star",review_star);
		}

	   service.reviewUpdate(map);
	   
	}
	
	
	
	//찜하기 버튼 구현
	@RequestMapping(value="/free_wish", method=RequestMethod.GET)
	@ResponseBody
	public void free_wish(@RequestParam long pro_num, @RequestParam long cor_code) {
		//log.info("@#&@(&$ pj_num: "+pj_num+", free_code: "+free_code);
		Map<String,Object>map = new HashMap<String, Object>();
		map.put("pro_num",pro_num);
		map.put("cor_code", cor_code);
		proService.freepick_insert(map);
	}
	@RequestMapping(value="/free_wish_del", method=RequestMethod.GET)
	@ResponseBody
	public void free_wish_del(@RequestParam long pro_num, @RequestParam long cor_code) {
		Map<String, Object>map = new HashMap<String, Object>();
		map.put("pro_num", pro_num);
		map.put("cor_code", cor_code);
		proService.freepick_del(map);
	}
	


}
