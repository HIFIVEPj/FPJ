
package fp.customer_service.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import fp.customer_service.domain.Criteria;
import fp.customer_service.domain.ReplyPageDTO;
import fp.customer_service.domain.ReplyVO;

public interface ReplyService {

	public int register(ReplyVO vo);
	public ReplyVO get(Long qacomm_num);
	public int remove(Long qacomm_num);
	public int modify(ReplyVO vo);
	public List<ReplyVO> getList(@Param("cri") Criteria cri, @Param("qa_num") Long qa_num);
	public ReplyPageDTO getListPage(Criteria cri, Long qa_num);
}
