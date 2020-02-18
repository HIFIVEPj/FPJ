
package fp.freelancerprofile.domain;

import java.sql.Date;
import java.util.List;

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
	//list에 freelancer클래스의 객체들이 담김.
	private FreeLancerProfileListVO freeLancerProfileListVO;
}

