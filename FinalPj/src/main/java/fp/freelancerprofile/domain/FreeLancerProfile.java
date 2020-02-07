package fp.freelancerprofile.domain;

import java.util.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class FreeLancerProfile {
	private long free_code; //개인등록번호
	private long pro_num; //개인프로필번호
	private int type_num; //직종번호 
	private int pro_exp; //경력
	private String pro_cv; //자기소개
	private String pro_addr;//주소
	private String pro_edu; //최종학력
	private Date pro_start; //업무가능일
	private String pro_ox; //업무가능여부
	private int pro_grade;//등급
	private long profile_vcnt;//조회수
	private long profile_pcnt;//찜수
	private String pro_workplace; //업무장소
	private Object profile_sub; //프로필명
	private Date profile_date; //프로필 등록일
	
	//private FreeLancerProfile freeLancerProfile;
	private List<FreeLancerProfile> ProfileList;

}