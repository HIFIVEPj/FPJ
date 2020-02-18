
package fp.freelancerprofile.domain;

import java.util.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class KeyWord {
	//사용언어//
	private long key_num;
	private String key_name;
	
	private List<FreeLancerProfile> freelancerprofile;
	//private  List<Project> projcet;
}
