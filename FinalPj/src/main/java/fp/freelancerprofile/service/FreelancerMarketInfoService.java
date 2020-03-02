package fp.freelancerprofile.service;

import java.util.HashMap;
import java.util.List;

import fp.market.domain.Freelancer;
import fp.market.domain.Market;
import fp.market.domain.MarketPayment;
import fp.market.domain.MarketPick;

public interface FreelancerMarketInfoService {
	List<MarketPick> marketPickList (HashMap<String,Object> map);
	int getTotalMarketPick(String mem_email);
	List<MarketPayment> paymentDetails(String mem_email);
	void deleteMarketPick(HashMap<String,Object> map);
	List<Market> getMyMarket(HashMap<String,Object> map);
	int getTotalMyMarket(String mem_email);
	Freelancer getFreefname(String mem_email);
}
