package fp.freelancerprofile.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import fp.freelancerprofile.service.FreelancerMarketInfoService;
import fp.market.domain.Freelancer;
import fp.market.domain.Market;
import fp.market.domain.MarketPayment;
import fp.market.domain.MarketPick;
import fp.market.utils.MarketPagingVO;
import lombok.extern.log4j.Log4j;
@Controller
@Log4j
public class FreelancerMarketInfoController {

	@Autowired
	private FreelancerMarketInfoService service;
	
	//세영 추가-마켓찜--------myfavoriteMarket
	@RequestMapping("myfavoriteMarket")
	public ModelAndView pickedMarket(HttpSession session
									,@RequestParam(value="nowPage",required=false, defaultValue="1")String nowPage
									,@RequestParam(value="cntPerPage", required=false,defaultValue="5")String cntPerPage) 
	{
		String mem_email=(String) session.getAttribute("email");
		log.info("@@@mem_email"+mem_email);
		int total=service.getTotalMarketPick(mem_email);
		log.info("#$#*&#(*$&( total: "+total);
		MarketPagingVO marketPickListVO = new MarketPagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		
		int start=marketPickListVO.getStart(); 
		int end = marketPickListVO.getEnd(); 
		HashMap<String,Object> map = new HashMap<String,Object>();
		map.put("mem_email",mem_email);
		map.put("start",start);
		map.put("end",end);
		
		List<MarketPick> mp=service.marketPickList(map);
		List<MarketPayment> mpay=service.paymentDetails(mem_email);
		Freelancer free = getFreefname(mem_email);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("profile/myfavorite_market");
		mv.addObject("mPickList",mp);
		mv.addObject("mPayList",mpay);
		mv.addObject("paging",marketPickListVO);
		mv.addObject("free",free);
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
	

	@RequestMapping("myMarket")
	public ModelAndView getMyMarket(HttpSession session
			,@RequestParam(value="nowPage",required=false, defaultValue="1")String nowPage
			,@RequestParam(value="cntPerPage", required=false,defaultValue="5")String cntPerPage) 
	{
		ModelAndView mv = new ModelAndView();
		String mem_email=(String)session.getAttribute("email");
		int total=service.getTotalMyMarket(mem_email);
		MarketPagingVO myMarketListVO = new MarketPagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		
		HashMap<String,Object> map = new HashMap<String,Object>();
		map.put("mem_email",mem_email);
		map.put("start",myMarketListVO.getStart());
		map.put("end",myMarketListVO.getEnd());
		List<Market> myMarket=service.getMyMarket(map);
		Freelancer free = getFreefname(mem_email);
		mv.setViewName("profile/myMarket");
		mv.addObject("myMarket",myMarket);
		mv.addObject("paging",myMarketListVO);
		mv.addObject("free",free);
		return mv;
		
	}
	public Freelancer getFreefname(String mem_email) {
		Freelancer free=service.getFreefname(mem_email);
		return free;
		
	}

}
