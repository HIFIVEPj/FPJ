package fp.market.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
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
	
//문의1페이지 리스트다시전송		
	public List<MarketQA> marketQAList(long market_num){		
		HashMap<String,Object> mapList=new HashMap<String,Object>();
		mapList.put("market_num", market_num);
		mapList.put("marketVOQAStart",0);
		mapList.put("marketVOQAEnd",4);
		List<MarketQA> marketQAList=marketService.getMarketQA(mapList);
		log.info("11111111#marketQAList"+marketQAList);
		
		return marketQAList;
	}
//리뷰1페이지 리스트다시전송	
	private List<MarketRev> marketRevList(long market_num) {
		HashMap<String,Object> mapList=new HashMap<String,Object>();
		int totalRev=marketService.getMarketRevCount(market_num);
		MarketPagingVO marketVORev = new MarketPagingVO(totalRev, 1, 4);

		mapList.put("market_num", market_num);
		mapList.put("marketVORevStart",1);
		mapList.put("marketVORevEnd",4);
		List<MarketRev> marketrevList=marketService.getMarketRev(mapList);
		HashMap<String,Object> voAndlist=new HashMap<String,Object>();
		log.info("11111111#marketRevList"+marketrevList);
		voAndlist.put("marketrevList", marketrevList);
		voAndlist.put("marketVORev", marketVORev);
		
		return voAndlist;
	}

