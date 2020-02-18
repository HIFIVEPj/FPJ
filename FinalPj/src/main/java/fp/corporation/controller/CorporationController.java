
package fp.corporation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

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
	public String write(Corporation corporation) {
		log.info("!@#@$ insert:"+ corporation);
		service.insert(corporation);
	
		return "mydash_cor";
	}
}
