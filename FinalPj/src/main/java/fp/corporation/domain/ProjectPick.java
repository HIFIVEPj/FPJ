package fp.corporation.domain;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class ProjectPick {
	private long pjp_num;
	private long pj_num;
	private long free_code;
	private int pjp_status; // 지워도 될듯
	
	
}
