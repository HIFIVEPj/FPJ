package fp.market.controller;

import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import fp.market.domain.Market;
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
	public ModelAndView market_list(MarketPagingVO marketVO, Model model
			,@RequestParam(value="nowPage",required=false)String nowPage
			,@RequestParam(value="cntPerPage", required=false)String cntPerPage){
		
		int total = marketService.getCountMarket();
		if(nowPage ==null &&cntPerPage ==null) {
			nowPage="1";
			cntPerPage ="9";
		}else if(nowPage == null) {
			nowPage = "1";
		}else if(cntPerPage == null) {
			cntPerPage = "9";
		}
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
	
	
	
	
	//select * from (select ROWNUM rnum, aa.* from (select * from MARKET order by MARKET_NUM desc)aa) where rnum>0 and rnum<=5;
	@RequestMapping(value = "market-details", method = RequestMethod.GET)
	public String market_details(Locale locale, Model model) {

		return "market/market-details";
	}
	
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

		return "market/market-payments_done";
	}
	
	@PostMapping("market-write")
	public String market_write(Locale locale, Model model) {

		return "market/market-details";
	}

}

