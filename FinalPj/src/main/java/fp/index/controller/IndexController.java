package fp.index.controller;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import fp.corporation.domain.Project;
import fp.corporation.service.CorporationService;
import fp.corporation.service.ProjectService;
import fp.corporation.vo.ProjectVo;
import fp.freelancerlist.domain.List_FreeLancer;
import fp.freelancerlist.domain.List_FreeLancerProfile;
import fp.freelancerlist.service.FreeLancerListService;
import fp.freelancerprofile.domain.Freelancer_FreeLancerProfile;
import fp.freelancerprofile.domain.List_FreeLancerReview;
import fp.freelancerprofile.service.FreeLancerProfileService;
import fp.market.controller.MarketController;
import fp.market.domain.Market;
import fp.market.domain.MarketPick;
import fp.market.service.MarketService;
import fp.market.utils.MarketPagingVO;
import fp.member.domain.MemberVo;
import fp.member.service.MemberService;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class IndexController {
	@Autowired
	MarketService marketService;
	@Autowired
	ProjectService pjService;
	@Autowired	
	MemberService memberService;
	@Autowired
    FreeLancerListService freeService;
    @Autowired
    FreeLancerProfileService free_pro_service;
    @Autowired
    CorporationService corService;
    @Autowired
    FreeLancerProfileService proService;
	
	@RequestMapping("construction")
	public String construction() {
		return "construction";
	}
/*	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(Locale locale, Model model) {	
		return "index";

	}*/

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView index(HttpSession session){
		
		//마켓총결제금액		
		long sumCountCorIndex =memberService.sumCountCorIndex();	//Index 
	    long countFree=memberService.countFree();
		int marketTotal = marketService.getMarketCount();		
		
		
		HashMap<String,Object> Pagingmap = new  HashMap<String,Object>();//mybatis 쿼리 파라미터
		//프로젝트 시작
	      HashMap<String,Object> pjMap = new  HashMap<String,Object>();
	      ProjectVo projectVo= new ProjectVo();
	      long totalCount= pjService.getTotalCount(pjMap);
	      projectVo = new ProjectVo(totalCount, 1,8);
	      log.info("!!!!!!!!!!!!!!!!!!total: "+totalCount);
	      log.info("!!!!!!!!!!!!!!!!!!projectVo: "+projectVo);
	      pjMap.put("ProjectVo", projectVo);
	      List<Project>pjListAll = pjService.list(pjMap);
	      //All 프로젝트 끝
	      
	      //개발 프로젝트
	      List<Long> typenumD = new ArrayList<Long>();
	      typenumD.add((long)1);
	      pjMap.put("type", typenumD);
	      long totalCountDevelop= pjService.getTotalCount(pjMap);
	      projectVo = new ProjectVo(totalCountDevelop, 1,8);
	      pjMap.put("ProjectVo", projectVo);
	      List<Project>pjListDevelop = pjService.list(pjMap);
	      //개발프로젝트 끝
	      //퍼블 프로젝트
	      List<Long> typenumP = new ArrayList<Long>();
	      typenumP.add((long)2);
	      pjMap.put("type", typenumP);
	      long totalCountPubli= pjService.getTotalCount(pjMap);
	      projectVo = new ProjectVo(totalCountPubli, 1,8);
	      pjMap.put("ProjectVo", projectVo);
	      List<Project>pjListPubli = pjService.list(pjMap);
	      //퍼블프로젝트 끝
	      //디자인 프로젝트
	      List<Long> typenumDesign = new ArrayList<Long>();
	      typenumDesign.add((long)3);
	      pjMap.put("type", typenumDesign);
	      long totalCountDesign= pjService.getTotalCount(pjMap);
	      projectVo = new ProjectVo(totalCountDesign, 1,8);
	      pjMap.put("ProjectVo", projectVo);
	      List<Project>pjListDesign = pjService.list(pjMap);
	      //디자인 프로젝트 끝
	      //기획 프로젝트
	      List<Long> typenumPlan = new ArrayList<Long>();
	      typenumPlan.add((long)4);
	      pjMap.put("type", typenumPlan);
	      long totalCountPlan= pjService.getTotalCount(pjMap);
	      projectVo = new ProjectVo(totalCountPlan, 1,8);
	      pjMap.put("ProjectVo", projectVo);
	      List<Project>pjListPlan = pjService.list(pjMap);
	      //기획 프로젝트 끝
	      //기타 프로젝트
	      List<Long> typenumEtc = new ArrayList<Long>();
	      typenumEtc.add((long)5);
	      pjMap.put("type", typenumEtc);
	      long totalCountEtc= pjService.getTotalCount(pjMap);
	      projectVo = new ProjectVo(totalCountEtc, 1,8);
	      pjMap.put("ProjectVo", projectVo);
	      List<Project>pjListEtc = pjService.list(pjMap);
	      //기타 프로젝트 끝
		List<Market> list=new ArrayList<Market>();//마켓리스트
		
		String mem_email=(String) session.getAttribute("email");
		
		log.info("1@#@!#!#@!mem_mail"+mem_email);
		Pagingmap.put("selectedKey",1);
		Pagingmap.put("start",0);
		Pagingmap.put("end",10); 
		log.info("1@#@!#!#@!list"+list);
		list = marketService.getMarketList(Pagingmap);

		log.info("2@#@!#!#@!list"+list);
		 List<MarketPick> pickState=new ArrayList<MarketPick>();
		 ArrayList<Long> marketNumList = new ArrayList<Long>();
		 //세션이메일이 존재할때
		 if(mem_email != null) {
			 if(marketService.pickState(mem_email).size() != 0) {
				 pickState = marketService.pickState(mem_email);
				 for(int i=0;i<pickState.size();i++) {
					long marketNum=pickState.get(i).getMarket_num();
					marketNumList.add(marketNum);
				 }
			 }
		 }else {
			//세션이메일이 존재하지 않을 때	 
		 }		 
		 ModelAndView mv = new ModelAndView("index");
		 mv.addObject("list", list);
	     mv.addObject("marketNumList", marketNumList); 
	     mv.addObject("pjList", pjListAll); //project List
         mv.addObject("pjListDevelop",pjListDevelop);//project Develop
         mv.addObject("pjListPubli",pjListPubli);//project publishing
         mv.addObject("pjListDesign",pjListDesign);//project Design
         mv.addObject("pjListPlan",pjListPlan);//project Plan
         mv.addObject("pjListEtc",pjListEtc);//project Etc
	     mv.addObject("totalCount", totalCount);
	     mv.addObject("marketTotal", marketTotal);
	     mv.addObject("sumCountCorIndex", sumCountCorIndex);
	     mv.addObject("countFree", countFree);
	     /////프리랜서/////
         List<List_FreeLancer> freelancerList = freeService.index_select();      
         List<List_FreeLancerProfile> freelancerList2 = freeService.SelectList2();
         List<fp.freelancerprofile.domain.Project> freelancerList3 = freeService.SelectList3();
         List<List_FreeLancerReview> list_star = freeService.selectStar_list();
         List<Freelancer_FreeLancerProfile> list_key = freeService.keyname_select();    
      
         mv.addObject("freelancerList", freelancerList);
         mv.addObject("freelancerList2", freelancerList2);
         mv.addObject("freelancerList3", freelancerList3);
         mv.addObject("list_star", list_star);    
         mv.addObject("list_key", list_key);      
         log.info("!!!!!!!!!@"+list_key);
         
		return mv;
	}

}
