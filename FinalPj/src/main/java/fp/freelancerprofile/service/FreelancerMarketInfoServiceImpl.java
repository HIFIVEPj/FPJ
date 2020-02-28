package fp.freelancerprofile.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

import fp.freelancerprofile.controller.FreelancerMarketInfoController;
import fp.freelancerprofile.mapper.FreelancerMarketInfoMapper;
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

}
