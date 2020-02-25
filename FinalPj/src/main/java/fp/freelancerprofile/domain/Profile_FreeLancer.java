package fp.freelancerprofile.domain;

import java.sql.Date;
import java.util.List;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class Profile_FreeLancer {
	//프리랜서//
	private long free_code; //개인등록번호
	private String mem_email; //이메일
	private String free_name; //이름
	private String free_tel; //연락처
	private int free_point; //개인활동점수
	private Date free_rdate; //가입일
	private int free_level; //개인활동등급
	private int free_acctox; //계좌등록여부
	private String free_fname; //파일이름
	private String free_ofname; //오리지널파일이름 

	private List<FreeLancerProfile> freelancerprofile;
	private List<FreeLancerProfileFile> freeLancerProfileFile;
	
	private Type type;
	private List<KeyWord> keyword;
	private List<Project> projcet;
	
	
}
