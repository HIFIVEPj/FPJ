package fp.freelancerprofile.domain;


import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class Type {
	//직종//
	private int type_num;  
	private String type_name; 


	private List<FreeLancerProfile> freelancerprofile;
	private List<Type> type;
	private List<Project> project;
	private List<Freelancer_FreeLancerProfile> Freelancer_FreeLancerProfile;
}
