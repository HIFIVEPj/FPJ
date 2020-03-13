package fp.customer_service.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fp.customer_service.domain.Criteria;
import fp.customer_service.domain.ReplyVO;
import fp.customer_service.mapper.CustomerServiceQaMapper;
import fp.customer_service.mapper.ReplyMapper;
import lombok.Setter;

@Service
public class ReplyServiceImpl implements ReplyService {

	@Setter(onMethod_ = @Autowired)
	private ReplyMapper replyMapper;
	
	@Setter(onMethod_ = @Autowired)
	private CustomerServiceQaMapper customerServiceQaMapper;
	
	@Transactional
	@Override
	public int register(ReplyVO vo) {
		customerServiceQaMapper.updateReplyCnt(vo.getQa_num(), 1);
		return replyMapper.insert(vo);
	}

	@Override
	public ReplyVO get(Long qacomm_num) {		
		return replyMapper.read(qacomm_num);
	}
	
	@Transactional
	@Override
	public int remove(Long qacomm_num) {
		ReplyVO vo = replyMapper.read(qacomm_num);
		customerServiceQaMapper.updateReplyCnt(vo.getQa_num(), -1);
		return replyMapper.delete(qacomm_num);
	}

	@Override
	public int modify(ReplyVO vo) {		
		return replyMapper.update(vo);
	}

	@Override
	public List<ReplyVO> getList(Criteria cri, Long qa_num) {		
		return replyMapper.getListWithPaging(cri, qa_num);
	}

}

