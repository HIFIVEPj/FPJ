
package fp.market.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Member {
		
	public Member(String mem_name){
			getMem_name();
		}
	private String mem_email;//멤버이메일
	private String mem_name;
	private String mem_pwd;//비밀번호
	private String class_num;//1:매니저/2:플필등록 x/3:플필등록 o/4:기업 

	private int mem_status;//0:가입/1:탈퇴/2:휴먼
	private Date mem_rdate;
	private int mem_option1;
	private int mem_option2;
	private int mem_option3;
	
}
