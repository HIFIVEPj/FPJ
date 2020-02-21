package fp.corporation.service;


import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import fp.corporation.domain.Corporation;
import fp.corporation.mapper.CorporationMapper;
import fp.util.file.Path;
import lombok.extern.log4j.Log4j;
@Log4j
@Service
public class CorporationServiceImpl implements CorporationService {
	@Autowired
	CorporationMapper mapper;
	
	@Override
	public Corporation mydash_cor_select(String mem_email) {
		return mapper.mydash_cor_select(mem_email);
	} 
	
	@Override
	public void insert(Corporation corporation) {
		mapper.insert(corporation);
	}

}

