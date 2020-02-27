
package fp.customer_service.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ReplyVO {
	private long qacomm_num;
	private long qa_num;
	private String mem_email;
	private String qacomm_cont;
	private long qacomm_prnum;
	private int qacomm_lev;
	private int qacomm_sun;
	private Date qacomm_rdate;
	private int qacomm_ox;
	private long replyCnt;
	private long option2;
	private String option3;
	private String mem_name;

}