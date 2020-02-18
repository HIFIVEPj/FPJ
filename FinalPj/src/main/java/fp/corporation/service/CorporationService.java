
package fp.corporation.service;

import org.springframework.web.multipart.MultipartFile;

import fp.corporation.domain.Corporation;

public interface CorporationService {
	void insert(Corporation corporation);
	String saveStore(MultipartFile cor_fname);
	boolean writeFile(MultipartFile cor_fname, String saveFileName);
}

