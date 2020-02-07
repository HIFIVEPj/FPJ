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
	private int key_num; //계좌등록여부
	private String key_name; //파일이름
	private KeyWord keyWord;
}
