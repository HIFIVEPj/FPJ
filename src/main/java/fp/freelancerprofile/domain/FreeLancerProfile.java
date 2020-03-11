
package fp.freelancerprofile.domain;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class FreeLancerProfile {
	//private FreeLancerProfile(long pro_num) {}

	private long pro_num; //개인프로필번호
	private long free_code; //개인등록번호
	private int type_num; //직종번호 
	private String mem_email; 
	private int pro_exp; //경력
	private String pro_cv; //자기소개
	private String pro_addr;//주소
	private String pro_postcode;  //우편번호 **추가(0220)
	private String pro_detailloc; //상세주소 **추가
	private String pro_edu; //최종학력
	private Date pro_start; //업무가능일
	private String pro_ox; //업무가능여부
	private int pro_grade;//등급
	private long pro_vcnt;//조회수
	private long pro_pcnt;//찜수
	private String pro_place;
	private String pro_workplace; //업무장소
	private String profile_sub; //프로필명
	private Date profile_date; //프로필 등록일
	private long profile_choice; //프로필 공개여부

	private List<FreeLancerProfile> freelancerprofile;
	private List<FreeLancerProfileFile> freelancerprofilefile;
	private Type type;
	private List<Project> projcet;
	private List<FreeLancer> freelancer;
	private List<List_FreeLancerReview> list_freeLancerreview;
	
	private List<Integer> pronum;
	private List<Integer> pro_nums;

	private List<FreeLancerProfileFile> freeLancerProfileFile;
	private List<KeyWord> keyword;
	
	private List<Applied_Project> applied_project;

	private List<FreePickKeyWord> freePickKeyWord;

}

