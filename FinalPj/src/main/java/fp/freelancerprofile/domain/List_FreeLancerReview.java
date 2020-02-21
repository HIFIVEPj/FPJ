package fp.freelancerprofile.domain;

import java.sql.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class List_FreeLancerReview {
	
	private long freerev_num; //프리랜서 리뷰번호
	private long pro_num; //개인프로필번호
	private long free_code; //개인등록번호
	private String mem_email; //이메일
	private String freev_cont; //내용
	private int freerev_star; //별점
	private Date freerev_rdate; //등록일
	
}
