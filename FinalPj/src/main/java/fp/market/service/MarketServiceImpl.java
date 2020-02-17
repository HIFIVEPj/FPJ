package fp.market.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

import fp.market.domain.Market;
import fp.market.domain.MarketContent;
import fp.market.domain.MarketQA;
import fp.market.domain.MarketRev;
import fp.market.mapper.MarketMapper;
import fp.market.utils.MarketPagingVO;
import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class MarketServiceImpl implements MarketService {
	private MarketMapper mapper;
	@Override
	public int getMarketCount() {
		return mapper.getMarketCount();
	}
	@Override
	public int getMarketRevCount() {
		return mapper.getMarketRevCount();
	}

	@Override
	public int getMarketQACount() {
		return mapper.getMarketQACount();
	}

	@Override
	public List<Market> getMarketList(MarketPagingVO marketVO) {
		return mapper.getMarketList(marketVO);
	}

	@Override
	public Market getMarket(long market_num) {
		return mapper.getMarket(market_num);
	}

	@Override
	public List<MarketRev> getMarketRev(HashMap<String, Object> map) {
		return mapper.getMarketRev(map);
	}
	@Override
	public List<MarketQA> getMarketQA(HashMap<String, Object> map) {
		return mapper.getMarketQA(map);
	}
	@Override
	public Market getMarketFreelancer(long market_num) {
		return mapper.getMarketFreelancer(market_num);
	}
	@Override
	public void deleteMarket(long market_num) {
		 mapper.deleteMarket(market_num);
		
	}
	@Override
	public Market updateMarket1(long market_num) {
		return mapper.updateMarket1(market_num);
	}
	@Override
	public void updateMarket2(Market market) {
		mapper.updateMarket2(market);
		
	}
	
	@Override
	public MarketQA insertMarketQA(MarketQA marketQA) {
		return mapper.insertMarketQA(marketQA);
		
	}
	

	



//	@Override
//	public MarketContent getMarketContent(long market_num) {
		// TODO Auto-generated method stub
//		return mapper.getMarketContent(market_num);
//	}

}
