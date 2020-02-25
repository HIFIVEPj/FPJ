
package fp.market.mapper;

import java.util.HashMap;
import java.util.List;

import fp.corporation.domain.Corporation;
import fp.market.domain.Freelancer;
import fp.market.domain.Market;
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
	
	
	public List<Market> getMarketList(MarketPagingVO marketVO);
//마켓 상세보기에 피요한것들	
	public Market getMarket(long market_num);	
	public int getMarketStar(long market_num);
	
	public List<MarketRev> getMarketRev(HashMap<String, Object> map);//
	public List<MarketQA> getMarketQA(HashMap<String, Object> map);//

	public Market getMarketFreelancer(long market_num);
	public void deleteMarket(long market_num);
	public Market updateMarket1(long market_num);
	public void updateMarket2(Market market);
	public void insertMarket(Market market);
	public void insertMarketRev(MarketRev marketRev);	

	public void insertMarketQA(MarketQA marketQA);
	public void insertMarketQAFile(HashMap<String, Object> map);
	public void updateMarketQA(MarketQA marketQA);
	
	public List<MarketQAFile> marketQAFile(HashMap<String, Object> map);
	public MarketQA marketQAcont(HashMap<String, Object> map);
	
	public void deleteMarketQA (HashMap<String, Object> map);
	public void updateMarketQA2 (HashMap<String, Object> map);
	
	public void deleteMarketRev (HashMap<String, Object> map);
	public void updateMarketRev (HashMap<String, Object> map);
	//마켓컨텐츠의 리뷰기업 프리 정보 따로 빼오기
	//public List<Freelancer> getMarketRevFree(long market_num);
//	public List<Corporation> getMarketRevCor(long market_num);
}
