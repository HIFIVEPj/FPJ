package fp.freelancerprofile.service;

import java.util.HashMap;
import java.util.List;

import fp.market.domain.MarketPick;

public interface FreelancerMarketInfoService {
	List<MarketPick> marketPickList (HashMap<String,Object> map);
	int getTotalMarketPick(String mem_email);
}
