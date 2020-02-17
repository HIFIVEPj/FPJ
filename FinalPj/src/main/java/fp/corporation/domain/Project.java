package fp.corporation.domain;

import java.sql.Date;
import java.util.ArrayList;
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
	private String pj_sub;
	private long pj_pay;
	private String pj_cont;	
	private float pj_term;
	private String pj_loc;
	private String pj_postcode;
	private String pj_detailloc;
	private String pj_loc_x;
	private String pj_loc_y;
	private int pj_recnum;
	private int pj_appnum;
	private Date pj_rdate;
	private int pj_totalp;
	private int pj_status;
	private int pj_place;
	private String pj_homepage;
	private String pj_paycate;
	private long pj_pcnt;
	private long pj_vcnt;
	private int pj_fgrade;
	private long cor_code;
	private Date pj_ddate;
	 
	//추가 매핑 
	private List<Keyword> keyword;
	private List<Integer> keynums;
	private List<String> keynames;
	
	private List<PjPickKeyword> pjpickKeyword;
	private List<Keyword> pjKeywords;
	private Type type;
	
	private Corporation corporation;
	//예비컬럼
	private long option1;
	private long option2;
	private String option3;
	
	public List<Integer> keynum() {
		keynums = new ArrayList<Integer>();
		for(int i = 0; i<keyword.size(); i++) {
			keynums.add(keyword.get(i).getKey_num());
		}
		return keynums;
	}
	public List<String> keyname() {
		keynames = new ArrayList<String>();
		for(int i = 0; i<keyword.size(); i++) {
			keynames.add(keyword.get(i).getKey_name());
		}
		return keynames;
	}
	
	
	
}
