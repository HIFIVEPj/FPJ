package fp.freelancerprofile.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

import fp.freelancerprofile.controller.FreelancerMarketInfoController;
import fp.freelancerprofile.mapper.FreelancerMarketInfoMapper;
import fp.market.domain.Freelancer;
import fp.market.domain.Market;
import fp.market.domain.MarketPayment;
import fp.market.domain.MarketPick;
import fp.market.mapper.MarketMapper;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
@Log4j
@Service
@AllArgsConstructor
public class FreelancerMarketInfoServiceImpl implements FreelancerMarketInfoService {
	
	private FreelancerMarketInfoMapper mapper;
	@Override
	public List<MarketPick> marketPickList(HashMap<String, Object> map) {
		return mapper.marketPickList(map);
	}

	@Override
	public int getTotalMarketPick(String mem_email) {
		return mapper.getTotalMarketPick(mem_email);
	}

	@Override
	public List<MarketPayment> paymentDetails(String mem_email) {
		return mapper.paymentDetails(mem_email);
	}

	@Override
	public void deleteMarketPick(HashMap<String, Object> map) {
		mapper.deleteMarketPick(map);
		
	}

	@Override
	public List<Market> getMyMarket(HashMap<String,Object> map) {
		return mapper.getMyMarket(map);
	}

	@Override
	public int getTotalMyMarket(String mem_email) {
		return mapper.getTotalMyMarket(mem_email);
	}

	@Override
	public Freelancer getFreefname(String mem_email) {
		return mapper.getFreefname(mem_email);
	}

}
