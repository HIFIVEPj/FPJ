
package fp.market.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class MarketRevComm {
	private long marketRevComm_num;//마켓리뷰댓글번호
	private long marketRev_num;//마켓리뷰번호
	private String marketRevComm_cont;//내용
	private Date marketRevComm_rdate;//등록일
	private int marketRevComm_option1;//
	private int marketRevComm_option2;//
	private int marketRevComm_option3;//
	
}
