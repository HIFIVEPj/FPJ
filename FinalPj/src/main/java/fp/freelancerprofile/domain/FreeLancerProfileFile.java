
package fp.freelancerprofile.domain;

import java.sql.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor

public class FreeLancerProfileFile {
	//첨부파일//
	
	private long profile_num; //파일번호
	private long free_code; //개인등록번호
	private long pro_num; //개인 프로필번호
	private String profile_fname;//파일이름
	private String profile_ofname;//오리지널파일이름
	private long profile_size; //파일사이즈 
	private String profile_ext; //확장자
	


}
