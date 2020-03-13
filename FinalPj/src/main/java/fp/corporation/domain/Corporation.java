
package fp.corporation.domain;

import java.sql.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Corporation {
	private long cor_code;
	private String mem_email;
	private String cor_reg;
	private String cor_name;
	private String cor_mname;
	private String cor_tel;
	private Date cor_rdate;
	private int cor_point;
	private int cor_level;
	private String cor_postcode;
	private String cor_addr;
	private String cor_detailaddr;
	private String cor_addr_x;
	private String cor_addr_y;
	private String cor_profile;
	private String cor_type;
	private String cor_fname;
	private String cor_ofname;
	
	//예비컬럼
	private long option1;
	private long option2;
	private String option3;
	
	private List<Project> project;
	
}