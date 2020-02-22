
package fp.customer_service.service;

import java.util.List;

import fp.customer_service.domain.Criteria;
import fp.customer_service.domain.CustomerServicePagingVO;
import fp.customer_service.domain.CustomerServiceQa;

public interface CustomerServiceQaService {
	/*
	List<CustomerServiceQa> qa_listS();
	*/
	CustomerServiceQa qa_contentS(long qa_num);	
	boolean qa_vcntS(long qa_num);
	long qa_writeS(CustomerServiceQa customerServiceQa);
	boolean qa_deleteS(long qa_num);
	boolean qa_modifyS(CustomerServiceQa customerServiceQa);
	
	// 페이징 게시물 총 개수
	//int qa_countS();

	// 페이징 처리 게시글 조회
	//List<CustomerServiceQa> qa_listS(CustomerServicePagingVO customerServicePagingVO);
	
	List<CustomerServiceQa> qa_listS(Criteria cri);
	
	int qa_countS(Criteria cri);
	
	// 카테고리 sorting
	int qa_cate_count_projectS();
}
