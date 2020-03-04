package fp.freelancerprofile.mapper;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import fp.market.domain.Freelancer;
import fp.market.domain.Market;
import fp.market.domain.MarketBuysellList;
import fp.market.domain.MarketPayment;
import fp.market.domain.MarketPick;
//@Repository		 
public interface FreelancerMarketInfoMapper {
	
//프로필사진띄우기	
	public Freelancer getFreefname(String mem_email);
//픽리스트	
	public int getTotalMarketPick(String mem_email);
	public List<MarketPick> marketPickList (HashMap<String,Object> map);
//픽삭제	
	public void deleteMarketPick(HashMap<String,Object> map);
//판매마켓	
	public int getTotalPaymentDetails(String mem_email);
	public List<MarketPayment> paymentDetails(HashMap<String,Object> map);
//등록마켓 리스트
	public int getTotalMyMarket(String mem_email);	
	public List<Market> getMyMarket(HashMap<String,Object> map);

//구매리스트	
	public int getTotalBuyMarket(String mem_email);
	public List<MarketBuysellList> myBuyMarket(HashMap<String,Object> map);
//판매마켓삭제	
	public void deleteMarketPayment(long marketPaym_num);	
}
