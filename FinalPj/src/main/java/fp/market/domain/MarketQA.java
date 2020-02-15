package fp.market.domain;

import java.sql.Date;

import fp.market.utils.MarketPagingVO;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class MarketQA {
	private long marketQA_num;//문의글번호
	
	private long market_num;//마켓번호
	private String marketQA_sub;//제목
	private String marketQA_cont;//내용
	private Date marketQA_rdate;//게시일
	private long marketQA_vcnt;//조회수
	private long marketQA_prnum;//족번호
	private int marketQA_lev;//레벨
	private int marketQA_sun;//순번
	private int marketQA_ox;//0:공개1:비공개
	private String mem_email;//이메일
	private int marketQA_option1;//
	private int marketQA_option2;//
	private int marketQA_option3;//

	private MarketPagingVO marketRevVO;
	private Freelancer freelancer;
	private Corporation corporation;

}
