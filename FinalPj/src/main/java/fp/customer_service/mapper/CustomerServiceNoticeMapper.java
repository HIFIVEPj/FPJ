package fp.customer_service.mapper;

import java.util.List;

import fp.customer_service.domain.CustomerServiceNotice;

public interface CustomerServiceNoticeMapper {
	List<CustomerServiceNotice> notice_list();
	CustomerServiceNotice notice_content(long notice_num);
	boolean notice_count(long notice_num);
	long notice_write(CustomerServiceNotice customerServiceNotice);
	boolean notice_delete(long notice_num);
	/*
	void insert(Address address);
	void delete(long seq);
	*/
	/*
	List<Board> selectPerPage(BoardVo boardVo);
	long selectCount();
	Board selectBySeq(long seq);
	List<Board> selectByWriter(BoardVo boardVo);
	//List<Board> selectByWriter(Board board); //파라미터가 String이 되도 됨
	//List<Board> selectByWriter(String writer); //파라미터가 String이 되도 됨
	void insert(Board board);
	void update(Board board);
	void delete(long seq);
	*/
}
