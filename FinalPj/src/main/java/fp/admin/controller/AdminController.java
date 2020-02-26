package fp.admin.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

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
	, @RequestParam(value="cntPerPage", required = false)String cntPerPage){
		System.out.println("!@#!@$!@#!#!@#!@#!@#!@#!@#@!#!@#!@:"+class_num);
		
		long totalCount =service.getTotalCount(class_num);
		//System.out.println("1111111111111111111111111111@:"+totalCount);
	
	if(nowPage == null && cntPerPage == null) {
		nowPage="1";
		cntPerPage="10"; //페이지당 글 갯수리스트목록
	}else if(nowPage ==null) {
		nowPage="1";
	}else if(cntPerPage == null) {
		cntPerPage="10"; //리스트목록
	}
	MemberVo memberVo = new MemberVo(totalCount, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), null);
	
	Map<String,Object> map = new HashMap<String, Object>();
	map.put("class_num",class_num);
	System.out.println("22222222222222222@:"+map);
	map.put("MemberVo", memberVo);
	System.out.println("33333333333333333333333333:"+map);
	
	MemberVo mvo =service.getMemberVo(map);	
	System.out.println("list.size(): "+ mvo.getList().size());	
	
	ModelAndView mv = new ModelAndView("admin/admin_member");
	//mv.addObject("list", list);
	mv.addObject("pa", mvo);
		
	System.out.println("6666666666666666666666666666:"+mvo);		
		return mv;
	}
	
}
