package fp.market.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Corporation {
	private long cor_code; //기업들록번호
	private String mem_email;//멤버이메일
	private String cor_reg;//사업자등록번호
	private String cor_mname;//담당자이름
	private String cor_tel;//연락처
	private Date cor_rdate;//가입일
	private int cor_point;//기업활동점수
	private int cor_level;//기업활동등급
	private String cor_addr;//주소
	private String cor_profile;//회사소개
	private String cor_type;//직종
	private String cor_fname;//파일이름
	private String cor_ofname;//오리지날파일이름
	private int cor_option1;
	private int cor_option2;
	private int cor_option3;
	

}
