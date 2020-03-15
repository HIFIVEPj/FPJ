
package fp.corporation.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import fp.corporation.domain.Corporation;
import fp.corporation.mapper.CorporationMapper;
import fp.freelancerprofile.mapper.FreelancerMarketInfoMapper;
import fp.market.domain.MarketBuysellList;
import fp.market.domain.MarketPick;

@Service
public class CorporationServiceImpl implements CorporationService {
	@Autowired
	CorporationMapper mapper;
	
	@Override
	public Corporation mydash_cor_select(String mem_email) {
		return mapper.mydash_cor_select(mem_email);
	} 

	//@Transactional
	@Override
	public void insert(Corporation corporation) {
		mapper.insert(corporation);
		//mapper.update_cor_auth(corporation.getMem_email());
	}
	
	@Override
	public void mydash_cor_update(Corporation corporation) {
		mapper.mydash_cor_update(corporation);
	}

//세영
//마켓픽리스트	
	@Override
	public int getTotalMarketPick(String mem_email) {
		return mapper.getTotalMarketPick(mem_email);
	}	

	@Override
	//삭제
	public List<MarketPick> marketPickList(HashMap<String, Object> map) {
		return mapper.marketPickList(map);
	}
	@Override
	public void deleteMarketPick(HashMap<String, Object> map) {
		mapper.deleteMarketPick(map);
	}
//구매리스트	
	@Override
	public int getTotalBuyMarket(String mem_email) {
		return mapper.getTotalBuyMarket(mem_email);
	}
	@Override
	public List<MarketBuysellList> myBuyMarket(HashMap<String, Object> map) {
		return mapper.myBuyMarket(map);
	}
//프로필사진띄우기		
	@Override
	public Corporation getCorfname(String mem_email) {
		return mapper.getCorfname(mem_email);
	}	
}