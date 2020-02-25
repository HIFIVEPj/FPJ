
package fp.market.service;

import java.util.HashMap;
import java.util.List;

import fp.corporation.domain.Corporation;
import fp.market.domain.Freelancer;
import fp.market.domain.Market;
import fp.market.domain.MarketQA;
import fp.market.domain.MarketQAFile;
import fp.market.domain.MarketRev;
import fp.market.utils.MarketPagingVO;

public interface MarketService {
	 int getMarketCount(); 
	 //리뷰 페이징에 필요한 총 리뷰 수	 
	 int getMarketRevCount(long market_num);
	//문의 페이징에 필요한 총 문의 수 
	 int getMarketQACount(long market_num);
	 
	 List<Market> getMarketList(MarketPagingVO marketVO);
//	 Market getMarketContent(long market_num);
	 Market getMarket(long market_num);
	 int getMarketStar(long market_num);
//	 MarketRev getMarketRev(MarketPagingVO marketVO,long market_num);
	 List<MarketRev> getMarketRev(HashMap<String, Object> map);
	 List<MarketQA> getMarketQA(HashMap<String, Object> map);
	 Market getMarketFreelancer(long market_num);
	 void deleteMarket(long market_num);
	 Market updateMarket1(long market_num);
	 void updateMarket2(Market market);
	 void insertMarket(Market market);
	
	 void insertMarketRev(MarketRev mareketRev);
	 
	 void insertMarketQA(MarketQA marketQA);
	 void insertMarketQAFile(HashMap<String, Object> map);
	 
	 List<MarketQAFile> marketQAFile(HashMap<String, Object> map);
	 MarketQA marketQAcont(HashMap<String, Object> map);
	 
	 void deleteMarketQA (HashMap<String, Object> map);
	 void updateMarketQA2 (HashMap<String, Object> map);
	
	 void deleteMarketRev (HashMap<String, Object> map);
	 void updateMarketRev (HashMap<String, Object> map);
	 // List<Freelancer> getMarketRevFree(long market_num);
	// List<Corporation> getMarketRevCor(long market_num);

}
