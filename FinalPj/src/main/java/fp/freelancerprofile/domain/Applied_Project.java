package fp.freelancerprofile.domain;

import java.sql.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Applied_Project {
	
	//private Applied_Project(long free_code){}
	
	private long free_code;
	private long pro_num;
	private long pj_num;
	private int appp_status;
	private Date appp_date;
	
	private List<Project> projcet;
	private List<Project> frProject;
	
}
