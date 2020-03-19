package fp.index.controller;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import fp.corporation.domain.Project;
import fp.corporation.service.ProjectService;
import fp.corporation.vo.ProjectVo;
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
		ProjectVo projectVo= new ProjectVo();
		long totalCount= pjService.getTotalCount(Pagingmap);
		projectVo = new ProjectVo(totalCount, 1,8);
		Pagingmap.put("ProjectVo", projectVo);
		List<Project>pjList = pjService.list(Pagingmap);
		
		//프로젝트 끝
		List<Market> list=new ArrayList<Market>();//마켓리스트
		
		String mem_email=(String) session.getAttribute("email");
		
		log.info("1@#@!#!#@!mem_mail"+mem_email);
		Pagingmap.put("selectedKey",1);
		Pagingmap.put("start",1);
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
	     mv.addObject("maㅎrketNumList", marketNumList); 	    
	     mv.addObject("pjList", pjList); //project List
	     mv.addObject("totalCount", totalCount);
	     mv.addObject("marketTotal", marketTotal);
	     mv.addObject("sumCountCorIndex", sumCountCorIndex);
	     mv.addObject("countFree", countFree);
	     
		return mv;
	}
	

}
