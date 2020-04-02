package fp.freelancerprofile.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import fp.freelancerprofile.domain.FreeLancer;
import fp.market.domain.Market;
import fp.market.domain.MarketBuysellList;
import fp.market.domain.MarketPayment;
import fp.market.domain.MarketPick;

//@Repository		 
public interface FreelancerMarketInfoMapper {
	
//프로필사진띄우기	
	public FreeLancer getFreefname(String mem_email);
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
//거절당한마켓수정
	public Market updateRefusalMarket1(long market_num);
	public void updateRefusalMarket2(Market market);
//판매된마켓구매자이름구하기		
	public Map<String,String> paymentDetailsGetBuyerName(String mem_email);
}