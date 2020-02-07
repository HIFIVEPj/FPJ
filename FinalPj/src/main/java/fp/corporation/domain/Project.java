package fp.corporation.domain;

import java.sql.Date;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Project {
	private long pj_num;
	private int type_num;
	private int cate_num; 
	private long cor_code;
	private String pj_sub;
	private Date pj_ddate;
	private long pj_pay;
	private String pj_cont;	
	private float pj_term;
	private String pj_loc;
	private int pj_recnum;
	private int pj_appnum;
	private Date pj_rdate;
	private int pj_totalp;
	private int pj_status;
	private int pj_place;
	private String  pj_name;
	private String pj_homepage;
	private String pj_paycate;
	private long pj_pcnt;
	private long pj_vcnt;
	private int pj_fgrade;
	
	//추가 매핑 
	private List<Keyword> keyword;
	private PjPickKeyword pjpickKeyword;
	private List<Keyword> pjKeywords;
	private Type type;
	//예비컬럼
	private long option1;
	private long option2;
	private String option3;
	
	
	
}
