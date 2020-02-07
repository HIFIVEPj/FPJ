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
	private int type_num; //계좌등록여부
	private String type_name; //파일이름
	
	private FreeLancerProfile freelancerprofile;
	private Project projcet;
	
	private Type type;
}
