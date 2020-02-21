
package fp.corporation.domain;



import java.util.List;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PjPickKeyword {
	private long pjp_keynum;
	private int key_num;
	private long pj_num;
	private List<Long> pjpkeynumList;
	private List<Integer> key_numList;


	//추가매핑
	//private Keyword keyword;
	//private List<Keyword> keywords;
}