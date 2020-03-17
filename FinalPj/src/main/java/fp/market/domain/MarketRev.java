
package fp.market.domain;

import java.sql.Date;

import fp.corporation.domain.Corporation;
import fp.freelancerprofile.domain.FreeLancer;
import fp.market.utils.MarketPagingVO;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MarketRev {
	private long marketRev_num;
	private String marketRev_cont;
	private int marketRev_star;
	private Date marketRev_rdate;
	private long market_num;
	private String mem_email;

//	private MarketRevComm marketRevComm; 없애버려
//	public MarketPagingVO marketRevVO;
	private FreeLancer freelancer;
	private Corporation corporation;
	private Member member;

}

