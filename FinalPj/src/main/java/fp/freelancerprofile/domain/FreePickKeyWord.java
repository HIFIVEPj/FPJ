package fp.freelancerprofile.domain;


import java.util.ArrayList;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class FreePickKeyWord {
	//프리랜서 선택 키워드//
	private long free_keynum; //선택된 키워드번호
	private int key_num; //키워드번호
	private long free_code; //개인등록번호
	private long pro_num; //개인 프로필번호
	//private FreePickKeyWord freePickKeyWord;
	//private KeyWord keyword;

	private List<Long> freepickkeyword;
	private List<Integer> key_numList;
	private List<KeyWord> frKeyWord;
	private List<FreePickKeyWord> freeLancerProfile;
}