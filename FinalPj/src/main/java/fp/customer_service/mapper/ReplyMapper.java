package fp.customer_service.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import fp.customer_service.domain.Criteria;
import fp.customer_service.domain.ReplyVO;

public interface ReplyMapper {
	public int insert(ReplyVO vo);
	public ReplyVO read(Long qacomm_num); //댓글 수정을 위해 띄우는 모달창에 넣을 정보들을 위함
	public int delete(Long qacomm_num);
	public int update(ReplyVO reply);
	public List<ReplyVO> getListWithPaging(@Param("cri") Criteria cri, @Param("qa_num") Long qa_num); //댓글 목록 불러오기
}
