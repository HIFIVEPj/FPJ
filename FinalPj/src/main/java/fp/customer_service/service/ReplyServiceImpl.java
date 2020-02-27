package fp.customer_service.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fp.customer_service.domain.Criteria;
import fp.customer_service.domain.ReplyVO;
import fp.customer_service.mapper.ReplyMapper;

@Service
public class ReplyServiceImpl implements ReplyService {

	@Autowired
	private ReplyMapper replyMapper;
	
	@Override
	public int register(ReplyVO vo) {		
		return replyMapper.insert(vo);
	}

	@Override
	public ReplyVO get(Long qacomm_num) {		
		return replyMapper.read(qacomm_num);
	}

	@Override
	public int remove(Long qacomm_num) {		
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

