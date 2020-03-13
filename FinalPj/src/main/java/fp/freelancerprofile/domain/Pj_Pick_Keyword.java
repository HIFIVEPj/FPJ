package fp.freelancerprofile.domain;

import java.sql.Date;
import java.util.List;

import fp.freelancerlist.domain.List_Project;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Pj_Pick_Keyword {
	private long pjp_keynum;
	private int key_num; //직종번호
	private long pj_num;
	
	private List<KeyWord> frKeyWord;
	private List<Applied_Project> applied_Project;
	private List<List_Project> list_project;
	
}
