
package fp.customer_service.mapper;

import java.util.List;

import fp.customer_service.domain.CustomerServiceQa;

public interface CustomerServiceQaMapper {
	List<CustomerServiceQa> qa_list();
	CustomerServiceQa qa_content(long qa_num);
	boolean qa_count(long qa_num);
	long qa_write(CustomerServiceQa customerServiceQa);
	boolean qa_delete(long qa_num);
	boolean qa_modify(CustomerServiceQa customerServiceQa);
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