//마켓문의 글insert
	@PostMapping("marketQA-insert")
	//@RequestMapping(value = "marketQA-insert", method= {RequestMethod.POST})
	public List<MarketQA> marketQA_insert(MarketQA marketQA,MarketQAFile marketQAFile,MultipartHttpServletRequest mtfRequest ){
		log.info( "1@@@marketQA"+ marketQA);
		marketService.insertMarketQA(marketQA);
		log.info( "@@@marketQA"+ marketQA);
		log.info( "@@@@@@@@marketQA.getMem_email()"+marketQA.getMem_email());
		log.info( "3@@@marketQA"+ marketQA);

		ArrayList<Object[]> list =Fileupload(mtfRequest);
		log.info("@@@@list"+list);
	//다중파일 insert
		for (int i=0 ;i<list.size(); i++) {
			String marketQAFile_fname= (String) list.get(i)[0];
			String marketQAFile_ofname=(String) list.get(i)[1];
			long marketQAFile_size=(long)list.get(i)[2];
			log.info("1111111111111111marketQAFile_ofname"+marketQAFile_ofname);
			
			if(!marketQAFile_ofname.equals("")) {
				log.info("#######marketQAFile"+marketQAFile);
				marketQAFile.setMarketQA_num(marketQA.getMarketQA_num());
				
				HashMap<String,Object> map=new HashMap<String,Object>();
				map.put("market_num",marketQA.getMarket_num());
				map.put("marketQAFile_fname",marketQAFile_fname);
				map.put("marketQAFile_ofname",marketQAFile_ofname);
				map.put("marketQAFile_size",marketQAFile_size);
				marketService.insertMarketQAFile(map);
			}
			
		}
		List<MarketQA> listqa=marketQAList(marketQA.getMarket_num());
		return listqa;
	}

	@RequestMapping(value = "marketQARE-insert", method= {RequestMethod.POST})
	public List<MarketQA> marketQARE_insert(MarketQA marketQA){
		log.info( "3333@@@marketQA"+ marketQA);
		int lev=marketQA.getMarketQA_lev();
		int sun=marketQA.getMarketQA_sun();
		marketQA.setMarketQA_lev(lev+1);
		marketQA.setMarketQA_sun(sun+1);
		
		log.info( "4444@@@marketQA"+ marketQA);
		marketService.insertMarketQA(marketQA);
		List<MarketQA> listqa=marketQAList(marketQA.getMarket_num());
		log.info("11111111111111"+listqa);
		return listqa;
		
	}

	public ArrayList<Object[]> Fileupload(MultipartHttpServletRequest mtfRequest){
		ArrayList<Object[]> list = new ArrayList<Object[]> ();
		String path = "C:\\hifive\\hifiveImages\\marketQAFiles\\";
		//학원경로
		//String path  = "C:\\Users\\user\\git\\FPJ\\FinalPj\\src\\main\\webapp\\resources\\hifiveImages\\market\\marketQAFiles\\";
		//집경로
		//String path  = "C:\\Users\\DeskTop\\git\\FPJ\\FinalPj\\src\\main\\webapp\\resources\\hifiveImages\\market\\marketQAFiles\\";
		List<MultipartFile> fileList = mtfRequest.getFiles("fname");
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
			log.info("111111111111mf"+mf);
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
	public List<Object> marketRev_insert(MarketRev marketRev
			,@RequestParam(value="nowPageR",required=false,defaultValue="1")String nowPageR
			,@RequestParam(value="cntPerPageR", required=false, defaultValue="4")String cntPerPageR)
	{
		marketService.insertMarketRev(marketRev);
		log.info("!@@#@!#@!#!marketRev:"+ marketRev.getMarketRev_num());
		log.info("!@@#@!#@!#!marketRev:"+ marketRev);
		
		int mrTotal=marketService.getMarketRevCount(marketRev.getMarket_num());
		MarketPagingVO marketVORev = new MarketPagingVO(mrTotal, Integer.parseInt(nowPageR), Integer.parseInt(cntPerPageR));

		List<Object> mrStar= new ArrayList<Object>();
		HashMap<String,Object> map = marketRevList(marketRev.getMarket_num());
		log.info("map.get(\"marketrevList\");="+map.get("marketrevList"));
		log.info("map.get(\"marketVORev\");="+map.get("marketVORev"));
		log.info("@@@@@@@@@@map;="+map);
		Integer avgStar=marketService.reloadMarketRevAVG( marketRev.getMarket_num());
		mrStar.add(map);
		mrStar.add(avgStar);
		log.info("@!@@@@@mrStar:"+mrStar);

		return mrStar;
	}
	

	@PostMapping("marketRev-update")
	public List<Object> marketRev_update(MarketRev marketRev){
		log.info("111111111111111110marketRev"+marketRev);

		String marketRev_cont=marketRev.getMarketRev_cont();
		long marketRev_num=marketRev.getMarketRev_num();
		long market_num=marketRev.getMarket_num();
		int marketRev_star=marketRev.getMarketRev_star();
		log.info("22222222222222222222marketRev"+marketRev);
		
		HashMap<String,Object>map =new HashMap<String,Object>();

		map.put("marketRev_cont", marketRev_cont);
		map.put("marketRev_num", marketRev_num);
		map.put("market_num", market_num);
		map.put("marketRev_star", marketRev_star);
		marketService.updateMarketRev(map);
		
		Integer avgStar=marketService.reloadMarketRevAVG(market_num);
		List<Object> mrStar= new ArrayList<Object>();
	//	List<MarketRev> mr = marketRevList(market_num);
		
		//mrStar.add(mr);
		mrStar.add(avgStar);
		log.info("@@mrStar"+mrStar);
		
		return mrStar;
	}
	
	@GetMapping("marketRev-delete")
	public List<Object>  deleteMarketRev(@RequestParam(value="marketRev_num") String marketRev_numS,
							   @RequestParam(value="market_num") String market_numS) 
	{
		HashMap<String,Object>map =new HashMap<String,Object>();
		long marketRev_num=Long.parseLong(marketRev_numS);
		long market_num=Long.parseLong(market_numS);
		log.info("aaaaaaaaaaaaaaaaadelete"+marketRev_numS);
		log.info("aaaaaaaaaaaaaaaaaadelete"+market_numS);
		
		map.put("marketRev_num", marketRev_num);
		map.put("market_num", market_num);
		marketService.deleteMarketRev(map);
		Integer avgStar=marketService.reloadMarketRevAVG(market_num);
		
		List<Object> mrStar= new ArrayList<Object>();
		//List<MarketRev> mr = marketRevList(market_num);
		
		//mrStar.add(mr);
		mrStar.add(avgStar);
		log.info("@!@@@@@mrStar:"+mrStar);
		return mrStar;
	}
	
	
	@GetMapping("marketQAFile_show")
	public HashMap<String, Object> marketQAFile_show(@RequestParam(value="marketQA_num") String marketQA_num,
												@RequestParam(value="market_num") String market_num){
		log.info("11111111@@@@@@@@@@@@"+marketQA_num);
		log.info("2222222222@@@@@@@@@@@@"+market_num);
		
		HashMap<String,Object>map =new HashMap<String,Object>();
		map.put("marketQA_num", marketQA_num);
		map.put("market_num", market_num);
		List<MarketQAFile> marketQAFile=marketService.marketQAFile(map);
		MarketQA marketQA=marketService.marketQAcont(map);
		
		HashMap<String,Object>mapSubmit =new HashMap<String,Object>();
		mapSubmit.put("marketQAFile",marketQAFile);
		mapSubmit.put("marketQA",marketQA);
log.info(mapSubmit);
		return mapSubmit;
	}

	@GetMapping("marketQA-delete")
	public List<MarketQA> deleteMarketQA(@RequestParam(value="marketQA_num") String marketQA_numS,
							   @RequestParam(value="market_num") String market_numS) 
	{
		HashMap<String,Object>map =new HashMap<String,Object>();
		long marketQA_num=Long.parseLong(marketQA_numS);
		long market_num=Long.parseLong(market_numS);
		log.info("aaaaaaaaaaaaaaaaaa"+marketQA_numS);
		log.info("aaaaaaaaaaaaaaaaaa"+market_numS);
		
		map.put("marketQA_num", marketQA_num);
		map.put("market_num", market_num);
		marketService.deleteMarketQA(map);
		
		List<MarketQA> list = marketQAList(market_num);
		return list;
	}
	
	@PostMapping("marketQA-update")
	public List<MarketQA> marketQA_update(MarketQA marketQA){
		log.info("000000000000000000marketQA"+marketQA);
		String marketQA_sub=marketQA.getMarketQA_sub();
		String marketQA_cont=marketQA.getMarketQA_cont();
		long marketQA_num=marketQA.getMarketQA_num();
		long market_num=marketQA.getMarket_num();
		int marketQA_ox=marketQA.getMarketQA_ox();
		HashMap<String,Object>map =new HashMap<String,Object>();
		map.put("marketQA_sub", marketQA_sub);
		map.put("marketQA_cont", marketQA_cont);
		map.put("marketQA_num", marketQA_num);
		map.put("market_num", market_num);
		map.put("marketQA_ox", marketQA_ox);
		marketService.updateMarketQA2(map);
		List<MarketQA> list = marketQAList(market_num);
		
		return list;
	}
	
	@GetMapping("marketPick-add")
	public void addPick(@RequestParam(value="market_num") String market_numS,
			   @RequestParam(value="mem_email") String mem_email) {
		Long market_num=Long.parseLong(market_numS);
		HashMap<String,Object> map = new HashMap<String,Object>();
		log.info("11111111111111111111"+market_num);log.info("22222222222222"+mem_email);
		
		map.put("market_num",market_num);
		map.put("mem_email",mem_email);
		log.info("111111111mapmapmap"+map);
		marketService.insertMarketPick(map);

	}
	@GetMapping("marketPick-del")
	public void delPick(@RequestParam(value="market_num") String market_numS,
			   @RequestParam(value="mem_email") String mem_email) {
		Long market_num=Long.parseLong(market_numS);
		HashMap<String,Object> map = new HashMap<String,Object>();
		log.info("11111111111111111111"+market_num);log.info("22222222222222"+mem_email);
		map.put("market_num",market_num);
		map.put("mem_email",mem_email);
		marketService.deleteMarketPick(map);
	}

}



	