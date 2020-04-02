package fp.member.domain;


import java.sql.Date;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PayInformation {
	private long payinfo_num;//g시퀀스
	private String payinfo_payid;//아임포트구분번호
	private String  payinfo_uid;//구분번호
	private long  payinfo_price;//가격
	private String payinfo_cardnum;//카드번호
	private String  payinfo_status;//상태
	private String payinfo_cardname;//카드이름
	private String payinfo_pgtid;//결제구분번호?
	private String payinfo_buyername;//구매자
	private Date payinfo_rdate;//결제일
	private int option1;
	private int option2;
	private String option3;	

}