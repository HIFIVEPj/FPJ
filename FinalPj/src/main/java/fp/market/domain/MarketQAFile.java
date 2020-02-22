package fp.market.domain;

import java.sql.Date;

import fp.market.utils.MarketPagingVO;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MarketQAFile {
	private  long marketQAFile_num;
	private long marketQA_num;
	private String marketQAFile_fname;
	private String marketQAFile_ofname;
	private long marketQAFile_size;

}
