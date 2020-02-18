
package fp.market.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.log;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import fp.market.domain.Market;
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
	
	
	private MarketService marketService;


	@GetMapping("market-list")
	public ModelAndView market_list(MarketPagingVO marketVO
			,@RequestParam(value="nowPage",required=false, defaultValue="1")String nowPage
			,@RequestParam(value="cntPerPage", required=false,defaultValue="9")String cntPerPage){
		
		int total = marketService.getMarketCount();
	/*	if(nowPage ==null &&cntPerPage ==null) {
			nowPage="1";
			cntPerPage ="9";
		}else if(nowPage == null) {
			nowPage = "1";
		}else if(cntPerPage == null) {
			cntPerPage = "9";
		}*/
	    marketVO = new MarketPagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		 ModelAndView mv = new ModelAndView("market/market-list");
		 List<Market> list = marketService.getMarketList(marketVO);
		 
		 mv.addObject("list", list);
	     mv.addObject("paging", marketVO);  
	/*     //모델로하는방법 
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

		
		HashMap<String,Object> map=new HashMap<String,Object>();
		MarketRev marketRev = new MarketRev();
		MarketQA marketQA= new MarketQA();
	
		int totalRev=marketService.getMarketRevCount();//이걸씀으로서 매퍼쿼리가 작동되면서 결과값이 totalRev에 들어감(리뷰총슈)
		int totalQA=marketService.getMarketQACount();

		MarketPagingVO marketVORev = new MarketPagingVO(totalRev, Integer.parseInt(nowPageR), Integer.parseInt(cntPerPageR));
		MarketPagingVO marketVOQA = new MarketPagingVO(totalQA, Integer.parseInt(nowPageQ), Integer.parseInt(cntPerPageQ));

		marketRev.setMarket_num(market_num);
		marketQA.setMarket_num(market_num);
		//마켓리뷰페이징 
		map.put("market_num", marketRev.getMarket_num());
		map.put("marketVORevStart", marketVORev.getStart());	
		map.put("marketVORevEnd", marketVORev.getEnd());	
		//마켓문의페이징 
		map.put("market_num", marketQA.getMarket_num());//map(key,value)->밸류값을 키를 사용해서 쓴다
		map.put("marketVOQAStart",  marketVOQA.getStart());	
		map.put("marketVOQAEnd",  marketVOQA.getEnd());	

		Market m = marketService.getMarket(market_num);
	//	m=marketService.getMarketFreelancer(market_num);이렇게해도되고 메소드 따로 만들어서  아래한줄처럼해도됨 
		Market fP=getmarketPreePrefile(market_num);//하지만 왜 마켓테이블 정보는 안나오지->왜냐! 변수 m에 매퍼를 뒤집어썼기때문에 다른 변수에 넣어줘야함//리스트로하는이유는 개인당 여러개의 마켓을 가질수있으므로
		
		List<MarketRev> mr = marketService.getMarketRev(map);
		System.out.println("###"+mr);
		List<MarketQA> mq = marketService.getMarketQA(map);
		System.out.println("###$$$$$$$$$$$$$$$"+mq);
		
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("market/market-content"); // 뷰의 이름
		mv.addObject("marketRev", mr); // 뷰로 보낼 데이터 값
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
//마켓문의 글insert 
	@PostMapping("marketQA-insert")
	@ResponseBody
	public String marketQA_insert(@ModelAttribute MarketQA marketQA, ModelMap modelMap){

		log.info("dfdfsfdsfdfdsfdsfdsfds");
		MarketQA mq=marketService.insertMarketQA(marketQA);
		long d=mq.getMarketQA_num();
		System.out.println("####d:"+d);
	   modelMap.addAttribute("marketQAInfo", marketQA);	
	   return "market/market-content";

	}
//마켓문의 글insert 
	
	@RequestMapping(value = "market-posts", method = RequestMethod.GET)
	public String market_post(Locale locale, Model model) {

		return "market/market-posts";
	}
	@RequestMapping(value = "market-payments", method = RequestMethod.GET)
	public String market_payments(Locale locale, Model model) {

		return "market/market-payments";
	}
	@RequestMapping(value = "market-payments-done", method = RequestMethod.GET)
	public String market_paymentsDone(Locale locale, Model model) {

		return "market/market-payments-done";
	}
	
	@PostMapping("market-write")
	public String market_write(Locale locale, Model model) {

		return "market/market-details";
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
		log.info("market"+market);
		List<MultipartFile> fileList= mtfRequest.getFiles("fnames");
	//	String src  = "C:\\FinalPj\\MarketFiles";
		String path  = "C:\\FinalPj\\MarketFiles\\";
		for(MultipartFile mf:fileList) {
			String originFileName= mf.getOriginalFilename();
			long fileSize=mf.getSize();
			
			log.info("originFileName"+originFileName);
			log.info("fileSize"+fileSize);
			
			String safeFile=path+System.currentTimeMillis()+originFileName;
			try {
				mf.transferTo(new File(safeFile));
			}catch(IllegalStateException  e) {
				e.printStackTrace();
			}catch(IOException e) {
				e.printStackTrace();
			}
			return "redirect:market-list";
		}
		
		
		
		int cate=market.getCate_num();
		log.info("######cate:"+cate);
		marketService.updateMarket2(market);
		ModelAndView mv= new ModelAndView();
		mv.setViewName("market/market-update");
		return "redirect:market-list";
		
	}
	@GetMapping("market-delete")
	public String market_delete(@RequestParam long market_num) {
		marketService.deleteMarket(market_num);	
		return "redirect:market-list";
		
	}
	

	
}
