package fp.member.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PayInformation {
	private long payinfo_num;
	private String payinfo_payid;
	private String  payinfo_uid;
	private long  payinfo_price;
	private String payinfo_cardnum;
	private String  payinfo_status;
	private String payinfo_cardname;
	private String payinfo_pgtid;
	private String payinfo_buyername;
}
