package fp.freelancerlist.domain;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class List_Type {
		//직종//
		private int type_num;  
		private String type_name; 

		private List<List_FreeLancerProfile> freelancerprofile;
		private List_Type type;
		private List<List_Project> project;

}
