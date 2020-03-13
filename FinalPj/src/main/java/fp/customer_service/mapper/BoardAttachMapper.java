package fp.customer_service.mapper;

import java.util.List;

import fp.customer_service.domain.BoardAttachVO;

public interface BoardAttachMapper {
	
	public void insert(BoardAttachVO vo);
	public void delete(String uuid);
	public List<BoardAttachVO> findByQa_num(Long qa_num);
	public void deleteAll(Long qa_num);
}
