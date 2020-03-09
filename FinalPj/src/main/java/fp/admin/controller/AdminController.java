package fp.admin.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import fp.member.domain.Criteria;
import fp.member.domain.Member;
import fp.member.domain.MemberVo;
import fp.member.domain.PageDTO;
import fp.member.domain.PayInformation;
import fp.member.service.MemberService;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class AdminController {
	@Autowired
	MemberService service;
	
	@RequestMapping("admin")
	public ModelAndView admin() {
		
		List<Long> sumFree=service.sumFree();
		List<Long> sumCor=service.sumCor();
		List<Long> month=service.month();
		
				
		Map<String,Object> map = new HashMap<String, Object>();	
		map.put("class_num","2");	
		long totalCountFree =service.getTotalCount(map);	
		map.put("class_num","4");
		long totalCountCor =service.getTotalCount(map);
		map.put("class_num","");
		long totalCount =service.getTotalCount(map);
		
		log.info("totalCount : "+totalCount);
		ModelAndView mv = new ModelAndView("admin/admin_page");
		mv.addObject("totalCountFree", totalCountFree);
		mv.addObject("totalCountCor", totalCountCor);
		mv.addObject("totalCount", totalCount);
		mv.addObject("sumFree",sumFree);
		mv.addObject("sumCor",sumCor);
		mv.addObject("month",month);
		return mv;
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
	session.setAttribute("keyword", keyword);
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
	log.info("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!:"+mvo);
	mv.addObject("pa", mvo);
		
		return mv;
	} 

	@RequestMapping("admin_marketC")
	public ModelAndView admin_marketC(MemberVo memberVo,@RequestParam(value="nowPage", required = false)String nowPage
			, @RequestParam(value="cntPerPage", required = false)String cntPerPage) {
		
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
		log.info("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!:"+list);
		mv.addObject("list", list);
		mv.addObject("pac",Vo);
			
			return mv;
	}

	@RequestMapping("admin_marketF")
	public ModelAndView admin_marketF(MemberVo memberVo, @RequestParam(value="nowPage", required = false)String nowPage
			, @RequestParam(value="cntPerPage", required = false)String cntPerPage) {
		
		//log.info("memberVo1313213123는 어케 넘어오나 >>>>>> "+memberVo.getKeyword());
		long totalCount =service.getTotalCountMF(memberVo);	
		//log.info("프리랜서 마켓카운트트트트ㅡ트틑"+totalCount);
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
			
			return mv;
	}
	
	@RequestMapping("searchFree.do")
	public ModelAndView searchMarketF(MemberVo membeVO, 
			@RequestParam(value="nowPage", required = false)String nowPage
			, @RequestParam(value="cntPerPage", required = false)String cntPerPage) {
		log.info("여기는 오니?;"+membeVO);
		log.info("memberVo1313213123는 어케 넘어오나 >>>>>> "+ membeVO.getKeyword());
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
		log.info("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!검색추가:"+list);
		log.info("!!!!!!!!!!!!!!!!!!!!!!!!!!!Vo 검색추가:"+Vo);
		mv.addObject("list", list);
		mv.addObject("paf", Vo);
			
			return mv;
	}
	
	@RequestMapping("searchCor.do")
	public ModelAndView searchMarketC(MemberVo membeVO, 
			@RequestParam(value="nowPage", required = false)String nowPage
			, @RequestParam(value="cntPerPage", required = false)String cntPerPage) {
		log.info("시작 :"+membeVO.getStartDate()+"끝  :"+membeVO.getEndDate());
		long totalCount =service.getTotalCountMC(membeVO);	
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
	
		List<PayInformation> list =service.marketListCor(Vo);		
		ModelAndView mv = new ModelAndView("admin/admin_marketC");	
		log.info("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!검색추가:"+list);
		log.info("!!!!!!!!!!!!!!!!!!!!!!!!!!!Vo 검색추가:"+Vo);
		mv.addObject("list", list);
		mv.addObject("pac", Vo);
			
			return mv;
	}
	
}


