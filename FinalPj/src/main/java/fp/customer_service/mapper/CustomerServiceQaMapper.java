package fp.customer_service.mapper;

import java.util.List;

import fp.customer_service.domain.Criteria;
import fp.customer_service.domain.CustomerServicePagingVO;
import fp.customer_service.domain.CustomerServiceQa;

public interface CustomerServiceQaMapper {
	/*
	List<CustomerServiceQa> qa_list();
	*/
	CustomerServiceQa qa_content(long qa_num);
	boolean qa_vcnt(long qa_num);
	long qa_write(CustomerServiceQa customerServiceQa);
	boolean qa_delete(long qa_num);
	boolean qa_modify(CustomerServiceQa customerServiceQa);
	
	// 페이징 게시물 총 개수
	//int qa_count();

	// 페이징 처리 게시글 조회
	//List<CustomerServiceQa> qa_list(CustomerServicePagingVO customerServicePagingVO);
	
	// 카테고리 sorting
	int qa_cate_count_project();
	
	//List<CustomerServiceQa> qa_list(CustomerServicePagingVO customerServicePagingVO);
	
	List<CustomerServiceQa> qa_list(Criteria cri);
	
	int qa_count(Criteria cri);

}
