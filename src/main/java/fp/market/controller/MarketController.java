

package fp.market.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import java.util.Vector;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import fp.market.domain.Market;
import fp.market.domain.MarketPick;
import fp.market.domain.MarketQA;
import fp.market.domain.MarketRev;
import fp.market.service.MarketService;
import fp.market.utils.MarketPagingVO;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;



@Log4j
@Controller
@AllArgsConstructor
public class MarketController {
	
	@Autowired
	private MarketService marketService;


	@GetMapping("market-list")
	public ModelAndView market_list(
			@RequestParam(value="nowPage",required=false, defaultValue="1")String nowPage
			,@RequestParam(value="cntPerPage", required=false,defaultValue="9")String cntPerPage,HttpSession session){
		int total = marketService.getMarketCount();
	/*	if(nowPage ==null &&cntPerPage ==null) {
			nowPage="1";
			cntPerPage ="9";
		}else if(nowPage == null) {
			nowPage = "1";
		}else if(cntPerPage == null) {
			cntPerPage = "9";
		}*/
		String mem_email=(String) session.getAttribute("email");
		log.info("1@#@!#!#@!mem_mail"+mem_email);
		MarketPagingVO marketVO = new MarketPagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		 ModelAndView mv = new ModelAndView("market/market-list");
		 List<Market> list = marketService.getMarketList(marketVO);
		 
		 List<MarketPick> pickState=new ArrayList<MarketPick>();
		 ArrayList<Long> marketNumList = new ArrayList<Long>();
		 //세션이메일이 존재할때
		 if(mem_email != null) {
			 if(marketService.pickState(mem_email).size() != 0) {
				 pickState = marketService.pickState(mem_email);
				 for(int i=0;i<pickState.size();i++) {
					long marketNum=pickState.get(i).getMarket_num();
					marketNumList.add(marketNum);
				 }
			 }
		 }else {
			//세션이메일이 존재하지 않을 때	 
		 }
		 log.info("~!!~!~@!#@!$#@$@#$!#!pickState"+pickState);
		 mv.addObject("list", list);
	     mv.addObject("paging", marketVO);  
	     mv.addObject("marketNumList", marketNumList); 


	/*    
	 *  //모델로하는방법 
		marketVO = new MarketPagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		model.addAttribute("paging", marketVO);
		model.addAttribute("market", marketService.getMarketList(marketVO));*/
	     
		return mv;
	}
	
	
	@GetMapping("market-content")
	public ModelAndView market_content(@RequestParam long market_num
			,@RequestParam(value="nowPageQ",required=false)String nowPageQ
			,@RequestParam(value="cntPerPageQ", required=false)String cntPerPageQ
			,@RequestParam(value="nowPageR",required=false)String nowPageR
			,@RequestParam(value="cntPerPageR", required=false)String cntPerPageR) 
	{
		if(nowPageQ ==null &&cntPerPageQ ==null) {//문의 페이징
			nowPageQ="1";
			cntPerPageQ ="4";
		}else if(nowPageQ == null) {
			nowPageQ = "1";
		}else if(cntPerPageQ == null) {
			cntPerPageQ = "4";
		}
		
		if(nowPageR ==null &&cntPerPageR ==null) {//리뷰 페이징
			nowPageR="1";
			cntPerPageR ="4";
		}else if(nowPageR == null) {
			nowPageR = "1";
		}else if(cntPerPageR == null) {
			cntPerPageR = "4";
		}

		HashMap<String,Object> mapr=new HashMap<String,Object>();
		HashMap<String,Object> mapq=new HashMap<String,Object>();
		MarketRev marketRev = new MarketRev();
		MarketQA marketQA= new MarketQA();
	
		int totalRev=marketService.getMarketRevCount(market_num);//이걸씀으로서 매퍼쿼리가 작동되면서 결과값이 totalRev에 들어감(리뷰총슈)	
		int totalQA=marketService.getMarketQACount(market_num);


		MarketPagingVO marketVORev = new MarketPagingVO(totalRev, Integer.parseInt(nowPageR), Integer.parseInt(cntPerPageR));
		MarketPagingVO marketVOQA = new MarketPagingVO(totalQA, Integer.parseInt(nowPageQ), Integer.parseInt(cntPerPageQ));
		log.info("#######marketVORev.getStart():"+marketVORev.getStart());
		log.info("#######marketVORev.getStart():"+marketVORev.getEnd());
		log.info("#######marketVOQA.getStart():"+marketVOQA.getStart());
		log.info("#######marketVOQA.getStart():"+marketVOQA.getEnd());
		marketRev.setMarket_num(market_num);
		marketQA.setMarket_num(market_num);
		//마켓리뷰페이징 
		mapr.put("market_num", marketRev.getMarket_num());
		mapr.put("marketVORevStart", marketVORev.getStart());	
		mapr.put("marketVORevEnd", marketVORev.getEnd());	
		//마켓문의페이징 
		mapq.put("market_num", marketQA.getMarket_num());//map(key,value)->밸류값을 키를 사용해서 쓴다
		mapq.put("marketVOQAStart",  marketVOQA.getStart());	
		mapq.put("marketVOQAEnd",  marketVOQA.getEnd());	
		log.info("%%%%%%%%%map:"+mapr);
		Market m = marketService.getMarket(market_num);
		
	
	//	m=marketService.getMarketFreelancer(market_num);이렇게해도되고 메소드 따로 만들어서  아래한줄처럼해도됨 
		Market fP=getmarketPreePrefile(market_num);//하지만 왜 마켓테이블 정보는 안나오지->왜냐! 변수 m에 매퍼를 뒤집어썼기때문에 다른 변수에 넣어줘야함//리스트로하는이유는 개인당 여러개의 마켓을 가질수있으므로
	
		int mrStar=0;
		List<MarketRev> mr = marketService.getMarketRev(mapr);	
		if(mr.size() !=0) {//특정마켓 별점평균을 구하는데 리뷰가 없을시 널이떠서 조건걸어줌
			mrStar = marketService.getMarketStar(market_num);
			//log.info("!@!@!@!mr"+mr.get(0));
		}
		System.out.println("###"+mr);
		List<MarketQA> mq = marketService.getMarketQA(mapq);
		System.out.println("###$$$$$$$$$$$$$$$"+mq);
		
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("market/market-content"); // 뷰의 이름
		mv.addObject("marketRev", mr); // 뷰로 보낼 데이터 값
		mv.addObject("mrStar", mrStar); // 뷰로 보낼 데이터 값
		mv.addObject("marketQA", mq);
		mv.addObject("market", m);
		mv.addObject("freeProfile", fP);
		mv.addObject("marketVORev", marketVORev);//도메인끼리는 정보가 다담기는데 페이징 정보는 안담김 왜냐? 디비에 테이블이 없어서? 같은 도메인 패키지에 없어서?
		mv.addObject("marketVOQA", marketVOQA);
		return mv;
		
	}
	//마켓에 필요한 프리랜서정보를 리턴하는 메소드 
	public Market getmarketPreePrefile(long market_num){
		Market marketFreelancer;
		marketFreelancer=marketService.getMarketFreelancer(market_num);
		return marketFreelancer;
	}
	@RequestMapping(value = "market-posts", method = RequestMethod.GET)
	public String market_post(Locale locale, Model model) {

		return "market/market-posts";
	}

