
package fp.corporation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import fp.corporation.domain.Corporation;
import fp.corporation.service.CorporationService;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class CorporationController {
	@Autowired
	private CorporationService service;

	@GetMapping("mydash_cor")
	public String write() {
		return "mydash_cor";
	}
	@PostMapping("mydash_cor")
	public String write(@RequestParam MultipartFile cor_fname, Corporation corporation) {
		log.info("!@#@$ insert:"+ corporation);
		//service.insert(corporation);
		
		log.info("@!#&*(&!#*cor_fname: "+cor_fname);
		String ofname = cor_fname.getOriginalFilename();
		if(ofname != null)ofname.trim();
		if(ofname.length()!=0) {
			String url = service.saveStore(cor_fname);
		}
	
		return "mydash_cor";
	}
}

