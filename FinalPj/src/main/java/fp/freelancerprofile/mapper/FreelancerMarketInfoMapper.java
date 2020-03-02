package fp.freelancerprofile.mapper;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import fp.market.domain.Freelancer;
import fp.market.domain.Market;
import fp.market.domain.MarketPayment;
import fp.market.domain.MarketPick;
//@Repository		 
public interface FreelancerMarketInfoMapper {
	public List<MarketPick> marketPickList (HashMap<String,Object> map);
	public int getTotalMarketPick(String mem_email);
	public List<MarketPayment> paymentDetails(String mem_email);
	public void deleteMarketPick(HashMap<String,Object> map);
	public List<Market> getMyMarket(HashMap<String,Object> map);
	public int getTotalMyMarket(String mem_email);
	public Freelancer getFreefname(String mem_email);
}
