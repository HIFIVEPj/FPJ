package fp.admin.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

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

import fp.member.domain.Member;
import fp.member.domain.MemberVo;
import fp.member.service.MemberService;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class AdminController {
	@Autowired
	MemberService service;
	
	@RequestMapping("admin")
	public String admin() {
		return "admin/admin_page";
	}

	
	@RequestMapping("admin_member")
	public @ResponseBody ModelAndView member_list(
			@RequestParam (required = false)String class_num ,
			@RequestParam(value="nowPage", required = false)String nowPage
	, @RequestParam(value="cntPerPage", required = false)String cntPerPage,HttpServletRequest request){
		
	
	Map<String,Object> map = new HashMap<String, Object>();	
	map.put("class_num",class_num);	
	HttpSession session=request.getSession();
	session.setAttribute("classN", class_num);
	
	long totalCount =service.getTotalCount(map);
	
	
	if(nowPage == null && cntPerPage == null) {
		nowPage="1";
		cntPerPage="10"; //페이지당 글 갯수리스트목록
	}else if(nowPage ==null) {
		nowPage="1";
	}else if(cntPerPage == null) {
		cntPerPage="10"; //리스트목록
	}
	MemberVo memberVo = new MemberVo(totalCount, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), null);	
	map.put("MemberVo", memberVo);		
	MemberVo mvo =service.getMemberVo(map);		
	ModelAndView mv = new ModelAndView("admin/admin_member");
	mv.addObject("pa", mvo);
		
		return mv;
	}
	

}
