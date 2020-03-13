
package fp.freelancerprofile.domain;

import java.sql.Date;
import java.util.List;

import fp.member.domain.Member;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class FreeLancerProfileListVO {
	
	private List<FreeLancerProfile> freelancerprofile; //FreeLancerProfile의 객체가 freelancerprofile에 담김
	private List<FreeLancerProfileFile> freelancerprofilefile;
	private List<FreeLancer> freelancer;
	private List<Type> type;
	private List<KeyWord> keyword;
	private List<Project> project;
	private FreeLancerProfileListVO freeLancerProfileListVO;
	

	private List<Freelancer_FreeLancerProfile> freelancer_freelancerprofile;
	private List<List_FreeLancerReview> list_freeLancerreview;
	private Member member;
}
