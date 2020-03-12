
package fp.corporation.controller;

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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import fp.corporation.domain.AppliedProject;
import fp.corporation.domain.Corporation;
import fp.corporation.domain.PjPickKeyword;
import fp.corporation.domain.Project;
import fp.corporation.domain.ProjectPayment;
import fp.corporation.domain.ProjectPick;
import fp.corporation.service.CorporationService;

import fp.corporation.service.ProjectService;
import fp.corporation.vo.ProjectVo;
import fp.freelancerprofile.domain.FreeLancer;
import fp.freelancerprofile.domain.FreeLancerProfile;
import fp.freelancerprofile.service.FreeLancerProfileService;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class ProjectController {
	@Autowired
	private ProjectService service;
	@Autowired
	private CorporationService corService;	
	@Autowired
	private FreeLancerProfileService freeService;
	
	@RequestMapping(value="/project_list", method=RequestMethod.GET)
	@ResponseBody
	public ModelAndView project_list(ProjectVo projectVo , @RequestParam(value="nowPage", required=false)String nowPage
			, @RequestParam(value="cntPerPage", required=false)String cntPerPage, @RequestParam(value="mem_email", required=false)String mem_email) {
		
		if(nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "4";
		}else if (nowPage == null) {
			nowPage ="1";
		}else if(cntPerPage == null) {
			cntPerPage ="4";
		}
		Map<String,Object>map = new HashMap<String, Object>();
		long totalCount = service.getTotalCount(map);
		projectVo = new ProjectVo(totalCount, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		map.put("ProjectVo", projectVo);
		List<Project> list = service.list(map);
		
		long countDevelop= service.getTotalCount_select(1);
		long countPublishing= service.getTotalCount_select(2);
		long countDesign= service.getTotalCount_select(3);
		long countPlan= service.getTotalCount_select(4);
		long countEtc= service.getTotalCount_select(5);
		
		ModelAndView mv = new ModelAndView("project/project_list");
		if(mem_email != null) {
			FreeLancer free = freeService.mydash_free_select(mem_email);
			if(free != null) {
				List<ProjectPick> pjplist = service.pjpick_list(free.getFree_code());
				ArrayList<Long>pjnumList  = new ArrayList<Long>();
				for(int j=0; j<pjplist.size(); j++) {
					pjnumList.add(pjplist.get(j).getPj_num());
				}
				mv.addObject("free", free);
				mv.addObject("pjplist",pjplist);
				mv.addObject("pjnumList",pjnumList);
			}
		}
		mv.addObject("countDevelop",countDevelop);
		mv.addObject("countPublishing",countPublishing);
		mv.addObject("countDesign",countDesign);
		mv.addObject("countPlan",countPlan);
		mv.addObject("countEtc",countEtc);
		mv.addObject("list", list);
		mv.addObject("pa", projectVo);
		List<Project> keyname = service.keywords();
		mv.addObject("keyname", keyname);		
		return mv;
	}
	@RequestMapping(value="project_list_sort", method=RequestMethod.GET)
	@ResponseBody
	public String project_list_sort(@RequestParam String selectKeyword, @RequestParam(value="mem_email", required=false)String mem_email){
		if(mem_email != null) {
			return "mem_email="+mem_email+"&selectKeyword="+selectKeyword;
		}
		return selectKeyword;
	}
	
	@RequestMapping(value="project_list_ajax", method=RequestMethod.GET)
	@ResponseBody
	public ModelAndView project_list_ajax(@RequestParam(value="typeList[]", required=false)List<Integer>typeList,ProjectVo projectVo , @RequestParam(value="nowPage", required=false)String nowPage
			, @RequestParam(value="cntPerPage", required=false)String cntPerPage, @RequestParam(value="mem_email", required=false)String mem_email 
			,@RequestParam(value="selectKeyword", required=false)String selectKeyword
			,@RequestParam(value="pj_fgradeList[]", required=false)List<Integer> pj_fgradeList
			,@RequestParam(value="pj_placeList[]", required=false)List<Integer> pj_placeList
			,@RequestParam(value="loc_first", required=false)String loc_first
			,@RequestParam(value="loc_second", required=false)String loc_second
			,@RequestParam(value="searchKey", required=false)String searchKey){
		
		if(nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "4";
		}else if (nowPage == null) {
			nowPage ="1";
		}else if(cntPerPage == null) {
			cntPerPage ="4";
		}

		Map<String,Object>map = new HashMap<String, Object>();
		//직종 선택 
		if(typeList==null) {			
			map.put("type",null);
		}else {
			map.put("type",typeList);
		}
		//프리랜서 등급선택
		if(pj_fgradeList==null) {			
			map.put("fgrade",null);
		}else {
			map.put("fgrade",pj_fgradeList);
		}
		//지역(도 단위) 선택
		if(loc_first != null) {
			map.put("loc_first",loc_first+"%");
			if(loc_second != null) {
				map.put("loc_first",loc_first+" "+loc_second+"%");
			}
		}else {
			map.put("loc_first",null);
		}
		//검색 ajax
		if(searchKey != null){
			map.put("searchKey","%"+searchKey+"%");
		}else {
			map.put("searchKey",null);
		}
		//셀렉박스 sorting keyword 선택
		if(selectKeyword != null) {
			map.put("SortingKey",selectKeyword);
		}else {
			map.put("SortingKey",null);
		}
		//어디서 일할지 선택
		if(pj_placeList != null){
			map.put("pj_place",pj_placeList);
		}else {
			map.put("pj_place",null);
		}
		
		
		long totalCount = service.getTotalCount(map);
		projectVo = new ProjectVo(totalCount, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		map.put("ProjectVo", projectVo);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("jsonView");
		if(mem_email != null) {
			FreeLancer free = freeService.mydash_free_select(mem_email);
			if(free != null) {
				List<ProjectPick> pjplist = service.pjpick_list(free.getFree_code());
				ArrayList<Long>pjnumList  = new ArrayList<Long>();
				for(int j=0; j<pjplist.size(); j++) {
					pjnumList.add(pjplist.get(j).getPj_num());
				}
				mv.addObject("free", free);
				mv.addObject("pjplist",pjplist);
				mv.addObject("pjnumList",pjnumList);
			}
		}
		List<Project> list = service.list(map);
		mv.addObject("list", list);
		mv.addObject("pa", projectVo);
		List<Project> keyname = service.keywords();
		mv.addObject("keyname", keyname);
		return mv;
	}
	@RequestMapping("project_content")
	public ModelAndView project_content(@RequestParam long pj_num, @RequestParam(value="mem_email", required=false)String mem_email) {
		
		Project project = service.showContent(pj_num);
		Corporation corInfo = service.corInfo(pj_num);
		ModelAndView mv = new ModelAndView("project/project_content");
		mv.addObject("projectCont", project);
		mv.addObject("corInfo", corInfo);
		
		if(mem_email != null) {
			FreeLancer free = freeService.mydash_free_select(mem_email);
			if(free != null) {
				List<FreeLancerProfile>profile_select = freeService.profile_free_select(mem_email);
					Map<String, Object>map = new HashMap<String, Object>();
					map.put("pj_num", pj_num);
					map.put("free_code", free.getFree_code());
					AppliedProject appp = service.select_applied_pj(map);
				if(profile_select !=null) {
					mv.addObject("profile_select", profile_select);
				}		
				mv.addObject("appp", appp);
				mv.addObject("free", free);
				mv.addObject("projectCont", project);
				mv.addObject("corInfo", corInfo);
			}
		}
		return mv;
	}
	
	@GetMapping("project_update")
	public ModelAndView project_update(@RequestParam long pj_num) {
		Project project = service.showContent(pj_num);
		Corporation corInfo = service.corInfo(pj_num);
		ModelAndView mv = new ModelAndView ("project/project_update");
		mv.addObject("projectCont", project);
		mv.addObject("corInfo", corInfo);
		log.info("&*&*^&^&project: "+project);
		return mv;
		
	}
	@PostMapping("project_update")
	public String project_update(Project project, HttpServletRequest request, PjPickKeyword pjpkeyword) {
		String[] ListPjp_keynum = request.getParameterValues("pjp_keynum");
		ArrayList<Long> arrayPjp_keynum = new ArrayList<Long>();
		
		
		long[] ListIntPjp_keynum = Arrays.stream(ListPjp_keynum).mapToLong(Long::parseLong).toArray();
		for(int i = 0; i<ListIntPjp_keynum.length; i++) {
			arrayPjp_keynum.add(ListIntPjp_keynum[i]);
			
		}
		pjpkeyword.setPjpkeynumList(arrayPjp_keynum);
		log.info("@@@@@@@@@@pjpkeyword: "+pjpkeyword);
		
		String[] ListKeyNum = request.getParameterValues("key_num");
		ArrayList<Integer> arraykeynum = new ArrayList<Integer>();
		int[] ListIntKeyNum = Arrays.stream(ListKeyNum).mapToInt(Integer::parseInt).toArray();
		for(int i = 0; i<ListIntKeyNum.length; i++) {
			arraykeynum.add(ListIntKeyNum[i]);
		}

		pjpkeyword.setKey_numList(arraykeynum);
		service.updatePj(project);
		service.updateKeyword(pjpkeyword);
		return "redirect:project_content?pj_num="+project.getPj_num();

	}
	
	@GetMapping("project_write")
	public ModelAndView project_write(String mem_email) {
		Corporation cor = corService.mydash_cor_select(mem_email);
		ModelAndView mv = new ModelAndView("project/project_write");
		mv.addObject("cor", cor);
		return mv;
	}
	
	@PostMapping("project_write")
	public String project_write(Project project, HttpServletRequest request) {
		//String type_num = request.getParameter("type_num");
		log.info("!@!#(@#*@&$(&*(@!#&&(*@#");
		String mem_email = request.getParameter("mem_email");
		log.info("!@*@#&(*#&(*&@# mem_email: "+mem_email);

		String[] ListKeyNum = request.getParameterValues("key_num");
		ArrayList<Integer> arraykeynum = new ArrayList<Integer>();
		
		int[] ListIntKeyNum = Arrays.stream(ListKeyNum).mapToInt(Integer::parseInt).toArray();
				
		Map<String, Object> map = new HashMap<String, Object>();
		for(int i = 0; i<ListIntKeyNum.length; i++) {
			arraykeynum.add(ListIntKeyNum[i]);
		}
		map.put("key_num", arraykeynum);
		
		service.insertpj(project);
		service.insertPjpkeyword(map);
		//log.info("@#!#@$  arraykeynum: "+ arraykeynum);
		//log.info("@#!#@$  project: " +project);
		//log.info("@#!#@$  map: "+ map);
		return "redirect:managed_project?mem_email="+mem_email;
	}
	
	@RequestMapping("project_delete")
	public String project_delete(@RequestParam long pj_num) {
		service.deletePj(pj_num);
		return "redirect:project_list";
	}

	@RequestMapping("project_payments")
	public ModelAndView project_payment(@RequestParam long pj_num){
		Project project = service.showContent(pj_num);
		Corporation corInfo = service.corInfo(pj_num);
		ModelAndView mv = new ModelAndView("project/project_payments");
		mv.addObject("projectCont", project);
		mv.addObject("corInfo", corInfo);
		mv.addObject("pjpaym", new ProjectPayment());
		return mv;
	}
	@RequestMapping(value="project_payments_end", method=RequestMethod.POST )
	public String project_payments_end(@RequestBody HashMap<String, Object> data, @RequestParam long pj_num){
		log.info("@!#*^@$ pj_num: "+pj_num);
		//log.info("#($&#@*$ data: "+data.toString());
		Map<String, Object> payinfo = new HashMap<String, Object>();
		payinfo.put("data", data);
		payinfo.put("pj_num", pj_num);
		log.info("#@$&*^#@&*$payinfo: "+payinfo);
		service.payinsert(payinfo);
		return "project/project_payments_end"; 
		
	}
	@GetMapping("project_pay_end")
	public String pj_pay_end() {
		return "project/project_payments_end"; 
	}
	@RequestMapping(value="/project_wish", method=RequestMethod.GET)
	@ResponseBody
	public void project_wish(@RequestParam long pj_num, @RequestParam long free_code) {
		//log.info("@#&@(&$ pj_num: "+pj_num+", free_code: "+free_code);
		Map<String,Object>map = new HashMap<String, Object>();
		map.put("pj_num",pj_num);
		map.put("free_code", free_code);
		service.pjpick_insert(map);
	}
	@RequestMapping(value="/project_wish_del", method=RequestMethod.GET)
	@ResponseBody
	public void project_wish_del(@RequestParam long pj_num, @RequestParam long free_code) {
		Map<String, Object>map = new HashMap<String, Object>();
		map.put("pj_num", pj_num);
		map.put("free_code", free_code);
		service.pjpick_del(map);
	}
	
	@RequestMapping(value="/apply", method=RequestMethod.GET)
	@ResponseBody
	public void applied_pj(@RequestParam long pj_num, @RequestParam long free_code, @RequestParam long pro_num) {
		log.info("@#&@(&$ pj_num: "+pj_num+", free_code: "+free_code+", pro_num: "+pro_num);
		Map<String, Object>map = new HashMap<String, Object>();
		map.put("pj_num", pj_num);
		map.put("free_code", free_code);
		map.put("pro_num", pro_num);
		service.applied_pj(map);
	}
	
}
