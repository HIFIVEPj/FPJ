package fp.freelancerprofile.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import fp.freelancerprofile.domain.FreeLancer;
import fp.market.domain.Market;
import fp.market.domain.MarketBuysellList;
import fp.market.domain.MarketPayment;
import fp.market.domain.MarketPick;


public interface FreelancerMarketInfoService {
	FreeLancer getFreefname(String mem_email);

	int getTotalMarketPick(String mem_email);
	List<MarketPick> marketPickList (HashMap<String,Object> map);
	void deleteMarketPick(HashMap<String,Object> map);
	
	int getTotalPaymentDetails(String mem_email);
	List<MarketPayment> paymentDetails(HashMap<String,Object> map);

	int getTotalMyMarket(String mem_email);
	List<Market> getMyMarket(HashMap<String,Object> map);
	
	int getTotalBuyMarket(String mem_email);
	List<MarketBuysellList> myBuyMarket(HashMap<String,Object> map);

	void deleteMarketPayment(long marketPaym_num);	
//거절당한마켓수정
	Market updateRefusalMarket1(long market_num);
	void updateRefusalMarket2(Market market);
	
	Map<String,String> paymentDetailsGetBuyerName(String mem_email);
}