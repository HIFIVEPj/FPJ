package fp.freelancerprofile.mapper;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import fp.market.domain.MarketPick;
//@Repository		 
public interface FreelancerMarketInfoMapper {
	public List<MarketPick> marketPickList (HashMap<String,Object> map);
	public int getTotalMarketPick(String mem_email);
}
