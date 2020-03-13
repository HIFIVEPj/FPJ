package fp.customer_service.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Notice_recommend {
	private long notice_recommend_num;
	private String mem_email;
	private long notice_num;
}