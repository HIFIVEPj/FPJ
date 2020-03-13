package fp.market.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
	public String insertMarketPayment(@RequestBody HashMap<String,Object> map) {
		Map<String, Object> payinfoMarket = new HashMap<String, Object>();
		payinfoMarket.put("map", map);
		marketService.insertPaymentMarket(payinfoMarket);
	//	marketService.insertPaymentMarket(map);바로 맵으로 받아버리면 오류남1111오류
		return "map";
	}
	@RequestMapping(value = "market-paymentsDone", method = RequestMethod.GET)
	public String marketpaymentsDone(MarketPayment marketPayment) {
		return "market/market-payments-done";
	}
}
