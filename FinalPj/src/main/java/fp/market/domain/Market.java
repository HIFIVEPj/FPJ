package fp.market.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class Market {
	//마켓컬럼들
	private long market_num;
	private long free_code;
	private int cate_num;
	private long market_price;
	private String market_sub;
	private String market_cont;
	private long market_vcnt;
	private String market_fname;
	private String market_ofname;
	private int market_state;
	private long market_pcnt;
	//리스트뽑는데 필요한 컬럼
	private Freelancer freelancer;//free_name
	private MarketRev marketRev;//marketRev_star

	
}
