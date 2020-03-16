
package fp.market.domain;

import java.sql.Date;

import fp.freelancerprofile.domain.FreeLancer;
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
	private int market_state;//0승인전1승인2거절
	private long market_pcnt;
	private Date market_rdate;
	private String option3;//기타선택시 입력
	//리스트뽑는데 필요한 컬럼
	private FreeLancer freelancer;//free_name
	private MarketRev marketRev;//marketRev_star
	private FreelancerProfile freelancerProfile;//매퍼xml에 association prorerty이름과 같아야 한다!!

}