	@PostMapping("market-insert")
	public String market_insert(Market market,MultipartHttpServletRequest mtfRequest,@SessionAttribute("email") String email) {

		String originFileName=Fileupload(mtfRequest).get(0);
		String fileName=Fileupload(mtfRequest).get(1);
		long free_code=marketService.getFreecode(email);
		
		market.setFree_code(free_code);
		market.setMarket_ofname(originFileName);
		market.setMarket_fname(fileName);
		marketService.insertMarket(market);
		return "redirect:market-list";
	}	

	@PostMapping("market-update")
	public ModelAndView market_update1(@RequestParam long market_num){
		Market m=marketService.updateMarket1(market_num);
		ModelAndView mv= new ModelAndView();
		mv.setViewName("market/market-update");
		mv.addObject("market", m);
		return mv;		

	}

	@PostMapping("market-update2")
	public String market_update2(long market_num,Market market,MultipartHttpServletRequest mtfRequest) {
		List<String> list=Fileupload(mtfRequest);
		String originFileName=list.get(0);
		log.info("!!!!!!!originFileName:"+originFileName);
		String fileName=list.get(1);
		market.setMarket_ofname(originFileName);
		market.setMarket_fname(fileName);
		market.setMarket_num(market_num);
		log.info("!!!!!!!market:"+market);
		marketService.updateMarket2(market);		
		return "redirect:market-list";
	}
	@GetMapping("market-delete")
	public String market_delete(@RequestParam long market_num) {
		marketService.deleteMarket(market_num);	
		return "redirect:market-list";
		
	}
	public List<String> Fileupload(MultipartHttpServletRequest mtfRequest) {
		//String path  = "C:\\Users\\user\\git\\FPJ\\FinalPj\\src\\main\\webapp\\resources\\hifiveImages\\market\\marketThumbnails\\";
		String path  = "C:\\hifive\\hifiveImages\\marketThumbnails\\";
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
		MultipartFile mf = mtfRequest.getFile("ofname");
		String originFileName= mf.getOriginalFilename();
		String fileName= System.currentTimeMillis()+originFileName;
		String safeFile=path+System.currentTimeMillis()+originFileName;
		//long fileSize=mf.getSize();
		log.info("333@@@@safeFile:"+safeFile);
		try {
			mf.transferTo(new File(safeFile));// 폴더에파일저장메소드
		}catch(IllegalStateException  e) {
			e.printStackTrace();
		}catch(IOException e) {
			e.printStackTrace();
		}
		List<String> list = new Vector<>();
		list.add(originFileName);
		list.add(fileName);
		return list;
	}


	
}
