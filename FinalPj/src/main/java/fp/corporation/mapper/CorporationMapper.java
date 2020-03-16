
package fp.corporation.mapper;

import java.util.HashMap;
import java.util.List;

import fp.corporation.domain.Corporation;
import fp.corporation.domain.Corporation_account;
import fp.freelancerprofile.domain.Freelnacer_account;

import fp.market.domain.MarketBuysellList;
import fp.market.domain.MarketPick;

public interface CorporationMapper {
	Corporation mydash_cor_select(String mem_email); 
	void insert(Corporation corporation);
	void mydash_cor_update(Corporation corporation);
	//void update_cor_auth(String mem_email);

	//계좌추가
	void addCorACCT(Corporation_account coracct);
	Corporation_account selectCorACCT(long cor_code);
	void updateCorACCT(Corporation_account coracct);
	
//픽리스트	
	public int getTotalMarketPick(String mem_email);
	public List<MarketPick> marketPickList (HashMap<String,Object> map);
//픽삭제	
	public void deleteMarketPick(HashMap<String,Object> map);
//구매리스트	
	public int getTotalBuyMarket(String mem_email);
	public List<MarketBuysellList> myBuyMarket(HashMap<String,Object> map);
//프로필사진띄우기	
	public Corporation getCorfname(String mem_email);
}
