package fp.member.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Notification {
	 private long not_num;
	 private String not_cate; 
	 private String mem_email_to;
	 private String mem_email_from;
	 private String not_message;
	 private Date not_datetime;
	 private Date not_read_datetime;
}
