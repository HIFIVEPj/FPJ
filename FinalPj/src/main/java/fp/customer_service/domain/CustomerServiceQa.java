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
	private String free_fname; // 프리랜서 프로필 사진
	private String cor_fname; // 기업 프로필 사진
	private String class_num;
	private String cor_name; // 기업 이름
	private String cor_type; // 기업 종류
	private int type_num; // 프리랜서 직종 번호
	private String type_name; // 프리랜서 직종
	private int pro_exp; // 프리랜서 경력
	private long pro_num; // 프로필 번호
	private long free_code; // 등록번호
	private int profile_choice; // 프리랜서 프로필 공개 여부
	
	private List<BoardAttachVO> attachList;
}