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

//문의1페이지  리스트 and 페이지숫자들 담은메소드			
	public HashMap<String,Object> marketQAList(long market_num,String nowPageQ,String cntPerPageQ){		
		HashMap<String,Object> mapList=new HashMap<String,Object>();
		int totalQA=marketService.getMarketQACount(market_num);
		MarketPagingVO marketVOQA= new MarketPagingVO(totalQA, Integer.parseInt(nowPageQ),Integer.parseInt(cntPerPageQ));
		
		mapList.put("market_num", market_num);
		mapList.put("marketVOQAStart",marketVOQA.getStart());
		mapList.put("marketVOQAEnd",marketVOQA.getEnd());
		List<MarketQA> marketQAList=marketService.getMarketQA(mapList);
		log.info("11111111#marketQAList"+marketQAList);
		
		HashMap<String,Object> voAndlist=new HashMap<String,Object>();		
		voAndlist.put("marketVOQA", marketVOQA);
		voAndlist.put("marketQAList", marketQAList);

		log.info("11111111#voAndlist"+voAndlist);
		
		return voAndlist;
	}
//리뷰보는페이지 리스트다시전송 (페이지 클릭하면서보는용도)	
	@GetMapping("marketQA-list")
	public  List<Object> marketQAList1(long market_num
										,@RequestParam(value="nowPageQ",required=false,defaultValue="1")String nowPageQ
										,@RequestParam(value="cntPerPageQ", required=false, defaultValue="4")String cntPerPageQ) {
		log.info("111111111nowPageQ"+nowPageQ);
		log.info("2222222cntPerPageQ"+cntPerPageQ);

		 HashMap<String,Object> map = marketQAList(market_num,nowPageQ,cntPerPageQ);
		 List<Object> mq= new ArrayList<Object>();
		 mq.add(map);
		 return mq;
		
	}		
//리뷰1페이지 리스트 and 페이지숫자들 담은메소드	
	public HashMap<String,Object> marketRevList(long market_num, String nowPageR, String cntPerPageR) {
		log.info("wwwwwnowPageR"+nowPageR);
		log.info("wwwwwwcntPerPageR"+cntPerPageR);
		HashMap<String,Object> mapList=new HashMap<String,Object>();
		int totalRev=marketService.getMarketRevCount(market_num);
		MarketPagingVO marketVORev = new MarketPagingVO(totalRev, Integer.parseInt(nowPageR), Integer.parseInt(cntPerPageR));

		mapList.put("market_num", market_num);
		mapList.put("marketVORevStart",marketVORev.getStart());
		mapList.put("marketVORevEnd",marketVORev.getEnd());
		List<MarketRev> marketrevList=marketService.getMarketRev(mapList);
		
		HashMap<String,Object> voAndlist=new HashMap<String,Object>();
		log.info("11111111#marketRevList"+marketrevList);
		voAndlist.put("marketrevList", marketrevList);
		voAndlist.put("marketVORev", marketVORev);
		return voAndlist;
	}

//리뷰보는페이지 리스트다시전송 (페이지 클릭하면서보는용도)	
	@GetMapping("marketRev-list")
	public  List<Object> marketRevList1(long market_num
										,@RequestParam(value="nowPageR",required=false,defaultValue="1")String nowPageR
										,@RequestParam(value="cntPerPageR", required=false, defaultValue="4")String cntPerPageR) {
		log.info("111111111nowPageR"+nowPageR);
		log.info("2222222cntPerPageR"+cntPerPageR);

		 HashMap<String,Object> map = marketRevList(market_num,nowPageR,cntPerPageR);
		 List<Object> mr= new ArrayList<Object>();
		 mr.add(map);
		 log.info("mr"+mr);
		 return mr;
		
	}		
	
