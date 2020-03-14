package fp.customer_service.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CustomerServiceNotice {
	private long notice_num;
	private String notice_sub;
	private String notice_cont;
	private Date notice_rdate;
	private long notice_vcnt;
	private String mem_email;
	private String notice_cate;
	private long notice_recommnum;
	private long option1;
	private long option2;
	private String option3;
	private String mem_name;
	
	/*
	@JsonFormat(pattern="yyyyy.MM.dd")
	private Date notice_rdate;
	*/
}