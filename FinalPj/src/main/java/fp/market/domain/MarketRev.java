package fp.market.domain;

import java.sql.Date;

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

	
}
