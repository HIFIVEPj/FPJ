package fp.market.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fp.corporation.domain.Corporation;
import fp.corporation.mapper.CorporationMapper;
import fp.corporation.mapper.ProjectMapper;
import fp.freelancerprofile.domain.FreeLancer;
import fp.freelancerprofile.domain.FreeLancerProfile;
import fp.freelancerprofile.mapper.FreeLancerProfileMapper;
import fp.market.domain.FreelancerProfile;
import fp.market.domain.Market;
import fp.market.domain.MarketBuysellList;
import fp.market.domain.MarketPick;
import fp.market.domain.MarketQA;
import fp.market.domain.MarketQAFile;
import fp.market.domain.MarketRev;
import fp.market.mapper.MarketMapper;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
@Log4j
@Service
@AllArgsConstructor
public class MarketServiceImpl implements MarketService {
	private ProjectMapper pjMapper;
	private CorporationMapper corMapper;
	private FreeLancerProfileMapper freeMapper;
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
//marketReview insert		
	@Override
	public void insertMarketRev(MarketRev mareketRev) {
		mapper.insertMarketRev(mareketRev);
	}
	@Override
	public Integer reloadMarketRevAVG(long market_num) {
		return mapper.reloadMarketRevAVG(market_num);
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
	@Override
	public List<MarketPick> pickState(String mem_email) {
		return mapper.pickState(mem_email);	
	}
	@Override
	@Transactional
	public void insertMarketPick(HashMap<String,Object> map) {
		mapper.insertMarketPick(map);	
		Long market_num=(Long) map.get("market_num");

		mapper.updatePlusMarketPick(market_num);
	}
	@Override
	@Transactional
	public void deleteMarketPick(HashMap<String, Object> map) {
		Long market_num=(Long) map.get("market_num");

		mapper.deleteMarketPick(map);
		mapper.updateMinusMarketPick(market_num);
	}
//마켓구매내역insert
	@Override
	@Transactional
	public void insertMarketBuy(HashMap<String, Object> map) {
		mapper.insertMarketBuy(map);
		//기업
			Corporation cor = corMapper.mydash_cor_select((String)map.get("mem_email"));
			if(cor!=null) {
			pjMapper.corPointUp(cor.getCor_code());
			pjMapper.corLevelUp1(cor.getCor_code());
			pjMapper.corLevelUp2(cor.getCor_code());
		}else {
		//프리랜서
			FreeLancer free = freeMapper.mydash_free_select((String)map.get("mem_email"));
			freeMapper.freePointUp(free.getFree_code());
			freeMapper.freeLevelUp1(free.getFree_code());
			freeMapper.freeLevelUp2(free.getFree_code());
		}
		
	}
	public List<MarketBuysellList> writeReview(HashMap<String,Object> map){
		return mapper.writeReview(map);	
	}
	
	public List<Market> searchBoxMarketList(Map<String,Map<String,Object>> map){
		return mapper.searchBoxMarketList(map);
	}
	public int searchBoxMarketCount(Map<String,Map<String,Object>> map) {
		log.info("Service-map:"+map);
		return mapper.searchBoxMarketCount(map);
	}

	@Override
	public int searchButtonMarketCount(String searchWord) {
		return mapper.searchButtonMarketCount(searchWord);	
	}
	@Override
	public List<Market> searchButtonMarketList(HashMap<String,Object> map) {
		return mapper.searchButtonMarketList(map);	
	}

//마켓문의계층형 삭제
	@Override
	public long maxSun(HashMap<String, Object> map) {
		return mapper.maxSun(map);
	}
	@Override
	public long delUpdateMarketQA2(HashMap<String, Object> map) {
		return mapper.delUpdateMarketQA2(map);
	}
	@Override
	public List<String> deletedQA(HashMap<String, Object> map) {
		return mapper.deletedQA(map);
	}
//컨텐트 유사한프리랜서정보	
	@Override
	public List<FreelancerProfile> getSimilarFree(int type_num) {
		return mapper.similarFree(type_num);
	}
//컨텐트 유사한마켓정보		
	@Override
	public List<Market> similarMarket(int cate_num) {
		return mapper.similarMarket(cate_num);
	}
//프로필 널을 대비한컬럼	
	@Override
	public Market getMarketFreelancer2(long market_num) {
		return mapper.getMarketFreelancer2(market_num);
	}
	

}
