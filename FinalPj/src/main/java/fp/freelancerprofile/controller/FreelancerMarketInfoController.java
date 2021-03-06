package fp.freelancerprofile.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import fp.freelancerprofile.domain.FreeLancer;
import fp.freelancerprofile.service.FreelancerMarketInfoService;
import fp.market.controller.MarketController;
import fp.market.domain.Market;
import fp.market.domain.MarketBuysellList;
import fp.market.domain.MarketPayment;
import fp.market.domain.MarketPick;
import fp.market.service.MarketService;
import fp.market.utils.MarketPagingVO;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
@Controller
@Log4j
@AllArgsConstructor
public class FreelancerMarketInfoController {

	@Autowired
	private FreelancerMarketInfoService service;
	@Autowired
	private MarketController marketcontroller;

	//세영 추가-마켓찜--------myfavoriteMarket,구매마켓
	@RequestMapping("myfavoriteMarket")
	public ModelAndView pickedMarket(HttpSession session
									,@RequestParam(value="nowPageP",required=false, defaultValue="1")String nowPageP
									,@RequestParam(value="cntPerPageP", required=false,defaultValue="5")String cntPerPageP
									,@RequestParam(value="nowPageB",required=false, defaultValue="1")String nowPageB
									,@RequestParam(value="cntPerPageB", required=false,defaultValue="5")String cntPerPageB) 
	{
		int nowPagePI=Integer.parseInt(nowPageP);
		int cntPerPagePI=Integer.parseInt(cntPerPageP);
		int nowPageBI=Integer.parseInt(nowPageB);
		int cntPerPageBI= Integer.parseInt(cntPerPageB);
		String selectTab="";
		if(nowPageBI>1) {//durlt
			selectTab="tab2";
		}else {
			selectTab="tab1";
		}
		
		String mem_email=(String) session.getAttribute("email");
	
		int total=service.getTotalMarketPick(mem_email);
		int totalbm=service.getTotalBuyMarket(mem_email);

		MarketPagingVO marketPickListVO = new MarketPagingVO(total, nowPagePI, cntPerPagePI);
		MarketPagingVO marketBuyListVO = new MarketPagingVO(totalbm,nowPageBI, cntPerPageBI);
		
		int start=marketPickListVO.getStart(); 
		int end = marketPickListVO.getEnd(); 
		
		int start2=marketBuyListVO.getStart(); 
		int end2 = marketBuyListVO.getEnd(); 
		
		HashMap<String,Object> map = new HashMap<String,Object>();
		HashMap<String,Object> map2 = new HashMap<String,Object>();
		map.put("mem_email",mem_email);
		map.put("start",start);
		map.put("end",end);
		map2.put("mem_email",mem_email);
		map2.put("start",start2);
		map2.put("end",end2);
		
		List<MarketPick> mp=service.marketPickList(map);
		List<MarketBuysellList> mbuy=service.myBuyMarket(map2);
		
		FreeLancer free = getFreefname(mem_email);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("profile/myfavorite_market");
		mv.addObject("mPickList",mp);
		mv.addObject("mBuyList",mbuy);
		mv.addObject("paging",marketPickListVO);
		mv.addObject("paging2",marketBuyListVO);
		mv.addObject("free",free);
		mv.addObject("selectTab",selectTab);
		return mv;
	}

