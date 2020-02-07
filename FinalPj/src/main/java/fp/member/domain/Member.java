package fp.member.domain;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor //이것만 있으면 기본생성자가 만들어지지않음 그렇기 때문에 NoArgsConstructor를 해줘야 기본도 생성해줌
@NoArgsConstructor 

public class Member {
	private String email;
	private String pwd;
	private int class_num;
	private int status;
	private int option1;
	private int option2;
	private String option3;	
}