//마켓리뷰 글 insert update delete
	@PostMapping("marketRev-insert")
	public List<Object> marketRev_insert(MarketRev marketRev
										,@RequestParam(value="nowPageR",required=false,defaultValue="1")String nowPageR
										,@RequestParam(value="cntPerPageR", required=false, defaultValue="4")String cntPerPageR)
	{
		marketService.insertMarketRev(marketRev);
		log.info("!@@#@!#@!#!marketRev:"+ marketRev.getMarketRev_num());
		log.info("!@@#@!#@!#!marketRev:"+ marketRev);
		
		//int mrTotal=marketService.getMarketRevCount(marketRev.getMarket_num());
		
		List<Object> mrStar= new ArrayList<Object>();
		HashMap<String,Object> map = marketRevList(marketRev.getMarket_num(), nowPageR, cntPerPageR);
		log.info("@@@@@@@@@@map;="+map);
		Integer avgStar=marketService.reloadMarketRevAVG( marketRev.getMarket_num());
		mrStar.add(map);
		mrStar.add(avgStar);
		log.info("@!@@@@@mrStar:"+mrStar);

		return mrStar;
	}
	@PostMapping("marketRev-update")
	public List<Object> marketRev_update(MarketRev marketRev
										,@RequestParam(value="nowPageR",required=false,defaultValue="1")String nowPageR
										,@RequestParam(value="cntPerPageR", required=false, defaultValue="4")String cntPerPageR){
//		log.info("update111111111111111110marketRev"+marketRev);
//		log.info("update11111111111111nowPageR"+nowPageR);
//		log.info("update111111111111111cntPerPageR"+cntPerPageR);

		String marketRev_cont=marketRev.getMarketRev_cont();
		long marketRev_num=marketRev.getMarketRev_num();
		long market_num=marketRev.getMarket_num();
		int marketRev_star=marketRev.getMarketRev_star();
		log.info("22222222222222222222marketRev"+marketRev);
		
		HashMap<String,Object>mapquery =new HashMap<String,Object>();

		mapquery.put("marketRev_cont", marketRev_cont);
		mapquery.put("marketRev_num", marketRev_num);
		mapquery.put("market_num", market_num);
		mapquery.put("marketRev_star", marketRev_star);
		marketService.updateMarketRev(mapquery);
		
		Integer avgStar=marketService.reloadMarketRevAVG(market_num);
		List<Object> mrStar= new ArrayList<Object>();
		HashMap<String,Object> map = marketRevList(market_num, nowPageR, cntPerPageR);
		
		mrStar.add(map);
		mrStar.add(avgStar);
		log.info("@@mrStar"+mrStar);
		
		return mrStar;
	}
	
	@GetMapping("marketRev-delete")
	public List<Object>  deleteMarketRev(@RequestParam(value="marketRev_num") String marketRev_numS
										,@RequestParam(value="market_num") String market_numS
										,@RequestParam(value="nowPageR",required=false,defaultValue="1")String nowPageR
										,@RequestParam(value="cntPerPageR", required=false, defaultValue="4")String cntPerPageR	) 
	{
		HashMap<String,Object>mapquery =new HashMap<String,Object>();
		long marketRev_num=Long.parseLong(marketRev_numS);
		long market_num=Long.parseLong(market_numS);
		
//		log.info("aaaaaaaaaaaaaaaaadelete"+marketRev_numS);
//		log.info("atgggaaaaaaaaaaadelete"+market_numS);
//		log.info("eeeeaaaaaaaaaaaaadelete"+nowPageR);
//		log.info("ssssssaaaaaadelete"+cntPerPageR);
//		
		mapquery.put("marketRev_num", marketRev_num);
		mapquery.put("market_num", market_num);
		marketService.deleteMarketRev(mapquery);
		Integer avgStar=marketService.reloadMarketRevAVG(market_num);
		
		List<Object> mrStar= new ArrayList<Object>();
		HashMap<String,Object> map = marketRevList(market_num, nowPageR, cntPerPageR);
		
		mrStar.add(map);
		mrStar.add(avgStar);
		log.info("@!@@@@@mrStar:"+mrStar);
		return mrStar;
	}
	

