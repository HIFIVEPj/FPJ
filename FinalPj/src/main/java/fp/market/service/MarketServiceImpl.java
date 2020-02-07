package fp.market.service;

import java.util.List;

import org.springframework.stereotype.Service;

import fp.market.domain.Market;
import fp.market.mapper.MarketMapper;
import fp.market.utils.MarketPagingVO;
import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class MarketServiceImpl implements MarketService {
	private MarketMapper mapper;
	@Override
	public int getCountMarket() {
		// TODO Auto-generated method stub
		return mapper.getCountMarket();
	}

	@Override
	public List<Market> getMarketList(MarketPagingVO marketVO) {
		// TODO Auto-generated method stub
		return mapper.getMarketList(marketVO);
	}

}
