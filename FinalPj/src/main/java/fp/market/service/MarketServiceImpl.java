
package fp.market.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fp.corporation.domain.Corporation;
import fp.market.domain.Freelancer;
import fp.market.domain.Market;
import fp.market.domain.MarketPayment;
import fp.market.domain.MarketPick;
import fp.market.domain.MarketQA;
import fp.market.domain.MarketQAFile;
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

	public int getMarketRevCount(long market_num) {
		return mapper.getMarketRevCount(market_num);
	}

	@Override
	public int getMarketQACount(long market_num) {
		return mapper.getMarketQACount(market_num);
	}

	@Override
	public List<Market> getMarketList(MarketPagingVO marketVO) {
		return mapper.getMarketList(marketVO);
	}

	@Override
	public Market getMarket(long market_num) {
		mapper.updateMarketVcnt(market_num);
		return mapper.getMarket(market_num);

	}

	@Override
	public Integer getMarketStar(long market_num) {
		return mapper.getMarketStar(market_num);
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
	public void insertMarket(Market market) {
		mapper.insertMarket(market);
	}
	@Override
	public long getFreecode(String mem_email) {
		return mapper.getFreeCode(mem_email);
	}
	
	@Override
	public void insertMarketRev(MarketRev mareketRev) {
		mapper.insertMarketRev(mareketRev);
		
	}
//marketQA insert	
	@Transactional
	public void insertMarketQA(MarketQA marketQA) {
		mapper.updateMarketQA(marketQA);
		mapper.insertMarketQA(marketQA);
	}
	@Override
	public void insertMarketQAFile(HashMap<String, Object> map) {
		mapper.insertMarketQAFile(map);
	}
//마켓문의글 파일 보기
	@Override
	public List<MarketQAFile> marketQAFile(HashMap<String, Object> map) {
		return mapper.marketQAFile(map);
	}
	public MarketQA marketQAcont(HashMap<String, Object> map) {
		return mapper.marketQAcont(map);
	}
//marketQA댓글 수정 삭제	
	@Override
	public void deleteMarketQA(HashMap<String, Object> map) {
		mapper.deleteMarketQA(map);
	}
	@Override
	public void updateMarketQA2(HashMap<String, Object> map) {
		mapper.updateMarketQA2(map);
		
	}
//marketRev댓글 수정 삭제		
	@Override
	public void deleteMarketRev(HashMap<String, Object> map) {
		mapper.deleteMarketRev(map);
	}
	@Override
	public void updateMarketRev(HashMap<String, Object> map) {
		mapper.updateMarketRev(map);
		
	}
//마켓결제
	@Override
	public String getFreeName(long market_num) {
		return mapper.getFreeName(market_num);
	}

	public void insertPaymentMarket(Map<String,Object> map) {
		mapper.insertPaymentMarket(map);
	}
//마켓리스팅시 하트색깔 여부를위해서
	public List<MarketPick> pickState(String mem_email) {
		return mapper.pickState(mem_email);
		
	}
	@Override
	public void insertMarketPick(HashMap<String,Object> map) {
		mapper.insertMarketPick(map);
		
	}
	@Override
	public void deleteMarketPick(HashMap<String, Object> map) {
		mapper.deleteMarketPick(map);
		
	}

}