//마켓문의 글insert
	@PostMapping("marketQA-insert")
	public List<Object> marketQA_insert(MarketQA marketQA
										 ,MarketQAFile marketQAFile
										 ,MultipartHttpServletRequest mtfRequest 
										 ,@RequestParam(value="nowPageQ",required=false,defaultValue="1")String nowPageQ
										 ,@RequestParam(value="cntPerPageQ", required=false, defaultValue="4")String cntPerPageQ)
{
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
		HashMap<String,Object> listqa=marketQAList(marketQA.getMarket_num(),"1",cntPerPageQ);
		log.info("@listqa="+listqa);
		List<Object> mq=new ArrayList<Object>();
		mq.add(listqa);
		log.info("@@@@@mq="+mq);
		return mq;
	}

	@RequestMapping(value = "marketQARE-insert", method= {RequestMethod.POST})
	public List<Object> marketQARE_insert(MarketQA marketQA
											,@RequestParam(value="nowPageQ",required=false,defaultValue="1")String nowPageQ
											,@RequestParam(value="cntPerPageQ", required=false, defaultValue="4")String cntPerPageQ){
		log.info( "3333@@@marketQA"+ marketQA);
		int lev=marketQA.getMarketQA_lev();
		int sun=marketQA.getMarketQA_sun();
		marketQA.setMarketQA_lev(lev+1);
		marketQA.setMarketQA_sun(sun+1);
		
		log.info( "4444@@@marketQA"+ marketQA);
		marketService.insertMarketQA(marketQA);
		HashMap<String,Object> listqa=marketQAList(marketQA.getMarket_num(),nowPageQ,cntPerPageQ);
		List<Object> mq=new ArrayList<Object>();
		mq.add(listqa);
		log.info("11111111111111"+listqa);
		return mq;
		
	}
	
	@GetMapping("marketQA-delete")
	public List<Object> deleteMarketQA(@RequestParam(value="marketQA_num") String marketQA_numS
							   			,@RequestParam(value="market_num") String market_numS
							   			,@RequestParam(value="marketQA_prnum") String marketQA_prnumS
							   			,@RequestParam(value="marketQA_sun") String marketQA_sunS							   			
							   			,@RequestParam(value="nowPageQ",required=false,defaultValue="1")String nowPageQ
							   			,@RequestParam(value="cntPerPageQ", required=false, defaultValue="4")String cntPerPageQ	) 
	{
		HashMap<String,Object>map =new HashMap<String,Object>();
		long marketQA_num=Long.parseLong(marketQA_numS);
		long market_num=Long.parseLong(market_numS);
		int marketQA_prnum=Integer.parseInt(marketQA_prnumS);
		int marketQA_sun=Integer.parseInt(marketQA_sunS);
		log.info("aaaaaaaaaaaaaaaaaa"+marketQA_prnumS);
		log.info("aaaaaaaaaaaaaaaaaa"+marketQA_sunS);
		
		//map.put("marketQA_num", marketQA_num);
		map.put("market_num", market_num);
		map.put("marketQA_prnum", marketQA_prnum);
		map.put("marketQA_sun", marketQA_sun);
		marketService.deleteMarketQA(map);
		
		
		HashMap<String,Object> listqa=marketQAList(market_num,nowPageQ,cntPerPageQ);
		List<Object> mq=new ArrayList<Object>();
		mq.add(listqa);
		log.info("11111111111111"+listqa);
		return mq;
		

	}
	
	@PostMapping("marketQA-update")
	public List<Object> marketQA_update(MarketQA marketQA
										,@RequestParam(value="nowPageQ",required=false,defaultValue="1")String nowPageQ
							   			,@RequestParam(value="cntPerPageQ", required=false, defaultValue="4")String cntPerPageQ	){
		log.info("000000000000000000marketQA"+marketQA);
		log.info("0000000000000cntPerPageQ"+cntPerPageQ);
		log.info("00000000000nowPageQ"+nowPageQ);
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
		
		HashMap<String,Object> listqa=marketQAList(market_num,nowPageQ,cntPerPageQ);
		List<Object> mq=new ArrayList<Object>();
		mq.add(listqa);
		log.info("11111111111111"+listqa);
		return mq;
		
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
			log.info("mapSubmit"+mapSubmit);
			return mapSubmit;
		}

	
//market-list.jsp	
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



	