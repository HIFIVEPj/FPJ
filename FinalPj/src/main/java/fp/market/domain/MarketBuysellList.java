package fp.market.domain;

import java.sql.Date;

import fp.freelancerprofile.domain.FreeLancer;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class MarketBuysellList {
	private long mbuysell_num;
	private long market_num;
	private String mem_email;
	private int mbuysell_state;
	private Date mbuysell_date;
	
	private Market market;
	private MarketRev marketRev;
	private FreeLancer freelancer;

}
