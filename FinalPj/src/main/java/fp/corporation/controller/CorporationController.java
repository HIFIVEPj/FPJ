
package fp.corporation.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import fp.corporation.domain.Corporation;
import fp.corporation.domain.Project;
import fp.corporation.service.CorporationService;
import fp.corporation.service.ProjectService;
import fp.corporation.vo.ProjectVo;
import fp.util.file.Path;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class CorporationController {
	@Autowired
	private CorporationService service;
	
	@Autowired
	private ProjectService pjService;
	@RequestMapping("payments_cor")
	public String payments_cor(){
		return "corporation/payments_cor";
	}
	
	@RequestMapping("myfavorite_cor")
	public String myfavorite_cor(){
		return "corporation/myfavorite_cor";
	}
	@GetMapping("mydash_cor")
	public ModelAndView write(String mem_email) {
		Corporation corporation = service.mydash_cor_select(mem_email);
		ModelAndView mv = new ModelAndView("corporation/mydash_cor");
		mv.addObject("cor",corporation);
		return mv;
	}
	@PostMapping("mydash_cor_insert")
	public String write(@RequestParam MultipartFile fileName, Corporation corporation) {
		log.info("!@#@$ insert:"+ corporation);
		if(fileName.getOriginalFilename() != "") {
			corporation.setCor_fname(saveStore(fileName));
			corporation.setCor_ofname(fileName.getOriginalFilename());
			service.insert(corporation);
			return "redirect:mydash_cor?mem_email="+corporation.getMem_email();
		}else {
			service.insert(corporation);
			return "redirect:mydash_cor?mem_email="+corporation.getMem_email();
		}
	}
	@PostMapping("mydash_cor_update")
	public String update(@RequestParam MultipartFile fileName, Corporation corporation) {
		Corporation cor = service.mydash_cor_select(corporation.getMem_email());
		log.info("@!#$#T$%#@$fileName:"+fileName.getOriginalFilename()+", ofname: "+cor.getCor_ofname());
		if(cor.getCor_fname() == null && fileName.getOriginalFilename() != "") {
			corporation.setCor_fname(saveStore(fileName));
			corporation.setCor_ofname(fileName.getOriginalFilename());
			service.mydash_cor_update(corporation);
			return "redirect:mydash_change?mem_email="+corporation.getMem_email();
		}else if(fileName.getOriginalFilename() != "" && cor.getCor_fname() == null){
			String str = cor.getCor_fname();
			delFile(str);
			corporation.setCor_fname(saveStore(fileName));
			corporation.setCor_ofname(fileName.getOriginalFilename());
			service.mydash_cor_update(corporation);
			return "redirect:mydash_change?mem_email="+corporation.getMem_email();
		}else if(fileName.getOriginalFilename() == "" && cor.getCor_fname() != null){
			corporation.setCor_fname(cor.getCor_fname());
			corporation.setCor_ofname(cor.getCor_ofname());
			service.mydash_cor_update(corporation);
			return "redirect:mydash_change?mem_email="+corporation.getMem_email();
		}else{
			service.mydash_cor_update(corporation);
			return "redirect:mydash_change?mem_email="+corporation.getMem_email();
		}
	}
	
	@RequestMapping("managed_project")
	public ModelAndView managed_project(String mem_email, ProjectVo projectVo,  @RequestParam(value="nowPage", required=false)String nowPage
			, @RequestParam(value="cntPerPage", required=false)String cntPerPage){
		
		Corporation corporation = service.mydash_cor_select(mem_email);
		long totalCount = pjService.getTotalCountCor(corporation.getCor_code());
		
		if(nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "5";
		}else if (nowPage == null) {
			nowPage ="1";
		}else if(cntPerPage == null) {
			cntPerPage ="5";
		}
		projectVo = new ProjectVo(totalCount, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("ProjectVo", projectVo);
		map.put("cor_code",corporation.getCor_code());
		
		List<Project> listMydashCor = pjService.listMydashCor(map);
		ModelAndView mv = new ModelAndView("corporation/managed_project");
		
		mv.addObject("cor",corporation);
		mv.addObject("list", listMydashCor);
		mv.addObject("pa",projectVo);
		
		log.info("#@#^#$%^#$ projectVO: "+ projectVo);
		log.info("#@#^#$%^#$ map: "+ corporation);
		log.info("#@#^#$%^#$ map: "+ map);
		List<Project> keyname = pjService.keywords();
		mv.addObject("keyname", keyname);
		return mv;
	}
	
	
	public String saveStore(MultipartFile fileName) {
		String ofname = fileName.getOriginalFilename();
		int idx = ofname.lastIndexOf(".");
		String ofheader = ofname.substring(0,idx);
		String ext = ofname.substring(idx);
		long ms = System.currentTimeMillis();
		
		StringBuilder sb = new StringBuilder();
		sb.append(ofheader);
		sb.append("_");
		sb.append(ms);
		sb.append(ext);
		
		String saveFileName = sb.toString();
		
		log.info(" 물리경로: "+Path.COR_THUMB+saveFileName);
		writeFile(fileName , saveFileName);
		
		boolean flag = writeFile(fileName , saveFileName);
		if(flag) {
			log.info("성공");
		}else {
			log.info("실패");
		}
		return saveFileName;
	}

	public boolean writeFile(MultipartFile cor_fname, String saveFileName) {
		File rDir = new File(Path.COR_THUMB);
		if(!rDir.exists()) rDir.mkdir();
		
		FileOutputStream fos = null;
		try {
			byte data[]= cor_fname.getBytes();
			fos = new FileOutputStream(Path.COR_THUMB+saveFileName);
			fos.write(data);
			fos.flush();
			
			return true;
			
		}catch(IOException ie) {
			log.info("!@$#FILE ERROR: "+ie);
			return false;
		}finally {
			try {
				fos.close();
			}catch(IOException ie) {}
		}
	}
	public void delFile(String cor_fname) {
		File file = new File(Path.COR_THUMB, cor_fname);
		if(file.exists()) {
			file.delete();
		}
	}
	
}
