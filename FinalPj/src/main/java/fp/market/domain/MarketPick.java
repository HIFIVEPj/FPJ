package fp.market.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MarketPick {
	private long marketP_num;
	private long market_num;
	private String mem_email;
	
	private Market market;
	private MarketRev marketRev;
}
