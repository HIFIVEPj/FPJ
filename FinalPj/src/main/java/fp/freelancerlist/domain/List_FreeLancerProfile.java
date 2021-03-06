package fp.freelancerlist.domain;

import java.util.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class List_FreeLancerProfile {

		List_FreeLancerProfile(long free_code){}
	
		private long free_code; //개인등록번호
		private long pro_num; //개인프로필번
		private int type_num; //직종번호 
		private int pro_exp; //경력
		private String pro_cv; //자기소개
		private String pro_addr;//주소
		private String pro_edu; //최종학력
		private Date pro_start; //업무가능일
		private String pro_ox; //업무가능여부
		private int pro_grade;//등급
		private long pro_vcnt;//조회수
		private long pro_pcnt;//찜수
		private String pro_workplace; //업무장소
		private String profile_sub; //프로필명
		private Date profile_date; //프로필 등록일
		private int profile_choice;
		
		private List<List_FreeLancer> list_freelancer;
		private List<List_FreeLancerProfile> list_freelancerprofile;
		private List<List_Type> list_type;
		private List<List_Project> list_project;
}
