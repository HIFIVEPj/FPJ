
package fp.corporation.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import fp.corporation.domain.Corporation;
import fp.corporation.domain.Corporation_account;
import fp.market.domain.MarketBuysellList;
import fp.market.domain.MarketPayment;
import fp.market.domain.MarketPick;

public interface CorporationService {
	Corporation mydash_cor_select(String mem_email); 
	void insert(Corporation corporation);
	void mydash_cor_update(Corporation corporation);
	//계좌추가
	void addCorACCT(Corporation_account coracct);
	Corporation_account selectCorACCT(long cor_code);
	void updateCorACCT(Corporation_account coracct);
	
	
	int getTotalMarketPick(String mem_email);
	List<MarketPick> marketPickList (HashMap<String,Object> map);
	void deleteMarketPick(HashMap<String,Object> map);

	int getTotalBuyMarket(String mem_email);
	List<MarketBuysellList> myBuyMarket(HashMap<String,Object> map);
	
	Corporation getCorfname(String mem_email);

}
