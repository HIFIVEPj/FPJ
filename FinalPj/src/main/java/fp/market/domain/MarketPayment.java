package fp.market.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MarketPayment {
	private long marketPaym_num;
	private String mem_email;//판매자
	private String mem_emailBuy;//구매자 
	private long market_num;
	private float marketPaym_feeRate;
	private long marketPaym_price;
	private String marketPaym_pdName;
	private Date marketPaym_rdate;
	
}
