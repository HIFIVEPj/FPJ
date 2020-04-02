package fp.admin.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import fp.market.domain.Market;
import fp.member.domain.Member;
import fp.member.domain.MemberVo;
import fp.member.domain.PayInformation;
import fp.member.service.MemberService;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class AdminController {
	@Autowired
	MemberService service;
	
	@RequestMapping("admin")
	public ModelAndView admin(@RequestParam(value="nowPage", required = false)String nowPage
			, @RequestParam(value="cntPerPage", required = false)String cntPerPage){
		
		List<Long> sumFree=service.sumFree();
		List<Long> sumCor=service.sumCor();
		List<Long> month=service.month();
		long getMarketCountSys=service.getMarketCountSys();
		long getMarketListState=service.getMarketListState();
		long getProjectCountSys=service.getProjectCountSys();
		
		Map<String,Object> map = new HashMap<String, Object>();	
		map.put("class_num","2");	
		long totalCountFree =service.getTotalCount(map);	
		map.put("class_num","4");
		long totalCountCor =service.getTotalCount(map);
		map.put("class_num","");
		long totalCount =service.getTotalCount(map);
		
		long totalMarketCount =service.getMarketCount();	
		if(nowPage == null && cntPerPage == null) {
			nowPage="1";
			cntPerPage="10"; //페이지당 글 갯수리스트목록
		}else if(nowPage ==null) {
			nowPage="1";
		}else if(cntPerPage == null) {
			cntPerPage="10"; //리스트목록
		}			
		MemberVo Vo = new MemberVo(totalMarketCount, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		List<Market> list = service.getMarketList(Vo);
		
		log.info("list!@#!@#!@#@!#!#! : "+list);
		log.info("Vo!@#!@#!@#@!#!#! : "+Vo);
		ModelAndView mv = new ModelAndView("admin/admin_page");
		
		mv.addObject("list", list);
		mv.addObject("pamarket", Vo);
		
		mv.addObject("getMarketCountSys", getMarketCountSys);
		mv.addObject("getMarketListState", getMarketListState);
		mv.addObject("getProjectCountSys", getProjectCountSys);
		
		mv.addObject("totalCountFree", totalCountFree);
		mv.addObject("totalCountCor", totalCountCor);
		mv.addObject("totalCount", totalCount);
		mv.addObject("sumFree",sumFree);
		mv.addObject("sumCor",sumCor);
		mv.addObject("month",month);
		return mv;
	}
	
	@RequestMapping("updateMarketState.do")
	   public String upMarketS(Market market,@RequestParam long market_num, @RequestParam int market_state) {
	      log.info("market_num : " + market_num);
	      Map<String,Object> map = new HashMap<String, Object>();   
	      map.put("market_num",market_num);
	      //int market_state=market.getMarket_state();
	      log.info("market_state : " + market_state);
	      
	      map.put("market_state",market_state);
	      service.upMarketS(map);
	      
	      
	      return "redirect:admin";
	      
	   }

	@RequestMapping("admin_member")
	public ModelAndView member_list(
			@RequestParam (required = false)String class_num ,
			@RequestParam(value="nowPage", required = false)String nowPage
	, @RequestParam(value="cntPerPage", required = false)String cntPerPage
	,@RequestParam(value="keyword", required = false)String keyword, HttpServletRequest request){
		
	
	Map<String,Object> map = new HashMap<String, Object>();	
	map.put("class_num",class_num);	
	HttpSession session=request.getSession();
	session.setAttribute("classN", class_num);
	//session.setAttribute("keyword", keyword);
	map.put("keyword", keyword);
	
	long totalCount =service.getTotalCount(map);
	
	
	if(nowPage == null && cntPerPage == null) {
		nowPage="1";
		cntPerPage="10"; //페이지당 글 갯수리스트목록
	}else if(nowPage ==null) {
		nowPage="1";
	}else if(cntPerPage == null) {
		cntPerPage="10"; //리스트목록
	}
	MemberVo memberVo = new MemberVo(totalCount, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), null, keyword);	
	map.put("MemberVo", memberVo);		
	MemberVo mvo =service.getMemberVo(map);		
	ModelAndView mv = new ModelAndView("admin/admin_member");	
	log.info(" mvo:" + mvo);
	mv.addObject("pa", mvo);
		
		return mv;
	} 

	@RequestMapping("admin_marketC")
	public ModelAndView admin_marketC(MemberVo memberVo,@RequestParam(value="nowPage", required = false)String nowPage
			, @RequestParam(value="cntPerPage", required = false)String cntPerPage) {
		List<String> sumCountCorN = new ArrayList<String>();
		List<Long> sumCor=service.sumCor();
		List<Long> month=service.month();
		List<Long> sumCountCor=service.sumCountCor();
		List<String> beforSumCountCorN=service.sumCountCorN();
		for(int i=0;i<beforSumCountCorN.size();i++) {
			String k = "'"+beforSumCountCorN.get(i)+"'";
			sumCountCorN.add(k);
		}
		log.info("sumCountCor: !@#!@#!@#@!#!@#!@#$$@!#@"+sumCountCor);
		log.info("sumCountCorN: !@#!@#!@#@!#!@#!@#$$@!#@"+sumCountCorN);
		
		long totalCount =service.getTotalCountMC(memberVo);	
		if(nowPage == null && cntPerPage == null) {
			nowPage="1";
			cntPerPage="10"; //페이지당 글 갯수리스트목록
		}else if(nowPage ==null) {
			nowPage="1";
		}else if(cntPerPage == null) {
			cntPerPage="10"; //리스트목록
		}			
		MemberVo Vo = new MemberVo(totalCount, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
	
		List<PayInformation> list =service.marketListCor(Vo);		
		ModelAndView mv = new ModelAndView("admin/admin_marketC");	
		mv.addObject("list", list);
		mv.addObject("pac",Vo);
		mv.addObject("sumCor",sumCor);
		mv.addObject("month",month);
		mv.addObject("sumCountCor",sumCountCor);
		mv.addObject("sumCountCorN",sumCountCorN);
		log.info("Vo: !@#!@#!@#@!#!@#pac@#$$@!#@"+Vo);
		
			return mv;
	}

	@RequestMapping("admin_marketF")
	public ModelAndView admin_marketF(MemberVo memberVo, @RequestParam(value="nowPage", required = false)String nowPage
			, @RequestParam(value="cntPerPage", required = false)String cntPerPage) {
		List<String> sumCountMarketN = new ArrayList<String>();
		List<Long> sumFree=service.sumFree();
		List<Long> month=service.month();
		List<Long> sumCountMarket=service.sumCountMarket();
		List<String> beforSumCountMarketN=service.sumCountMarketN();
		for(int i=0;i<beforSumCountMarketN.size();i++) {
			String k = "'"+beforSumCountMarketN.get(i)+"'";
			sumCountMarketN.add(k);
		}
		log.info("sumFree: !@#!@#!@#@!#!@#!@#$$@!#@"+sumFree);
		log.info("sumCountMarket: !@#!@#!@#@!#!@#!@#$$@!#@"+sumCountMarket);
		log.info("sumCountMarketN: !@#!@#!@#@!#!@#!@#$$@!#@"+sumCountMarketN);
		
		long totalCount =service.getTotalCountMF(memberVo);	
		if(nowPage == null && cntPerPage == null) {
			nowPage="1";
			cntPerPage="10"; //페이지당 글 갯수리스트목록
		}else if(nowPage ==null) {
			nowPage="1";
		}else if(cntPerPage == null) {
			cntPerPage="10"; //리스트목록
		}			
		MemberVo Vo = new MemberVo(totalCount, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
	
		List<PayInformation> list =service.marketListFree(Vo);		
		ModelAndView mv = new ModelAndView("admin/admin_marketF");	
		//log.info("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!:"+list);
		//log.info("!!!!!!!!!!!!!!!!!!!!!!!!!!!memberVo:"+Vo);
		mv.addObject("list", list);
		mv.addObject("paf", Vo);
		mv.addObject("sumFree",sumFree);
		mv.addObject("month",month);
		mv.addObject("sumCountMarket",sumCountMarket);
		mv.addObject("sumCountMarketN",sumCountMarketN);
			
			return mv;
	}
	
	@RequestMapping("searchFree.do")
	public ModelAndView searchMarketF(MemberVo membeVO, 
			@RequestParam(value="nowPage", required = false)String nowPage
			, @RequestParam(value="cntPerPage", required = false)String cntPerPage) {
		List<String> sumCountMarketN = new ArrayList<String>();
		List<Long> sumFree=service.sumFree();
		List<Long> month=service.month();
		List<Long> sumCountMarket=service.sumCountMarket();
		List<String> beforSumCountMarketN=service.sumCountMarketN();
		for(int i=0;i<beforSumCountMarketN.size();i++) {
			String k = "'"+beforSumCountMarketN.get(i)+"'";
			sumCountMarketN.add(k);
		}
		
		long totalCount =service.getTotalCountMF(membeVO);	
		log.info("검색 : " +totalCount);
		if(nowPage == null && cntPerPage == null) {
			nowPage="1";
			cntPerPage="10"; //페이지당 글 갯수리스트목록
		}else if(nowPage ==null) {
			nowPage="1";
		}else if(cntPerPage == null) {
			cntPerPage="10"; //리스트목록
		}			
		MemberVo Vo = new MemberVo(totalCount, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage),membeVO.getType(),membeVO.getKeyword(),membeVO.getStartDate(),membeVO.getEndDate());
	
		List<PayInformation> list =service.marketListFree(Vo);		
		ModelAndView mv = new ModelAndView("admin/admin_marketF");	
		
		mv.addObject("list", list);
		mv.addObject("paf", Vo);
		mv.addObject("sumFree",sumFree);
		mv.addObject("month",month);
		mv.addObject("sumCountMarket",sumCountMarket);
		mv.addObject("sumCountMarketN",sumCountMarketN);	
			return mv;
	}
	
	@RequestMapping("searchCor.do")
	public ModelAndView searchMarketC(MemberVo membeVO, 
			@RequestParam(value="nowPage", required = false)String nowPage
			, @RequestParam(value="cntPerPage", required = false)String cntPerPage) {
		
		List<String> sumCountCorN = new ArrayList<String>();
		List<Long> sumCountCor=service.sumCountCor();
		List<String> beforSumCountCorN=service.sumCountCorN();
		for(int i=0;i<beforSumCountCorN.size();i++) {
			String k = "'"+beforSumCountCorN.get(i)+"'";
			sumCountCorN.add(k);
		}
		
		List<Long> sumCor=service.sumCor();
		List<Long> month=service.month();
		
		long totalCount =service.getTotalCountMC(membeVO);			
		if(nowPage == null && cntPerPage == null) {
			nowPage="1";
			cntPerPage="10"; //페이지당 글 갯수리스트목록
		}else if(nowPage ==null) {
			nowPage="1";
		}else if(cntPerPage == null) {
			cntPerPage="10"; //리스트목록
		}			
		MemberVo Vo = new MemberVo(totalCount, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage),membeVO.getType(),membeVO.getKeyword(),membeVO.getStartDate(),membeVO.getEndDate());
	
		List<PayInformation> list =service.marketListCor(Vo);		
		ModelAndView mv = new ModelAndView("admin/admin_marketC");	
		
		mv.addObject("list", list);
		mv.addObject("pac", Vo);
		mv.addObject("sumCor",sumCor);
		mv.addObject("month",month);	
		mv.addObject("sumCountCor",sumCountCor);
		mv.addObject("sumCountCorN",sumCountCorN);
		
		return mv;
	}
	
}

