package fp.market.service;

import java.util.HashMap;
import java.util.List;

import fp.market.domain.Market;
import fp.market.domain.MarketQA;
import fp.market.domain.MarketRev;
import fp.market.utils.MarketPagingVO;

public interface MarketService {
	 int getMarketCount();
	 
	 //리뷰 페이징에 필요한 총 리뷰 수	 
	int getMarketRevCount();
	
	//문의 페이징에 필요한 총 문의 수 
	 int getMarketQACount();
	 
	 List<Market> getMarketList(MarketPagingVO marketVO);
//	 Market getMarketContent(long market_num);
	 Market getMarket(long market_num);
//	 MarketRev getMarketRev(MarketPagingVO marketVO,long market_num);
	 List<MarketRev> getMarketRev(HashMap<String, Object> map);
	 List<MarketQA> getMarketQA(HashMap<String, Object> map);
	 Market getMarketFreelancer(long market_num);
	 void deleteMarket(long market_num);
	 Market updateMarket1(long market_num);
	 void updateMarket2(Market market);
	 MarketQA insertMarketQA(MarketQA marketQA);


}
