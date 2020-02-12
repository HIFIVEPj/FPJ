package fp.corporation.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import fp.corporation.domain.Corporation;
import fp.corporation.domain.Keyword;
import fp.corporation.domain.Project;
import fp.corporation.service.ProjectService;
import fp.corporation.vo.ProjectVo;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class ProjectController {
	@Autowired
	private ProjectService service;
	
	@RequestMapping("project_list")
	public ModelAndView project_list(ProjectVo projectVo , @RequestParam(value="nowPage", required=false)String nowPage
			, @RequestParam(value="cntPerPage", required=false)String cntPerPage) {
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
	
	@RequestMapping("project_delete")
	public String project_delete(@RequestParam long pj_num) {
		service.deletePj(pj_num);
		return "redirect:project_list";
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
	
	@GetMapping("project_write")
	public String project_write() {
		return "project/project_write";
	}
	
	@PostMapping("project_write")
	public String project_write(Project project, HttpServletRequest request) {
		//String type_num = request.getParameter("type_num");
		
		String[] ListKeyNum = request.getParameterValues("key_num");
		ArrayList<String> arraykeynum = new ArrayList<String>();
		
		Map<String, Object> map = new HashMap<String, Object>();
		for(int i = 0; i<ListKeyNum.length; i++) {
			arraykeynum.add(ListKeyNum[i]);
		}
		map.put("key_num", arraykeynum);
		
		service.insertpj(project);
		service.insertPjpkeyword(map);
		//log.info("@#!#@$  arraykeynum: "+ arraykeynum);
		//log.info("@#!#@$  project: " +project);
		log.info("@#!#@$  map: "+ map);
		return "redirect:project_list";
	}
	
}
