package fp.market.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

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
//	private Freelancer freelancer;

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
	}

	
}
