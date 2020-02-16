package fp.market.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import fp.market.domain.MarketQA;
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
	@PostMapping("marketQA-insert")
	@ResponseBody
	public String marketQA_insert(MarketQA marketQA){
		log.info("dfdfsfdsfdfdsfdsfdsfds");
		MarketQA mq=marketService.insertMarketQA(marketQA);
		long d=mq.getMarketQA_num();
		System.out.println("####d:"+d);
	   return "market/market-content";
	}
	
//마켓리뷰 글insert
	@PostMapping("marketRev-insert")
	public @ResponseBody List<MarketRev> marketRev_insert(MarketRev marketRev
			,@RequestParam(value="nowPageR",required=false,defaultValue="1")String nowPageR
			,@RequestParam(value="cntPerPageR", required=false,defaultValue="4" )String cntPerPageR)
	{
		marketService.insertMarketRev(marketRev);
		log.info("!@@#@!#@!#!marketRev:"+ marketRev.getMarketRev_num());
		log.info("!@@#@!#@!#!marketRev:"+ marketRev);
		
		int mrTotal=marketService.getMarketRevCount(marketRev.getMarket_num());
		MarketPagingVO marketVORev = new MarketPagingVO(mrTotal,Integer.parseInt(nowPageR),Integer.parseInt(cntPerPageR));
	
		HashMap<String, Object> map= new HashMap<String, Object>();
		map.put("marketVORevStart", marketVORev.getStart());
		map.put("marketVORevEnd", marketVORev.getEnd());
		map.put("market_num", marketRev.getMarket_num());
		List<MarketRev> mr = marketService.getMarketRev(map);
		
		return mr;

	} 	
}