	@RequestMapping("myPaymentMarket")
	public ModelAndView getPaymentDetails(HttpSession session
			,@RequestParam(value="nowPage",required=false, defaultValue="1")String nowPage
			,@RequestParam(value="cntPerPage", required=false,defaultValue="5")String cntPerPage) 	
	{
		return null;
	
	}
	//세영 추가-마켓찜--------myfavoriteMarket
	@RequestMapping("deleteMarketPick")
	public String deleteMarketPick(HttpSession session, @RequestParam long marketP_num) {
		HashMap<String,Object> map =new HashMap<String,Object>();
		String mem_email =(String)session.getAttribute("email");
		map.put("mem_email",mem_email);
		map.put("marketP_num", marketP_num);
		service.deleteMarketPick(map);

		return "redirect:myfavoriteMarket";
	}
/*	
	@RequestMapping("myMarket")
	public ModelAndView getMyMarket(HttpSession session
			,@RequestParam(value="nowPage",required=false, defaultValue="1")String nowPage
			,@RequestParam(value="cntPerPage", required=false,defaultValue="5")String cntPerPage) 
	{
		ModelAndView mv = new ModelAndView();
		String mem_email=(String)session.getAttribute("email");
		int totalMymarket=service.getTotalMyMarket(mem_email);
		int totalSell=service.getTotalPaymentDetails(mem_email);
		
		MarketPagingVO myMarketListVO = new MarketPagingVO(totalMymarket, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		//MarketPagingVO myMarketSellVO = new MarketPagingVO(total2, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		
		HashMap<String,Object> map = new HashMap<String,Object>();
		//HashMap<String,Object> map2 = new HashMap<String,Object>();
		
		map.put("mem_email",mem_email);
		map.put("start",myMarketListVO.getStart());
		map.put("end",myMarketListVO.getEnd());
		
		//map2.put("mem_email",mem_email);
		//map2.put("start",myMarketSellVO.getStart());
		//map2.put("end",myMarketSellVO.getEnd());
		
		List<Market> myMarket=service.getMyMarket(map);
		List<MarketPayment> mySellMarket=service.paymentDetails(map);
		
		Freelancer free = getFreefname(mem_email);
		mv.setViewName("profile/myMarket");
		mv.addObject("myMarket",myMarket);
		mv.addObject("mySellMarket",mySellMarket);
		mv.addObject("paging",myMarketListVO);
		//mv.addObject("paging2",myMarketSellVO);
		mv.addObject("free",free);
		return mv;
		
	}
*/
	//나의마켓
	@RequestMapping("myMarket1")
	public ModelAndView getMyMarket1(HttpSession session
			,@RequestParam(value="nowPage",required=false, defaultValue="1")String nowPage
			,@RequestParam(value="cntPerPage", required=false,defaultValue="5")String cntPerPage) 
	{
		ModelAndView mv = new ModelAndView();
		String mem_email=(String)session.getAttribute("email");
		int totalMymarket=service.getTotalMyMarket(mem_email);
		int totalSell=service.getTotalPaymentDetails(mem_email);
		
		MarketPagingVO myMarketListVO = new MarketPagingVO(totalMymarket, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
			
		HashMap<String,Object> map = new HashMap<String,Object>();
		
		map.put("mem_email",mem_email);
		map.put("start",myMarketListVO.getStart());
		map.put("end",myMarketListVO.getEnd());

		List<Market> myMarket=service.getMyMarket(map);
		
		FreeLancer free = getFreefname(mem_email);
		mv.setViewName("profile/myMarket1");
		mv.addObject("myMarket",myMarket);
		mv.addObject("paging",myMarketListVO);
		mv.addObject("free",free);
		return mv;
		
	}
	//판매마켓
	@RequestMapping("myMarket2")
	public ModelAndView getMyMarket2(HttpSession session
			,@RequestParam(value="nowPage",required=false, defaultValue="1")String nowPage
			,@RequestParam(value="cntPerPage", required=false,defaultValue="5")String cntPerPage) 
	{
		ModelAndView mv = new ModelAndView();
		String mem_email=(String)session.getAttribute("email");

		int totalSell=service.getTotalPaymentDetails(mem_email);
				
		MarketPagingVO myMarketSellVO = new MarketPagingVO(totalSell, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));		
	
		HashMap<String,Object> map = new HashMap<String,Object>();
		
		map.put("mem_email",mem_email);
		map.put("start",myMarketSellVO.getStart());
		map.put("end",myMarketSellVO.getEnd());
		Map<String,String> memberMap =new HashMap<String,String>();
		List<Map<String,String>> member=new ArrayList<Map<String,String>>();
		
		List<MarketPayment> mySellMarket=service.paymentDetails(map);
		log.info("!!!!!!!@@@@@@@@@@@@@@@@@mySellMarket"+mySellMarket);
		for(int i=0;i<mySellMarket.size();i++) {
			String email=mySellMarket.get(i).getMem_emailBuy();
			memberMap =service.paymentDetailsGetBuyerName(email);
			member.add(memberMap);
		}
		
		log.info("!!!!!!!@@@@@@@@@@@@@@@@@member"+member);
		FreeLancer free = getFreefname(mem_email);
		mv.setViewName("profile/myMarket2");
		mv.addObject("mySellMarket",mySellMarket);
		mv.addObject("paging",myMarketSellVO);
		mv.addObject("member",member);
		mv.addObject("free",free);
		return mv;
		
	}
	//구매마켓
	@RequestMapping("myMarket3")
	public ModelAndView getMyMarket3(HttpSession session
			,@RequestParam(value="nowPage",required=false, defaultValue="1")String nowPage
			,@RequestParam(value="cntPerPage", required=false,defaultValue="5")String cntPerPage) 
	{
		String mem_email=(String) session.getAttribute("email");

		int total=service.getTotalBuyMarket(mem_email);
		MarketPagingVO marketBuyListVO = new MarketPagingVO(total,Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));

		int start=marketBuyListVO.getStart(); 
		int end = marketBuyListVO.getEnd(); 
		
		HashMap<String,Object> map = new HashMap<String,Object>();
		
		map.put("mem_email",mem_email);
		map.put("start",start);
		map.put("end",end);
		
		List<MarketBuysellList> mbuy=service.myBuyMarket(map);
		log.info("!!!!!!!!!!!mbuy"+mbuy);
		FreeLancer free = getFreefname(mem_email);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("profile/myMarket3");
		mv.addObject("mBuyList",mbuy);
		mv.addObject("paging",marketBuyListVO);
		mv.addObject("free",free);
		return mv;
		
	}
	public FreeLancer getFreefname(String mem_email) {
		FreeLancer free=service.getFreefname(mem_email);
		return free;
		
	}
	@GetMapping("delete-marketPay")
	public String deleteMarketPayment(@RequestParam(value = "marketPay_num", required = false) String marketPaym_numS) {
		log.info("11111111marketPaym_num"+marketPaym_numS);
		Long marketPaym_num = Long.parseLong(marketPaym_numS);
		service.deleteMarketPayment(marketPaym_num);
		return "redirect:myMarket2";

		
	}
//거절당한 마켓 수정하기	
	@GetMapping("market-updateRefusalMarket1")
	public ModelAndView update1(@RequestParam long market_num){
		Market m=service.updateRefusalMarket1(market_num);
		ModelAndView mv= new ModelAndView();
		mv.setViewName("market/market-update");
		mv.addObject("market", m);
		return mv;		
	}

	@PostMapping("market-updateRefusalMarket2")
	public String update2(long market_num,Market market,MultipartHttpServletRequest mtfRequest) {
		log.info("111!!!!!!!market:"+market);
		log.info("222!!!!!!!mtfRequest:"+mtfRequest);
		List<String> list=marketcontroller.doFileupload(mtfRequest);
		String originFileName=list.get(0);
		log.info("!!!!!!!originFileName:"+originFileName);
		String fileName=list.get(1);
		market.setMarket_ofname(originFileName);
		market.setMarket_fname(fileName);
		market.setMarket_num(market_num);
		log.info("!!!!!!!market:"+market);
		service.updateRefusalMarket2(market);		
		return "redirect:myMarket1";
	}


}