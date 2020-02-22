package fp.market.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import fp.market.domain.MarketQA;
import fp.market.domain.MarketQAFile;
import fp.market.domain.MarketRev;
import fp.market.service.MarketService;
import fp.market.utils.MarketPagingVO;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RestController
@Log4j
@AllArgsConstructor
public class MarketRestController {
	
	@Autowired
	MarketService marketService;
	
//마켓문의 글insert
	
	//@PostMapping("marketQA-insert")
	//@ResponseStatus(value=HttpStatus.OK)
	@RequestMapping(value = "marketQA-insert", method= {RequestMethod.POST})
	public void marketQA_insert(MarketQA marketQA,MarketQAFile marketQAFile,MultipartHttpServletRequest mtfRequest ){
		log.info( "1@@@marketQA"+ marketQA);
		marketService.insertMarketQA(marketQA);
		log.info( "3@@@marketQA"+ marketQA);
		
		ArrayList<Object[]> list =Fileupload(mtfRequest);
		for (int i=0 ;i<list.size(); i++) {
			String marketQAFile_fname= (String) list.get(i)[0];
			String marketQAFile_ofname=(String) list.get(i)[1];
			long marketQAFile_size=(long)list.get(i)[2];
			marketQAFile.setMarketQAFile_fname(marketQAFile_fname);
			marketQAFile.setMarketQAFile_ofname(marketQAFile_ofname);
			marketQAFile.setMarketQAFile_size(marketQAFile_size);
			marketService.insertMarketQAFile(marketQAFile);
		}
	}
	@RequestMapping(value = "marketQARE-insert", method= {RequestMethod.POST})
	public void marketQARE_insert(MarketQA marketQA){
		log.info( "1@@@marketQA"+ marketQA);
		int lev=marketQA.getMarketQA_lev();
		int sun=marketQA.getMarketQA_sun();
		marketQA.setMarketQA_lev(lev+1);
		marketQA.setMarketQA_sun(sun+1);
		
		log.info( "2@@@marketQA"+ marketQA);
		marketService.insertMarketQA(marketQA);
		
	}
	
	public ArrayList<Object[]> Fileupload(MultipartHttpServletRequest mtfRequest){
		ArrayList<Object[]> list = new ArrayList<Object[]> ();
		String path  = "C:\\Users\\user\\git\\FPJ\\FinalPj\\src\\main\\webapp\\resources\\hifiveImages\\market\\marketQAFiles\\";
		List<MultipartFile> fileList = mtfRequest.getFiles("file");
		File Folder = new File(path);
		// 해당 디렉토리가 없을경우 디렉토리를 생성합니다.
		if (!Folder.exists()) {
			try{
			    Folder.mkdirs(); //폴더 생성합니다.
			    System.out.println("폴더가 생성되었습니다.");
		    	} 
		    catch(Exception e){
			    e.getStackTrace();
		    	}        
	    }else {
			System.out.println("이미 폴더가 생성되어 있습니다.");
		}
		for (MultipartFile mf : fileList) {
			
            String originFileName = mf.getOriginalFilename(); // 원본 파일 명
            String fileName =System.currentTimeMillis() + originFileName;
            long fileSize = mf.getSize(); // 파일 사이즈
            String safeFile = path + System.currentTimeMillis() + originFileName;
            
            Object obj[] = {fileName,originFileName, fileSize};
            
            System.out.println("originFileName : " + originFileName);
            System.out.println("fileSize : " + fileSize);
            
            try {
                mf.transferTo(new File(safeFile));
            } catch (IllegalStateException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
            list.add(obj);
        }
		return list;
	}
	

	
	
	
	
	
	
//마켓리뷰 글insert
	@PostMapping("marketRev-insert")
	public List<MarketRev> marketRev_insert(MarketRev marketRev
			,@RequestParam(value="nowPageR",required=false,defaultValue="1")String nowPageR
			,@RequestParam(value="cntPerPageR", required=false, defaultValue="4")String cntPerPageR)
	{
		marketService.insertMarketRev(marketRev);
		log.info("!@@#@!#@!#!marketRev:"+ marketRev.getMarketRev_num());
		log.info("!@@#@!#@!#!marketRev:"+ marketRev);
		
		int mrTotal=marketService.getMarketRevCount(marketRev.getMarket_num());
		MarketPagingVO marketVORev = new MarketPagingVO(mrTotal, Integer.parseInt(nowPageR), Integer.parseInt(cntPerPageR));
		log.info("~~~~~~~~~~~~~~~~~~marketVORev.getStart() : "+marketVORev.getStart());
		log.info("~~~~~~~~~~~~~~~~~~marketVORev.getLastPage() : "+marketVORev.getLastPage());
	log.info("!@#@!@!$!@#@!marketVORev:"+marketVORev);
		HashMap<String, Object> map= new HashMap<String, Object>();
		map.put("marketVORevStart", marketVORev.getStart());
		map.put("marketVORevEnd", marketVORev.getEnd());
		map.put("market_num", marketRev.getMarket_num());
		List<MarketRev> mr = marketService.getMarketRev(map);
		log.info("@!@@@@@mr:"+mr);

		
		return mr;

	}

}
