package fp.corporation.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class AppliedProject {
	private long free_code;
	private long pro_num;
	private long pj_num;
	private int appp_status;
	private Date appp_date;
}
