package fp.market.mapper;

import java.util.List;

import fp.market.domain.Market;
import fp.market.utils.MarketPagingVO;

public interface MarketMapper {
//자동 Impl파일 생성해줌
	public int getCountMarket();
	public List<Market> getMarketList(MarketPagingVO marketVO);
	
}
