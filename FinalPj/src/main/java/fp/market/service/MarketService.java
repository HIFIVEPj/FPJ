package fp.market.service;

import java.util.List;

import fp.market.domain.Market;
import fp.market.utils.MarketPagingVO;

public interface MarketService {
	 int getCountMarket();
	 List<Market> getMarketList(MarketPagingVO marketVO);
	 
}
