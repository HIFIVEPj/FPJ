
package fp.corporation.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import fp.corporation.domain.Corporation;
import fp.corporation.domain.PjPickKeyword;
import fp.corporation.domain.Project;
import fp.corporation.domain.ProjectPayment;
import fp.corporation.domain.ProjectPick;
import fp.corporation.service.CorporationService;

import fp.corporation.service.ProjectService;
import fp.corporation.vo.ProjectVo;
import fp.freelancerprofile.domain.FreeLancer;
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
	
	@RequestMapping("project_list")
	public ModelAndView project_list(ProjectVo projectVo , @RequestParam(value="nowPage", required=false)String nowPage
			, @RequestParam(value="cntPerPage", required=false)String cntPerPage, @RequestParam(value="mem_email", required=false)String mem_email) {
		long totalCount = service.getTotalCount();
		if(nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "4";
		}else if (nowPage == null) {
			nowPage ="1";
		}else if(cntPerPage == null) {
			cntPerPage ="4";
		}
		projectVo = new ProjectVo(totalCount, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		
		List<Project> list = service.list(projectVo);
		
		
		if(mem_email != null) {
			
			FreeLancer free = freeService.mydash_free_select(mem_email);
			if(free != null) {
				List<ProjectPick> pjplist = service.pjpick_list(free.getFree_code());
				ArrayList<Long>pjnumList  = new ArrayList<Long>();
				for(int j=0; j<pjplist.size(); j++) {
					pjnumList.add(pjplist.get(j).getPj_num());
				}
				ModelAndView mv = new ModelAndView("project/project_list");
				mv.addObject("list", list);
				mv.addObject("pa", projectVo);
				List<Project> keyname = service.keywords();
				mv.addObject("keyname", keyname);
				mv.addObject("free", free);
				mv.addObject("pjplist",pjplist);
				mv.addObject("pjnumList",pjnumList);
				return mv;
			}
			ModelAndView mv = new ModelAndView("project/project_list");
			mv.addObject("list", list);
			mv.addObject("pa", projectVo);
			List<Project> keyname = service.keywords();
			mv.addObject("keyname", keyname);		
			return mv;
		}
		ModelAndView mv = new ModelAndView("project/project_list");
		mv.addObject("list", list);
		mv.addObject("pa", projectVo);
		List<Project> keyname = service.keywords();
		mv.addObject("keyname", keyname);		
		return mv;
	}
	
	@RequestMapping("project_content")
	public ModelAndView project_content(@RequestParam long pj_num) {
		Project project = service.showContent(pj_num);
		Corporation corInfo = service.corInfo(pj_num);
		ModelAndView mv = new ModelAndView("project/project_content");
		mv.addObject("projectCont", project);
		mv.addObject("corInfo", corInfo);
		
		return mv;
	}
	
	@GetMapping("project_update")
	public ModelAndView project_update(@RequestParam long pj_num) {
		Project project = service.showContent(pj_num);
		Corporation corInfo = service.corInfo(pj_num);
		ModelAndView mv = new ModelAndView ("project/project_update");
		mv.addObject("projectCont", project);
		mv.addObject("corInfo", corInfo);
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
	public void project_payments_end(@RequestBody HashMap<String, Object> data, @RequestParam long pj_num){
		log.info("@!#*^@$ pj_num: "+pj_num);
		//log.info("#($&#@*$ data: "+data.toString());
		Map<String, Object> payinfo = new HashMap<String, Object>();
		payinfo.put("data", data);
		payinfo.put("pj_num", pj_num);
		log.info("#@$&*^#@&*$payinfo: "+payinfo);
		service.payinsert(payinfo);
		
	}
	@GetMapping("project_pay_end")
	public String pj_pay_end() {
		return "project/project_payments_end"; 
	}
	@RequestMapping(value="/project_wish", method=RequestMethod.GET)
	@ResponseBody
	public void project_wish(@RequestParam long pj_num, @RequestParam long free_code) {
		log.info("@#&@(&$ pj_num: "+pj_num+", free_code: "+free_code);
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
}
