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
	public void insert(Corporation corporation) {
		mapper.insert(corporation);
	}
	@Override
	public String saveStore(MultipartFile cor_fname) {
		String ofname = cor_fname.getOriginalFilename();
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
		writeFile(cor_fname , saveFileName);
		
		boolean flag = writeFile(cor_fname , saveFileName);
		if(flag) {
			log.info("성공");
		}else {
			log.info("실패");
		}
		return Path.COR_THUMB+saveFileName;
	}
	
	@Override
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
}

