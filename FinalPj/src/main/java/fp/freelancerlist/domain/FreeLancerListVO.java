
package fp.freelancerlist.domain;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class FreeLancerListVO {
	
	private List<List_FreeLancer> list_freelancer;
	private List<List_FreeLancerProfile> list_freelancerprofile;
	private List<List_FreeLancerReview> list_freelancerreview;
	private List<List_Project> list_project;
	private List<List_Type> list_type;
	
	private FreeLancerListVO freeLancerListVO;
}
