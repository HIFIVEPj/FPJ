package fp.customer_service.domain;

import java.util.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CustomerServiceQa {
	private long qa_num;
	private String mem_email;
	private String qa_sub;
	private String qa_cont;
	private Date qa_rdate;
	private long qa_vcnt;
	private long qa_prnum;
	private int qa_lev;
	private int qa_sun;
	private int qa_ox;
	private String qa_cate;
	private long qa_recommnum;
	private int replyCnt; // 댓글 개수
	private long option2;
	private String option3;
	private String mem_name; // 멤버 이름 가져오기
	
	
	private List<BoardAttachVO> attachList;
}