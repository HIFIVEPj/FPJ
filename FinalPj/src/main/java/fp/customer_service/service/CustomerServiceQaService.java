package fp.customer_service.service;

import java.util.List;
import java.util.Map;

import fp.customer_service.domain.BoardAttachVO;
import fp.customer_service.domain.Criteria;
import fp.customer_service.domain.CustomerServiceQa;
import fp.customer_service.domain.Qa_recommend;

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
	int qa_cate_count_freemarketS();
	int qa_cate_count_freelancerS();
	int qa_cate_count_signS();
	int qa_cate_count_meminfoS();
	int qa_cate_count_paymentS();
	int qa_cate_count_discountS();
	int qa_cate_count_etcS();
	
	// 파일
	public List<BoardAttachVO> getAttachList(Long qa_num);
	
	// 공지글 좋아요
	List<Qa_recommend>qa_recommend_listS(String mem_email);
	void qa_recommend_insertS(Map<String, Object>map);
	void qa_recommend_delS(Map<String, Object>map);
	//void qa_recommend_update_inS(Map<String, Object>map);
	//void qa_recommend_update_delS(Map<String, Object>map);
}
