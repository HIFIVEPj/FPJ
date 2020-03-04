package fp.freelancerprofile.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

import fp.freelancerprofile.controller.FreelancerMarketInfoController;
import fp.freelancerprofile.mapper.FreelancerMarketInfoMapper;
import fp.market.domain.Freelancer;
import fp.market.domain.Market;
import fp.market.domain.MarketBuysellList;
import fp.market.domain.MarketPayment;
import fp.market.domain.MarketPick;
import fp.market.mapper.MarketMapper;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
@Log4j
@Service
@AllArgsConstructor
public class FreelancerMarketInfoServiceImpl implements FreelancerMarketInfoService {
//프로필사진띄우기		
	@Override
	public Freelancer getFreefname(String mem_email) {
		return mapper.getFreefname(mem_email);
	}
//픽리스트	
	@Override
	public int getTotalMarketPick(String mem_email) {
		return mapper.getTotalMarketPick(mem_email);
	}	
	private FreelancerMarketInfoMapper mapper;
	@Override
	//삭제
	public List<MarketPick> marketPickList(HashMap<String, Object> map) {
		return mapper.marketPickList(map);
	}
	@Override
	public void deleteMarketPick(HashMap<String, Object> map) {
		mapper.deleteMarketPick(map);
	}
//판매된마켓		
	@Override
	public int getTotalPaymentDetails(String mem_email) {
		return mapper.getTotalPaymentDetails(mem_email);
	}
	@Override
	public List<MarketPayment> paymentDetails(HashMap<String,Object> map) {
		return mapper.paymentDetails(map);
	}
//등록마켓 리스트
	@Override
	public int getTotalMyMarket(String mem_email) {
		return mapper.getTotalMyMarket(mem_email);
	}
	@Override
	public List<Market> getMyMarket(HashMap<String,Object> map) {
		return mapper.getMyMarket(map);
	}
//구매리스트	
	@Override
	public int getTotalBuyMarket(String mem_email) {
		return mapper.getTotalBuyMarket(mem_email);
	}
	@Override
	public List<MarketBuysellList> myBuyMarket(HashMap<String, Object> map) {
		return mapper.myBuyMarket(map);
	}
	@Override
	public void deleteMarketPayment(long marketPaym_num) {
		mapper.deleteMarketPayment(marketPaym_num);
		
	}

	

}
