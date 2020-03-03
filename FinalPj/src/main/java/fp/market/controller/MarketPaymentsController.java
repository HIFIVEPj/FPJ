package fp.market.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import fp.market.domain.Market;
import fp.market.domain.MarketPayment;
import fp.market.service.MarketService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@AllArgsConstructor
public class MarketPaymentsController {
	@Autowired
	private MarketService marketService;
	
	@RequestMapping(value = "market-payments", method = RequestMethod.POST)
	public ModelAndView market_payments(MarketPayment marketPayment) {
		//String email=marketPayment.getMem_email();
		//float mp=marketPayment.getMarketPaym_freeRate();
		//long mpp=marketPayment.getMarketPaym_price();
		//log.info("@@@@@@@@@결제수수료:"+mp);
		//log.info("@@@@@@@@@결제금액:"+mpp);
		String freeName=marketService.getFreeName(marketPayment.getMarket_num());
		Market marketInfo=marketService.getMarket(marketPayment.getMarket_num());
		long revCount=marketService.getMarketRevCount(marketPayment.getMarket_num());
		Integer starAvg=marketService.getMarketStar(marketPayment.getMarket_num());
		log.info("!!!!!!!!!!starAvg="+starAvg);
		
		if(starAvg==null) {
			starAvg=0;
		}
		log.info("@@@@@message"+starAvg);
		if(revCount==0) {
			revCount=0;
		}
		ModelAndView mv = new ModelAndView();
		mv.addObject("mPayment",marketPayment);
		mv.addObject("market",marketInfo);
		mv.addObject("freeName",freeName);
		mv.addObject("revCount",revCount);
		mv.addObject("starAvg",starAvg);
		mv.setViewName("market/market-payments");
		return mv;	
	} 
	@ResponseBody 
	@RequestMapping(value = "market-payments-insert", method = RequestMethod.POST)
	public String insertMarketPayment(@RequestBody HashMap<String,Object> map,HttpSession session) {
	//	log.info("!!!!!!!!!!!!!!!map!!!!!!!!!!!!!"+map);
	//	log.info("!!!!!!!!!!!!!!!rsp!!!!!!!!!!!!!"+map.get("rsp"));
		String mem_emailSession=(String)session.getAttribute("email");
		String market_numS= (String) map.get("market_num");
		long market_num=Long.parseLong(market_numS);
		Market market =marketService.getMarketFreelancer(market_num);
		String mem_emailFree=market.getFreelancer().getMem_email();
	//	log.info("!!!!!!!!!!!!!!market!!!!!!!!!!!!!!"+market);
		
		Map<String, Object> payinfoMarket = new HashMap<String, Object>();
	//곻통결제정보insert
		payinfoMarket.put("map", map.get("rsp"));
		marketService.insertPaymentMarket(payinfoMarket);
	//판매자기준내역리스트insert
		payinfoMarket.put("mem_email", mem_emailFree);
		payinfoMarket.put("market_num", market_num);
		marketService.insertPaymentMarket2(payinfoMarket);
	//구매자기준마켓구매내역insert	
		HashMap<String, Object> buyinfoMarket = new HashMap<String, Object>();
		buyinfoMarket.put("mem_email",mem_emailSession);
		buyinfoMarket.put("market_num",market_num);
		marketService.insertMarketBuy(buyinfoMarket);
		
	//	marketService.insertPaymentMarket(map);바로 맵으로 받아버리면 오류남1111오류
		return "map";
	}
	@RequestMapping(value = "market-paymentsDone", method = RequestMethod.GET)
	public String marketpaymentsDone(MarketPayment marketPayment) {
		return "market/market-payments-done";
	}
}
