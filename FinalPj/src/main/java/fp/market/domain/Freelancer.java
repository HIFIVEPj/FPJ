
package fp.market.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Freelancer {
	private long free_code;
	private String mem_email;//개인프로필에서 가져와야함
	private String free_name;
	private String free_tel;
	private String free_point;
	private Date rdate;
	private int free_level;
	private int free_acctox;
	private String free_fname;
	private String free_ofname;
	
	private Market market;
	//public FreelancerProfile freeProfile;
	
}
