package fp.customer_service.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Qa_recommend {
	private long qa_recommend_num;
	private String mem_email;
	private long qa_num;
}