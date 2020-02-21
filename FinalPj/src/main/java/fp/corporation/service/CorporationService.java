
package fp.corporation.service;

import org.springframework.web.multipart.MultipartFile;

import fp.corporation.domain.Corporation;

public interface CorporationService {
	Corporation mydash_cor_select(String mem_email); 
	void insert(Corporation corporation);
}

