package fp.corporation.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import fp.corporation.domain.Corporation;
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
	
	
}
