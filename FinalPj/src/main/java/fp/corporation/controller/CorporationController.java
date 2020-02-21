
package fp.corporation.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
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
import fp.corporation.service.CorporationService;
import fp.util.file.Path;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class CorporationController {
	@Autowired
	private CorporationService service;
	
	@RequestMapping("managed-market")
	public String managed_market(){
		return "managed-market";
	}
	@RequestMapping("managed-project")
	public ModelAndView managed_project(String mem_email){
		Corporation corporation = service.mydash_cor_select(mem_email);
		ModelAndView mv = new ModelAndView("managed-project");
		mv.addObject("cor",corporation);
		return mv;
	}
	@GetMapping("mydash_cor")
	public ModelAndView write(String mem_email) {
		Corporation corporation = service.mydash_cor_select(mem_email);
		int ran = new Random().nextInt(900000)+100000;
		ModelAndView mv = new ModelAndView("mydash_cor");
		mv.addObject("cor",corporation);
		mv.addObject("random", ran);
		return mv;
	}
	@PostMapping("mydash_cor_insert")
	public String write(@RequestParam MultipartFile fileName, Corporation corporation) {
		log.info("!@#@$ insert:"+ corporation);
		corporation.setCor_fname(saveStore(fileName));
		corporation.setCor_ofname(fileName.getOriginalFilename());
		service.insert(corporation);
		return "redirect:mydash_cor?mem_email="+corporation.getMem_email();
	}
	@PostMapping("mydash_cor_update")
	public String update(@RequestParam MultipartFile fileName, Corporation corporation) {
		Corporation cor = service.mydash_cor_select(corporation.getMem_email());
		log.info("@!#$#T$%#@$fileName:"+fileName.getOriginalFilename()+", ofname: "+cor.getCor_ofname());
		if(fileName.getOriginalFilename() != "") {
			String str = cor.getCor_fname();
			delFile(str);
			corporation.setCor_fname(saveStore(fileName));
			corporation.setCor_ofname(fileName.getOriginalFilename());
			service.mydash_cor_update(corporation);
			return "redirect:mydash_cor?mem_email="+corporation.getMem_email();
		}
		corporation.setCor_fname(cor.getCor_fname());
		corporation.setCor_ofname(cor.getCor_ofname());
		 service.mydash_cor_update(corporation);
		return "redirect:mydash_cor?mem_email="+corporation.getMem_email();
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

