
package fp.market.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fp.corporation.domain.Corporation;
import fp.market.controller.MarketController;
import fp.market.domain.Freelancer;
import fp.market.domain.Market;
import fp.market.domain.MarketBuysellList;
import fp.market.domain.MarketPayment;
import fp.market.domain.MarketPick;
import fp.market.domain.MarketQA;
import fp.market.domain.MarketQAFile;
import fp.market.domain.MarketRev;
import fp.market.mapper.MarketMapper;
import fp.market.utils.MarketPagingVO;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
@Log4j
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
	public List<Market> getMarketList ( HashMap<String,Object> Pagingmap) {
		return mapper.getMarketList(Pagingmap);
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
	@Override
	public void insertPaymentMarket(Map<String,Object> map) {
		mapper.insertPaymentMarket(map);
	}
	@Override
	public void insertPaymentMarket2(Map<String, Object> map) {
		mapper.insertPaymentMarket2(map);
	}
	
//마켓리스팅시 하트색깔 여부를위해서
	public List<MarketPick> pickState(String mem_email) {
		return mapper.pickState(mem_email);	
	}
	@Override
	public void insertMarketPick(HashMap<String,Object> map) {
		mapper.insertMarketPick(map);	
		Long market_num=(Long) map.get("market_num");

		mapper.updatePlusMarketPick(market_num);
	}
	@Override
	public void deleteMarketPick(HashMap<String, Object> map) {
		Long market_num=(Long) map.get("market_num");

		mapper.deleteMarketPick(map);
		mapper.updateMinusMarketPick(market_num);
	}
//마켓구매내역insert
	@Override
	public void insertMarketBuy(HashMap<String, Object> map) {
		mapper.insertMarketBuy(map);
		
	}
	public List<MarketBuysellList> writeReview(HashMap<String,Object> map){
		return mapper.writeReview(map);	
	}
	
	public List<Market> searchBoxMarketList(Map<String,Map<String,Object>> map){
		return mapper.searchBoxMarketList(map);
	}
	public int getsearchBoxMarketCount(Map<String,Map<String,Object>> map) {
		log.info("Service-map:"+map);
		return mapper.getsearchBoxMarketCount(map);
	}

}

