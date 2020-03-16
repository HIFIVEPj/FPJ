
package fp.market.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import fp.corporation.domain.Corporation;
import fp.market.domain.Market;
import fp.market.domain.MarketBuysellList;
import fp.market.domain.MarketPayment;
import fp.market.domain.MarketPick;
import fp.market.domain.MarketQA;
import fp.market.domain.MarketQAFile;

import fp.market.domain.MarketRev;
import fp.market.utils.MarketPagingVO;

public interface MarketMapper {
//자동 Impl파일 생성해줌
	public int getMarketCount();
	 //리뷰 페이징에 필요한 총 리뷰 수	 
	public int getMarketRevCount(long market_num);
	//문의 페이징에 필요한 총 문의 수 
	public int getMarketQACount(long market_num);
	
	
	public List<Market> getMarketList(HashMap<String, Object> pagingmap);
//마켓 상세보기에 피요한것들	
	public Market getMarket(long market_num);	
	public Integer getMarketStar(long market_num);
	
	public List<MarketRev> getMarketRev(HashMap<String, Object> map);//
	public List<MarketQA> getMarketQA(HashMap<String, Object> map);//

	public Market getMarketFreelancer(long market_num);
	public void deleteMarket(long market_num);
	public Market updateMarket1(long market_num);
	public void updateMarket2(Market market);
	
	public long getFreeCode(String mem_email);
	public void insertMarket(Market market);
	public void updateMarketVcnt(long market_num);
	
	public void insertMarketRev(MarketRev marketRev);	
	public void deleteMarketRev (HashMap<String, Object> map);
	public void updateMarketRev (HashMap<String, Object> map);
	public Integer reloadMarketRevAVG(long market_num);
	
	public void insertMarketQA(MarketQA marketQA);
	public void insertMarketQAFile(HashMap<String, Object> map);
	public void updateMarketQA(MarketQA marketQA);
	
	public void deleteMarketQA (HashMap<String, Object> map);
	public void updateMarketQA2 (HashMap<String, Object> map);

	public List<MarketQAFile> marketQAFile(HashMap<String, Object> map);
	public MarketQA marketQAcont(HashMap<String, Object> map);
	
	public String getFreeName(long market_num);
	
	public void insertPaymentMarket(Map<String,Object> map);
	public void insertPaymentMarket2(Map<String,Object> map);
	
	public List<MarketPick> pickState(String mem_email);
	public void insertMarketPick(HashMap<String,Object> map);
	public void deleteMarketPick(HashMap<String,Object> map);
	public void updatePlusMarketPick(long market_num);
	public void updateMinusMarketPick(long market_num);

	public void insertMarketBuy(HashMap<String,Object> map);
	
	public List<MarketBuysellList> writeReview(HashMap<String,Object> map);

	public List<Market> searchBoxMarketList(Map<String,Map<String,Object>> map);
	public int searchBoxMarketCount(Map<String,Map<String,Object>> map);
	
	public int searchButtonMarketCount(String searchWord);
	public List<Market> searchButtonMarketList(HashMap<String,Object> map);
	//마켓컨텐츠의 리뷰기업 프리 정보 따로 빼오기
	//public List<Freelancer> getMarketRevFree(long market_num);
//	public List<Corporation> getMarketRevCor(long market_num);
}