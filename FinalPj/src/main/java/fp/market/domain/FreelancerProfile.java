package fp.market.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class FreelancerProfile {
	private long free_code;
	private long pro_num;
	private int Type_num;
	private int pro_exp;
	private String pro_cv;
	private String pro_addr;
	private String pro_edu;
	private Date pro_start;
	private int pro_ox;
	private int pro_grade;
	private int pro_vcnt;
	private int pro_pcnt;
	private int pro_place;
	
	
}
