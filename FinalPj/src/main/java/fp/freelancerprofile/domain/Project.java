
package fp.freelancerprofile.domain;

import java.sql.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class Project {
	
	private Project(long PRO_NUM) {}
	//프리랜서//
	private int type_num; //직종번호
	private long pj_num; //프로젝트번호long
	private int cate_num; //카테고리번호 int
	private long cor_code; // 기업등록번호long
	private String pj_sub; //제목string
	private Date pj_ddate; //마감일date
	private long pj_pay; //급여long
	private String pj_cont; //내용string
	private Float pj_term; //프로젝트기간float
	private String pj_loc; //지역string
	private int pj_recum; //모집인원int
	private int pj_appnum; //지원인원int
	private Date pj_rdate; //등록일date
	private int pj_totalp; //총투입인력int
	private int pj_status; //상태int
	private int pj_place; //업무장소int
	private String pj_name; //회사명string
	private String pj_homepage; //홈페이지주소string
	private String pj_paycate; //급여string
	private int pj_fgrade; //프리랜서등급int
	private long pj_pcnt; //찜수long
	private long pj_vcnt; // 조회수long

	private List<Pj_Pick_Keyword> Pj_Pick_Keyword;
	private List<KeyWord> frKeyWord;
	private List<Applied_Project> applied_Project;
	private List<Project> projcet;
	private List<FreeLancerProfile> freelancerprofile;

}
