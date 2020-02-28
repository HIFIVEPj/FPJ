package fp.market.mapper;

import java.util.HashMap;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.web.bind.annotation.RequestParam;

import fp.market.domain.Freelancer;
import fp.market.domain.Market;
import fp.market.domain.MarketQA;
import fp.market.domain.MarketRev;

import fp.market.domain.Freelancer;
import fp.market.domain.Market;
import fp.market.mapper.MarketMapper;

import fp.market.utils.MarketPagingVO;
import lombok.extern.log4j.Log4j;


@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MarketMapperTests {

	@Autowired
	private MarketMapper marketMapper;
	private Freelancer freelancer;

/*	@Test
	private Freelancer freelancer;

	@Test

	public void testMarketList() {
		//log.info("#boardMapper: " + boardMapper);
		MarketPagingVO marketVO = new MarketPagingVO(10,1,20);
		List<Market> list = marketMapper.getMarketList(marketVO);
		log.info("#testMarketList()"+marketMapper.getClass().getName());
		for(Market market: list) {
			log.info("#마켓번호: " + market.getMarket_num() + ", 프리코드: " + market.getFree_code()
					+", writer: " +market.getCate_num()+", 마켓가격: " 
					+market.getMarket_price()+", 마켓서브: " +market.getMarket_sub()
					+", 마켓콘트: " +market.getMarket_cont()+", 마켓뷰: " +market.getMarket_vcnt()
					+", 마켓파일: " +market.getMarket_fname()+", 마켓오파일: " +market.getMarket_ofname()
					+", 마켓승인상태: " +market.getMarket_state()+", 마켓 찜카운드: " +market.getMarket_pcnt()
					+", 마켓프리랜서이름: ");// +//market.freelancer.getFree_name());
		}

	}*/
/*	@Test
	public void testMarketRev() {
		//log.info("#boardMapper: " + boardMapper);
		MarketRev marketRev = new MarketRev();
		marketRev.setMarket_num(1);
		MarketPagingVO marketVO = new MarketPagingVO(5,1,5);
		HashMap<String,Object> map=new HashMap<String,Object>();
		map.put("marketRev", marketRev);
		map.put("marketVO", marketVO);
		marketMapper.getMarketRev(map);
		
		log.info("#testMarketList()"+marketMapper.getClass().getName());
		
			log.info("#마켓번호: " + marketRev.getMarketRev_num() + ", 프리코드: " + marketRev.getMarketRev_cont()
					+", writer: " +marketRev.getMarketRev_rdate()+", 마켓서브: " +marketRev.getMarketRev_star()
					+", 마켓콘트: " +marketRev.getMarket_num()+", 마켓뷰: " +marketRev.getMem_email());
	}*/
/*	@Test
	public void testMarketQA() {
		//log.info("#boardMapper: " + boardMapper);
		MarketQA marketQA = new MarketQA();
		marketQA.setMarket_num(1);
		MarketPagingVO marketVO = new MarketPagingVO(5,1,5);
		HashMap<String,Object> map=new HashMap<String,Object>();
		map.put("marketQA", marketQA);
		map.put("marketVO", marketVO);
		marketMapper.getMarketQA(map);
		
		log.info("#testMarketList()"+marketMapper.getClass().getName());
		
			log.info("#마켓번호: " + marketQA.getMarketQA_num() + ", 프리코드: " + marketQA.getMarketQA_sub()
					+", writer: " +marketQA.getMarketQA_rdate()+", 마켓서브: " +marketQA.getMarketQA_cont()
					+", 마켓콘트: " +marketQA.getMarket_num()+", 마켓뷰: " +marketQA.getMarketQA_vcnt());
	}
	
	@Test
	public void testMarketFreelancer() {
		//log.info("#boardMapper: " + boardMapper);
		Market market = new Market();
		market.setMarket_num(1);
		marketMapper.getMarketFreelancer(market.getMarket_num());
		
		log.info("#testMarketList()"+marketMapper.getClass().getName());
		
			log.info("#마켓번호: " + market.getMarket_num() + ", 프리코드: " + market.getMarket_cont()
					+", writer: " +market.getMarket_sub()+", 마켓서브: " +market.getMarket_ofname()
					+", 마켓콘트: " +market.getMarket_num()+", 마켓뷰: " +market.getMarket_state());
	}*/	
	@Test
	public void testMarketStar() {
		//log.info("#boardMapper: " + boardMapper);

		int m=marketMapper.getMarketStar(1);

		
		log.info("#testMarketList()"+marketMapper.getClass().getName());
		
	}			

}
